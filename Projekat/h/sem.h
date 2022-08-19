#ifndef PROJEKAT_SEM_H
#define PROJEKAT_SEM_H

#include "../lib/hw.h"
#include "pcb.h"
#include "queue.h"
#include "../h/syscall_c.h"
#include "../h/list.h"

class Sem {
private:
    int val;
    bool active;
    List<PCB> blocked;

    Sem(uint32 init = 1) : val(init), active(true) {}

protected:
    void block();

    void unblock();

    void setActive(bool val) { active = val; }

public:
    void wait() { if(--val < 0) block(); }

    void signal() { if(++val <= 0) unblock(); }

    static Sem* createSemaphore(uint32 init);

    static void deleteSemaphore(sem_t handle);

    bool isActive() { return active; }
};


#endif
