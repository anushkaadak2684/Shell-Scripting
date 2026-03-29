//Write a C program to compute the prime numbers between 1 to 100 using ten sub-threads by equally dividing the range (1-100) between the ten threads. Each thread will compute the prime numbers within its own range and print them.


#include <stdio.h>
#include <pthread.h>
#define THREADS 10
typedef struct {
    int start;
    int end;
    int thread_id;
} Range;

int isPrime(int n) {
    if(n <= 1)
        return 0;
    for(int i = 2; i * i <= n; i++) {
        if(n % i == 0)
            return 0;
    }
    return 1;
}

void* findPrimes(void* arg) {
    Range *r = (Range*) arg;
    printf("Thread %d: Prime numbers between %d and %d: ",
           r->thread_id, r->start, r->end);

    for(int i = r->start; i <= r->end; i++) {
        if(isPrime(i)) {
            printf("%d ", i);
        }
    }
    printf("\n\n");
    pthread_exit(NULL);
}

int main() {
    pthread_t threads[THREADS];
    Range ranges[THREADS];
    int start = 1;
    int step = 10;
    for(int i = 0; i < THREADS; i++) {
        ranges[i].start = start;
        ranges[i].end = start + step - 1;
        ranges[i].thread_id = i + 1;
        pthread_create(&threads[i], NULL, findPrimes, &ranges[i]);
        start += step;
    }
    for (int i = 0; i < THREADS; i++) {
        pthread_join(threads[i], NULL);
    }
    return 0;
}
