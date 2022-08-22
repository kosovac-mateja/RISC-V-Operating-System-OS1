#ifndef PROJEKAT_PCB_H
#define PROJEKAT_PCB_H

#include "syscall_c.h"
#include "scheduler.h"
#include "../h/memoryAllocator.h"
#include "../h/riscv.h"

extern void userMain();

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

    static uint64 timeSliceCnt;

    uint64 timeSlice;

    static void dispatch();

private:
    explicit PCB(Body body, uint64* stck, void* ar, bool put) :
            timeSlice(DEFAULT_TIME_SLICE),
            body(body),
            arg(ar),
            stack(body != nullptr && stck != nullptr ? stck - DEFAULT_STACK_SIZE * sizeof(uint64) + 1 : nullptr),
            context({body != nullptr ? (uint64) &bodyWrapper : 0,
                     stack != nullptr ? (uint64) stck : 0
                    }),
            finished(false),
            blocked(false)
            { if (body != nullptr && put) { Scheduler::put(this); }
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

    void *operator new(size_t size);

    void *operator new[](size_t size);

    void operator delete(void *p) noexcept;

    void operator delete[](void *p) noexcept;
};

void idle(void* arg);

void userMainWrapper(void* arg);

#endif
