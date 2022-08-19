#include "../h/sem.h"

void Sem::block() {
    blocked.addLast(PCB::running);
    putc('c');
    PCB::running->setBlocked(true);
    thread_dispatch();
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
