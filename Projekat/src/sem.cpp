#include "../h/sem.h"

//Queue<PCB*> Sem::blocked;

void Sem::block() {
    if(!PCB::running->isBlocked()) blocked.put(PCB::running);
    PCB::running->setBlocked(true);
    thread_dispatch();
}

void Sem::unblock() {
    PCB* p = blocked.get();
    p->setBlocked(false);
    Scheduler::put(p);
}

Sem *Sem::createSemaphore(uint32 init) {
    return new Sem(init);
}

void Sem::deleteSemaphore(sem_t handle) {
    handle->setActive(false);

    uint64 queueSize = handle->blocked.Qsize();

    for(uint64 i = 0; i < queueSize; i++) {
        thread_t th = handle->blocked.get();
        th->setBlocked(false);
        Scheduler::put(th);
    }

    handle->setActive(false);
    /* MEMORY LEAK */
}
