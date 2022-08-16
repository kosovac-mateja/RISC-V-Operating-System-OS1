#ifndef PROJEKAT_SYSCALL_C_H
#define PROJEKAT_SYSCALL_C_H

#include "../lib/hw.h"
#include "../lib/mem.h"

static const uint64 MALLOC_CODE = 0x01;
static const uint64 MFREE_CODE = 0x02;

static const uint64 TCREATE_CODE = 0x11;
static const uint64 TEXIT_CODE = 0x12;
static const uint64 TDISPATCH_CODE = 0x13;
static const uint64 TALLOC_CODE = 0x14;
static const uint64 TSCHEDULER_CODE = 0x15;

static const uint64 SOPEN_CODE = 0x21;
static const uint64 SCLOSE_CODE = 0x22;
static const uint64 SWAIT_CODE = 0x23;
static const uint64 SSIGNAL_CODE = 0x24;

static const uint64 CGETC_CODE = 0x41;
static const uint64 CPUTC_CODE = 0x42;

class PCB;
typedef PCB* thread_t;

class Sem;
typedef Sem* sem_t;

const int EOF = -1;

void syscall();

void* mem_alloc (size_t size);

int mem_free (void*);

int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg);

void thread_dispatch ();

int thread_exit();

int sem_open(sem_t* handle, uint32 init);

int sem_close(sem_t handle);

int sem_wait(sem_t id);

int sem_signal(sem_t id);

char getc();

void putc(char c);

//dodatni sistemski pozivi

void thread_alloc(thread_t* handle, void(*start_routine)(void*), void* arg);

void thread_scheduler(thread_t handle);

#endif