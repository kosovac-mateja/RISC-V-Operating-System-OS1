#include "../h/memoryAllocator.h"
#include "../h/pcb.h"
#include "../h/syscall_c.h"
#include "../h/sem.h"
#include "../lib/console.h"
#include "../h/riscv.h"

extern "C" void handleSupervisorTrap() {
    uint64 scause = Riscv::r_scause();

    if(scause == 9) {
        uint64 code;
        __asm__ volatile("mv %0, x10" : "=r" (code));
        switch (code) {
            case MALLOC_CODE: { //mem_alloc
                size_t size;
                __asm__ volatile("mv %0, x11" : "=r" (size));
                MemoryAllocator::mem_alloc(size);
                /* VRATI POKAZIVAC IDIOTE*/
            }break;

            case MFREE_CODE: { //mem_free
                void *ptr;
                __asm__ volatile("mv %0, x11" : "=r" (ptr));
                MemoryAllocator::mem_free(ptr);
            }break;

            case TCREATE_CODE: { //thread_create
                PCB** handle;
                void (*start_routine)(void *);
                void *arg;
                uint64 *stack;
                //int ret = -1;

                __asm__ volatile("mv %0, x11" : "=r" (handle));
                __asm__ volatile("mv %0, x12" : "=r" (start_routine));
                __asm__ volatile("mv %0, x13" : "=r" (arg));
                __asm__ volatile("mv %0, x17" : "=r" (stack));

                *handle = PCB::createProcess(start_routine, stack, arg, true);
            }break;

            case TDISPATCH_CODE: { //thread_dispatch
                PCB::yield(); //mozda treba dispatch
            }break;

            case TEXIT_CODE: { //thread_exit
                PCB::running->setFinished(true);
                PCB::yield();

            } break;

            case SOPEN_CODE: {
                Sem** handle;
                uint32 init;

                __asm__ volatile("mv %0, x11" : "=r" (handle));
                __asm__ volatile("mv %0, x12" : "=r" (init));

                *handle = Sem::createSemaphore(init);
            } break;

            case SCLOSE_CODE: {
                Sem* handle;

                __asm__ volatile("mv %0, x11" : "=r" (handle));

                Sem::deleteSemaphore(handle);
            } break;

            case SWAIT_CODE: {
                Sem* handle; int ret = -1;

                __asm__ volatile("mv %0, x11" : "=r" (handle));

                if(handle->isActive()) {
                    handle->wait();
                    ret = 0;
                }

                __asm__ volatile("mv x10, %0" : : "r" (ret));
            } break;

            case SSIGNAL_CODE: {
                Sem* handle; int ret = -1;

                __asm__ volatile("mv %0, x11" : "=r" (handle));

                if(handle->isActive()) {
                    handle->signal();
                    ret = 0;
                }

                __asm__ volatile("mv x10, %0" : : "r" (ret));
            }

            case CGETC_CODE: {
                char c = __getc();

                __asm__ volatile("mv x10, %0" : : "r" (c));
            } break;

            case CPUTC_CODE: {
                char c;

                __asm__ volatile("mv %0, x11" : "=r" (c));

                __putc(c);
            } break;

            case TALLOC_CODE: {
                PCB** handle;
                void (*start_routine)(void *);
                void *arg;
                uint64 *stack;
                //int ret = -1;

                __asm__ volatile("mv %0, x11" : "=r" (handle));
                __asm__ volatile("mv %0, x12" : "=r" (start_routine));
                __asm__ volatile("mv %0, x13" : "=r" (arg));
                __asm__ volatile("mv %0, x17" : "=r" (stack));

                *handle = PCB::createProcess(start_routine, stack, arg, false);
            } break;

            case TSCHEDULER_CODE: {
                thread_t handle;
                __asm__ volatile("mv %0, x11" : "=r" (handle));
                Scheduler::put(handle); /* mozda treba proveriti da li je body null*/
            } break;

            default:
                break;
        }
    }

    else if(scause == (1UL << 63 | 9)) { //spoljasnji hardverski prekid
        console_handler();
    }
}
