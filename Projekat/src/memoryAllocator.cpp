#include "../h/memoryAllocator.h"

FreeSegment* MemoryAllocator::freeSegmentHead = nullptr;
UsedSegment* MemoryAllocator::usedSegmentHead = nullptr;
bool MemoryAllocator::initialized = false;

void *MemoryAllocator::mem_alloc(size_t size) {
    if(size <= 0) return nullptr;

    size = size * MEM_BLOCK_SIZE;

    //inicijalizuj ako vec nije
    if(!initialized) {
        mem_init();
        initialized = true;
    }

    //iteriranje do prvog slobodnog bloka koji odgovara (first fit)
    FreeSegment *curr = freeSegmentHead;
    for(; curr && curr->size < size; curr = curr->next);
    if(!curr) return nullptr;

    size_t remainingSize = curr->size - size;
    curr->size = size;
    if(remainingSize < 2 * MEM_BLOCK_SIZE) //ako je preostali prostor manji od jednog bloka(drugi je za zaglavlja)
        freeSegmentHead = nullptr;
    else {
        //pravljenje novog segmenta
        size_t offset = MEM_BLOCK_SIZE + size;
        FreeSegment* newSegm = (FreeSegment*)((char*)curr + offset);

        //uvezivanje newSegm u listu slobodnih segmenata
        if (curr->prev) {
            curr->prev->next = newSegm;
            newSegm->prev = curr->prev;
        }
        else {
            freeSegmentHead = newSegm;
            freeSegmentHead->prev = nullptr;
        }
        if(curr->next)
            curr->next->prev = newSegm;
        newSegm->next = curr->next;

        newSegm->size = remainingSize - MEM_BLOCK_SIZE; //zbog njegovog zaglavlja
    }

    curr->next = nullptr; //potpuno se odvezuje cvor

    //zaglavlje zauzetog segmenta nalazi se odmah posle slobodnog
    UsedSegment* used = (UsedSegment*)((char*)curr + sizeof(FreeSegment));
    used->size = size;

    if(!usedSegmentHead) {
        usedSegmentHead = used;
        usedSegmentHead->next = nullptr;
    }
    else {
        used->next = usedSegmentHead;
        usedSegmentHead = used;
    }

    return (char*)curr + MEM_BLOCK_SIZE; //vraca se adresa nakon zaglavlja
}



void MemoryAllocator::mem_init() {
    freeSegmentHead = (FreeSegment*)HEAP_START_ADDR;
    freeSegmentHead->size = (((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / MEM_BLOCK_SIZE - 1) * MEM_BLOCK_SIZE;
    freeSegmentHead->next = nullptr;
    freeSegmentHead->prev = nullptr;

    usedSegmentHead = nullptr;
}

int MemoryAllocator::mem_free(void *addr) {
    if(!addr) return -1;

    //pokusava da se u listi zauzetih pronadje trazena adresa
    UsedSegment* curr = usedSegmentHead, *prev = nullptr;
    for(; (curr != nullptr) & ((char*)curr - sizeof(FreeSegment) + MEM_BLOCK_SIZE != (char*)addr);
    prev = curr, curr = curr->next);
    if(!curr) return -1;

    //izbacivanje iz liste zauzetih ako je pronadjen
    if(prev) {
        prev->next = curr->next;
    }
    else usedSegmentHead = curr->next;

    //trazi se prethodnik od segmenta koji cemo da ubacimo
    FreeSegment* fcurr = nullptr;
    if(freeSegmentHead && (char*)freeSegmentHead < (char*)addr) //ako uslov nije ispunjen segment postaje glava liste
        for(fcurr = freeSegmentHead; fcurr->next && (char*)addr > (char*)(fcurr->next); fcurr = fcurr->next);

    FreeSegment* newSeg = (FreeSegment*)((char*)addr - MEM_BLOCK_SIZE);
    newSeg->size = curr->size;
    //uvezivanje u listu slobodnih
    newSeg->prev = fcurr;
    if (fcurr) newSeg->next = fcurr->next;
    else newSeg->next = freeSegmentHead;
    if (newSeg->next) newSeg->next->prev = newSeg;
    if (fcurr) fcurr->next = newSeg;
    else freeSegmentHead = newSeg;

    tryToJoin(newSeg);
    tryToJoin(fcurr);

    return 0;
}

void MemoryAllocator::tryToJoin(FreeSegment *curr) {
    if (!curr) return;
    //da li je kraj jednog bloka jednak pocetku drugog
    if (curr->next && (char*)curr + curr->size == (char*)(curr->next) - MEM_BLOCK_SIZE) {
        curr->size += curr->next->size + MEM_BLOCK_SIZE;
        curr->next = curr->next->next;
        if (curr->next) curr->next->prev = curr;
    }
}
