#ifndef PROJEKAT_SCHEDULER_H
#define PROJEKAT_SCHEDULER_H

#include "list.h"
#include "queue.h"

class PCB;

class Scheduler
{
private:
    static List<PCB> readyCoroutineQueue;

public:
    static PCB *get();

    static void put(PCB *pcb);

};

#endif
