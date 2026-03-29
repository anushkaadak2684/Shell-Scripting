//WAP where two threads will synchronize each other to print the pattern "baabbaabbaab".

#include <stdio.h>
#include <pthread.h>
void* printB(void* arg) {
    printf("b");
    pthread_exit(NULL);
}

void* printAA(void* arg) {
    printf("aa");
    pthread_exit(NULL);
}
int main() {
    pthread_t t1, t2;

    for (int i = 0; i < 3; i++) {
        pthread_create(&t1, NULL, printB, NULL);
        pthread_join(t1, NULL);

        pthread_create(&t2, NULL, printAA, NULL);
        pthread_join(t2, NULL);
 
    
    	pthread_create(&t1,NULL,printB,NULL);
    	pthread_join(t1,NULL);
    }
    printf("\n");
    return 0;
}
