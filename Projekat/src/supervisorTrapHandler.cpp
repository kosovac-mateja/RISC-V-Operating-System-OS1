#include "../h/memoryAllocator.h"
#include "../h/pcb.h"
#include "../h/syscall_c.h"
#include "../h/sem.h"
#include "../lib/console.h"
#include "../h/riscv.h"
#include "../test/printing.hpp"

extern "C" void handleSupervisorTrap() {

    uint64 scause = Riscv::r_scause();
    uint64 sepc = Riscv::r_sepc();

    uint64 sstatus = Riscv::r_sstatus();

    if(scause == 9 || scause == 8) {
        uint64 code;
        __asm__ volatile("mv %0, a0" : "=r" (code));

        switch (code) {
            case MALLOC_CODE: { //mem_alloc
                size_t size;
                __asm__ volatile("mv %0, a1" : "=r" (size));

                MemoryAllocator::mem_alloc(size);
            }break;

            case MFREE_CODE: { //mem_free
                void *ptr;
                __asm__ volatile("mv %0, a1" : "=r" (ptr));

                MemoryAllocator::mem_free(ptr);
            }break;

            case TCREATE_CODE: { //thread_create
                thread_t* handle;
                void (*start_routine)(void *);
                void *arg;
                uint64 *stack;

                __asm__ volatile("mv %0, a1" : "=r" (handle));
                __asm__ volatile("mv %0, a2" : "=r" (start_routine));
                __asm__ volatile("mv %0, a3" : "=r" (arg));
                __asm__ volatile("mv %0, a7" : "=r" (stack));

                *handle = PCB::createProcess(start_routine, stack, arg, true);
            }break;

            case TDISPATCH_CODE: { //thread_dispatch
                PCB::yield(); //mozda treba dispatch
            }break;

            case TEXIT_CODE: { //thread_exit
                PCB::running->setFinished(true);
                PCB::yield();
            } break;

            case SOPEN_CODE: { //sem_open
                sem_t* handle;
                uint32 init;

                __asm__ volatile("mv %0, a1" : "=r" (handle));
                __asm__ volatile("mv %0, a2" : "=r" (init));

                *handle = Sem::createSemaphore(init);
            } break;

            case SCLOSE_CODE: { //sem_close
                sem_t handle;

                __asm__ volatile("mv %0, a1" : "=r" (handle));

                Sem::deleteSemaphore(handle);
            } break;

            case SWAIT_CODE: { //sem_wait
                sem_t handle; int ret = -1;

                __asm__ volatile("mv %0, a1" : "=r" (handle));

                if(handle->isActive()) {
                    handle->wait();
                    ret = 0;
                }

                __asm__ volatile("mv a0, %0" : : "r" (ret));
            } break;

            case SSIGNAL_CODE: { //sem_signal
                sem_t handle; int ret = -1;

                __asm__ volatile("mv %0, a1" : "=r" (handle));

                if(handle->isActive()) {
                    handle->signal();
                    ret = 0;
                }

                __asm__ volatile("mv a0, %0" : : "r" (ret));
            } break;

            case CGETC_CODE: { //getc
                char c = __getc();

                __asm__ volatile("mv a0, %0" : : "r" (c));
            } break;

            case CPUTC_CODE: { //putc
                char c;

                __asm__ volatile("mv %0, a1" : "=r" (c));

                __putc(c);
            } break;

            case TALLOC_CODE: { //thread_alloc
                thread_t* handle;
                void (*start_routine)(void *);
                void *arg;
                uint64 *stack;

                __asm__ volatile("mv %0, a1" : "=r" (handle));
                __asm__ volatile("mv %0, a2" : "=r" (start_routine));
                __asm__ volatile("mv %0, a3" : "=r" (arg));
                __asm__ volatile("mv %0, a7" : "=r" (stack));

                *handle = PCB::createProcess(start_routine, stack, arg, false);
            } break;

            case TSCHEDULER_CODE: {
                thread_t handle;
                __asm__ volatile("mv %0, a1" : "=r" (handle));

                Scheduler::put(handle); /* mozda treba proveriti da li je body null*/
            } break;

            default:
                break;
        }

        Riscv::w_sepc(sepc+4);
    }

    else if(scause == (1UL << 63 | 9)) { //spoljasnji hardverski prekid
        console_handler();
    }

    else if(scause == (1UL << 63 | 1)) { //prekid od tajmera
        PCB::timeSliceCnt++;

        if(PCB::timeSliceCnt >= PCB::running->timeSlice) {
            PCB::yield();
            PCB::timeSliceCnt = 0;
            Riscv::w_sepc(sepc);
            Riscv::w_sstatus(sstatus);
        }

        Riscv::mc_sip(Riscv::SIP_SSIE);
        //__putc('t');
    }

    else {
        __putc('\n');
        printString("SEPC: ");
        printInt(sepc);
        __putc('\n');
        printString("SCAUSE: ");
        printInt(scause);
    }
}
