#include "../h/scheduler.h"

List<PCB> Scheduler::readyCoroutineQueue;

PCB *Scheduler::get() {
    return readyCoroutineQueue.removeFirst();
}

void Scheduler::put(PCB *pcb) {
    readyCoroutineQueue.addLast(pcb);
}