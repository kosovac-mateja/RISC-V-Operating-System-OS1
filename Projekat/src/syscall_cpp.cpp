#include "../h/syscall_cpp.h"

Thread::Thread(void (*body)(void *), void *arg) {
    thread_alloc(&myHandle, body, arg);
}

int Thread::start() {
    thread_scheduler(myHandle); //stavlja nit u scheduler
    return 0;
}

void Thread::dispatch() {
    thread_dispatch();
}

Thread::Thread() {
    thread_alloc(&myHandle, runWrapper, this); //samo alocira nit
}

void Thread::runWrapper(void *arg) {
    ((Thread*)arg)->run();
}

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}
/*
Semaphore::~Semaphore() {
    sem_close(myHandle);
}*/

int Semaphore::wait() {
    return sem_wait(myHandle);
}

int Semaphore::signal() {
    return sem_signal(myHandle);
}

char Console::getc() {
    return ::getc();
}

void Console::putc(char c) {
    return ::putc(c);
}
