#include "../h/pcb.h"
#include "../h/riscv.h"

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
    running->body(running->arg);
    thread_exit();
}
