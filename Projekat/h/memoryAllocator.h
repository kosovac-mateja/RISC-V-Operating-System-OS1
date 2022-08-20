#ifndef PROJEKAT_MEMORYALLOCATOR_H
#define PROJEKAT_MEMORYALLOCATOR_H

#include "../lib/hw.h"
#include "../lib/mem.h"

struct FreeSegment {
    size_t size;
    FreeSegment* next;
    FreeSegment* prev;
};

struct UsedSegment {
    size_t size;
    UsedSegment* next;
};

class MemoryAllocator {
    static FreeSegment* freeSegmentHead;

    static UsedSegment* usedSegmentHead;

    static void mem_init();

    static void tryToJoin(FreeSegment*);

    static bool initialized;

    MemoryAllocator() {}

public:
    static void* mem_alloc(size_t);

    static int mem_free(void*);
};


#endif
