#include "../h/sem.h"

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

int Sem::deactivateSemaphore(sem_t handle) {
    if(!handle->isActive()) return -1;

    handle->setActive(false);

    uint64 queueSize = handle->blocked.getCnt();

    for(uint64 i = 0; i < queueSize; i++) {
        thread_t th = handle->blocked.removeFirst();
        th->setBlocked(false);
        Scheduler::put(th);
    }

    return 0;
}

void Sem::deleteSemaphore(sem_t handle) {
    delete handle;
}

void *Sem::operator new(size_t size)  {
    size = size % MEM_BLOCK_SIZE == 0 ? size / MEM_BLOCK_SIZE : (size / MEM_BLOCK_SIZE + 1 ); //pretvaranje u blokove
    return MemoryAllocator::mem_alloc(size);
}

void *Sem::operator new[](size_t size)  {
    size = size % MEM_BLOCK_SIZE == 0 ? size / MEM_BLOCK_SIZE : (size / MEM_BLOCK_SIZE + 1 ); //pretvaranje u blokove
    return MemoryAllocator::mem_alloc(size);
}

void Sem::operator delete(void *p) noexcept  { MemoryAllocator::mem_free(p); }

void Sem::operator delete[](void *p) noexcept  { MemoryAllocator::mem_free(p); }


