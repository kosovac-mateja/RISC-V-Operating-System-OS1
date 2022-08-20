#include "../h/syscall_c.h"
#include "../h/pcb.h"
#include "../test/printing.hpp"

extern void userMain();
extern "C" void supervisorTrap();


void idle(void* arg) {
    while(true) {
        thread_dispatch();
    }
}

void userMainWrapper(void* arg) {
    userMain();
}

void main() {
    __asm__ volatile("csrw stvec, %0" : : "r" (&supervisorTrap));

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
