#ifndef PROJEKAT_SCHEDULER_H
#define PROJEKAT_SCHEDULER_H

#include "list.h"

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
