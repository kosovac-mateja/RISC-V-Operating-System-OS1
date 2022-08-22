#include "../h/syscall_c.h"

void syscall() {
    __asm__ volatile("ecall");
}

void *mem_alloc(size_t size) {
    size = size % MEM_BLOCK_SIZE == 0 ? size / MEM_BLOCK_SIZE : (size / MEM_BLOCK_SIZE + 1 ); //pretvaranje u blokove

    __asm__ volatile("mv a1, %0" : : "r" (size));
    __asm__ volatile("mv a0, %0" : : "r" (MALLOC_CODE));

    syscall();

    void* ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return ret;
}

int mem_free(void *addr) {
    __asm__ volatile("mv a1, %0" : : "r" (addr));
    __asm__ volatile("mv a0, %0" : : "r" (MFREE_CODE));

    syscall();

    int ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return ret;
}

int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg) {
    thread_t *tempHandle = handle; void(*tempRoutine)(void*) = start_routine; void* tempArg = arg;

    uint64* stack_space;
    if (start_routine != nullptr) {
        stack_space = new uint64[DEFAULT_STACK_SIZE];
        stack_space = &stack_space[DEFAULT_STACK_SIZE];
    } else stack_space = nullptr;

    __asm__ volatile("mv a7, %0" : : "r" (stack_space));
    __asm__ volatile("mv a3, %0" : : "r" (tempArg));
    __asm__ volatile("mv a2, %0" : : "r" (tempRoutine));
    __asm__ volatile("mv a1, %0" : : "r" (tempHandle));
    __asm__ volatile("mv a0, %0" : : "r" (TCREATE_CODE));

    syscall();

    int ret = *handle ? 0 : -1;
    return ret;
}

void thread_dispatch () {
    __asm__ volatile("mv a0, %0" : : "r" (TDISPATCH_CODE));

    syscall();
}


int thread_exit() {
    __asm__ volatile("mv a0, %0" : : "r" (TEXIT_CODE));

    syscall();

    return 0; //ne znam kad moze da dodje do greske
}

int sem_open(sem_t* handle, uint32 init) {
    __asm__ volatile("mv a2, %0" : : "r" (init));
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    __asm__ volatile("mv a0, %0" : : "r" (SOPEN_CODE));

    syscall();

    int ret = *handle ? 0 : -1;
    return ret;
}

int sem_close(sem_t handle) {
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    __asm__ volatile("mv a0, %0" : : "r" (SCLOSE_CODE));

    syscall();

    int ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return ret;
}

void sem_delete(sem_t handle) {
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    __asm__ volatile("mv a0, %0" : : "r" (SDELETE_CODE));

    syscall();
}

int sem_wait(sem_t id) {
    __asm__ volatile("mv a1, %0" : : "r" (id));
    __asm__ volatile("mv a0, %0" : : "r" (SWAIT_CODE));

    syscall();

    int ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return ret;
}

int sem_signal(sem_t id) {
    __asm__ volatile("mv a1, %0" : : "r" (id));
    __asm__ volatile("mv a0, %0" : : "r" (SSIGNAL_CODE));

    syscall();

    int ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return ret;
}

char getc() {
    __asm__ volatile("mv a0, %0" : : "r" (CGETC_CODE));

    syscall();

    char c;
    __asm__ volatile("mv %0, a0" : "=r" (c));
    return c;
}

void putc(char c) {
    __asm__ volatile("mv a1, %0" : : "r" (c));
    __asm__ volatile("mv a0, %0" : : "r" (CPUTC_CODE));

    syscall();
}

void thread_alloc(thread_t* handle, void(*start_routine)(void*), void* arg) {
    thread_t *tempHandle = handle; void(*tempRoutine)(void*) = start_routine; void* tempArg = arg;

    uint64* stack_space;
    if (start_routine != nullptr) {
        stack_space = new uint64[DEFAULT_STACK_SIZE];
        stack_space = &stack_space[DEFAULT_STACK_SIZE];
    } else stack_space = nullptr;

    __asm__ volatile("mv a7, %0" : : "r" (stack_space));
    __asm__ volatile("mv a3, %0" : : "r" (tempArg));
    __asm__ volatile("mv a2, %0" : : "r" (tempRoutine));
    __asm__ volatile("mv a1, %0" : : "r" (tempHandle));
    __asm__ volatile("mv a0, %0" : : "r" (TALLOC_CODE));

    syscall();
}

void thread_scheduler(thread_t handle) {
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    __asm__ volatile("mv a0, %0" : : "r" (TSCHEDULER_CODE));

    syscall();
}

void userMod() {
    __asm__ volatile("mv a0, %0" : : "r" (MUSER_CODE));

    syscall();
}

void supervisorMod() {
    __asm__ volatile("mv a0, %0" : : "r" (MSUPERVISOR_CODE));

    syscall();
}