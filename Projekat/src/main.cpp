#include "../h/syscall_c.h"
#include "../h/pcb.h"
#include "../h/riscv.h"

extern "C" void supervisorTrap();

void main() {
    Riscv::w_stvec((uint64)&supervisorTrap); //adresa prekidne rutine

    thread_t kernelThread, idleThread;
    thread_t userThread;

    thread_create(&kernelThread, nullptr, nullptr);
    PCB::running = kernelThread;

    thread_create(&idleThread, idle, nullptr);

    thread_create(&userThread, userMainWrapper, nullptr);

    while(!userThread->isFinished()) {
        thread_dispatch();
    }
}
