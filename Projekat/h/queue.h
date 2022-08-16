#ifndef PROJEKAT_QUEUE_H
#define PROJEKAT_QUEUE_H

#include "../lib/hw.h"

template<typename T>
class Queue {
    uint64 front, rear;
    size_t size, capacity;
    T* array;

public:
    Queue() {
        this->capacity = 1000;
        front = size = 0;
        rear = capacity - 1;
        array = new T[capacity];
    }

    bool isFull() { return size == capacity; }

    bool isEmpty() { return size == 0; }

    size_t Qsize() { return size; }

    void put(T data) {
        if(isFull()) return;
        rear = (rear + 1) % capacity;
        array[rear] = data;
        size++;
    }

    T get() {
        if(isEmpty()) return 0;
        T data = array[front];
        front = (front + 1) % capacity;
        size--;
        return data;
    }
};


#endif
