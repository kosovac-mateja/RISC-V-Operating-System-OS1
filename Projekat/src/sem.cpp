#include "../h/sem.h"

#include "../h/riscv.h"
#include "../lib/console.h"

void Sem::block() {
    blocked.addLast(PCB::running);
    PCB::running->setBlocked(true);
    PCB::yield();
}

void Sem::unblock() {
    thread_t p = blocked.removeFirst();
    p->setBlocked(false);
    Scheduler::put(p);
}

Sem *Sem::createSemaphore(uint32 init) {
    return new Sem(init);
}

void Sem::deleteSemaphore(sem_t handle) {
    handle->setActive(false);

    uint64 queueSize = handle->blocked.getCnt();

    for(uint64 i = 0; i < queueSize; i++) {
        thread_t th = handle->blocked.removeFirst();
        th->setBlocked(false);
        Scheduler::put(th);
    }
}
