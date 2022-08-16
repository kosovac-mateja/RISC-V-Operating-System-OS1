#ifndef PROJEKAT_PCB_H
#define PROJEKAT_PCB_H

#include "../lib/hw.h"
#include "scheduler.h"
#include "syscall_c.h"

class PCB
{
public:
    ~PCB() { delete[] stack; }

    bool isFinished() const { return finished; }

    void setFinished(bool value) { finished = value; }

    bool isBlocked() const { return blocked; }

    void setBlocked(bool value) { blocked = value; }

    using Body = void (*)(void*);

    static PCB *createProcess(Body body, uint64* stack, void* arg, bool put);

    static void yield();

    static void bodyWrapper(void*);

    static PCB *running;

private:
    explicit PCB(Body body, uint64* stck, void* ar, bool put) :
            body(body),
            arg(ar),
            stack(body != nullptr && stck != nullptr ? stck - DEFAULT_STACK_SIZE * sizeof(uint64) + 1 : nullptr),
            context({body != nullptr ? (uint64) &bodyWrapper : 0,
                     stack != nullptr ? (uint64) stck : 0
                    }),
            finished(false),
            blocked(false) {
        if (body != nullptr && put) { Scheduler::put(this); }
    }

    struct Context {
        uint64 ra;
        uint64 sp;
    };

    Body body;
    void* arg;
    uint64 *stack;
    Context context;
    bool finished;
    bool blocked;

    static void contextSwitch(Context *oldContext, Context *runningContext);

    static void dispatch();
};

#endif
