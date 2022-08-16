#include "../h/pcb.h"
#include "../h/syscall_c.h"
#include "../lib/mem.h"
#include "../lib/hw.h"
#include "../h/queue.h"
#include "../h/sem.h"
#include "../test/printing.hpp"

extern void userMain();

void main() {
    PCB* th;
    thread_create(&th, nullptr, nullptr);
    PCB::running = th;
    userMain();
}
