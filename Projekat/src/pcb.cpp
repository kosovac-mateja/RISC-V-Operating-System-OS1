#include "../h/pcb.h"

PCB *PCB::running = nullptr;
uint64 PCB::timeSliceCnt = 0;

PCB *PCB::createProcess(Body body, uint64* stack, void* arg, bool put) {
    return new PCB(body, stack, arg, put);
}

void PCB::yield() {
    Riscv::pushRegisters();

    PCB::dispatch();

    Riscv::popRegisters();
}

void PCB::dispatch() {
    PCB *old = running;
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    running = Scheduler::get();

    PCB::contextSwitch(&old->context, &running->context);
}

void PCB::bodyWrapper(void* dummy) {
    if(running->body == idle || running->body == nullptr) supervisorMod();
    else userMod();

    running->body(running->arg);
    thread_exit();
}

void *PCB::operator new(size_t size)  {
    size = size % MEM_BLOCK_SIZE == 0 ? size / MEM_BLOCK_SIZE : (size / MEM_BLOCK_SIZE + 1 ); //pretvaranje u blokove
    return MemoryAllocator::mem_alloc(size);
}

void *PCB::operator new[](size_t size)  {
    size = size % MEM_BLOCK_SIZE == 0 ? size / MEM_BLOCK_SIZE : (size / MEM_BLOCK_SIZE + 1 ); //pretvaranje u blokove
    return MemoryAllocator::mem_alloc(size);
}

void PCB::operator delete(void *p) noexcept  { MemoryAllocator::mem_free(p); }

void PCB::operator delete[](void *p) noexcept  { MemoryAllocator::mem_free(p); }


void idle(void* arg) {
    while(true)
        thread_dispatch();
}

void userMainWrapper(void* arg) {
    userMain();
    supervisorMod(); //da bi se main zavrsio u sistemskom rezimu
}