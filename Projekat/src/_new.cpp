#include "../h/memoryAllocator.h"


void *operator new(size_t size) {
    size = size % MEM_BLOCK_SIZE == 0 ? size / MEM_BLOCK_SIZE : (size / MEM_BLOCK_SIZE + 1 ); //pretvaranje u blokove
    return MemoryAllocator::mem_alloc(size);
}

void *operator new[](size_t size) {
    size = size % MEM_BLOCK_SIZE == 0 ? size / MEM_BLOCK_SIZE : (size / MEM_BLOCK_SIZE + 1 ); //pretvaranje u blokove
    return MemoryAllocator::mem_alloc(size);
}

void operator delete(void *p) noexcept { MemoryAllocator::mem_free(p); }

void operator delete[](void *p) noexcept { MemoryAllocator::mem_free(p); }


