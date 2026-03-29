//Write a Program to create a child process. The parent process will stop until an alarm is received from the child process.


#include <stdio.h>
#include <signal.h>
#include <unistd.h>
#include <sys/wait.h>
#include <stdlib.h>
void handle_alarm(int signal_num) {
    printf("Parent received SIGALRM signal from child.\n");
}
int main() {
    pid_t pid;
    signal(SIGALRM, handle_alarm);
    pid = fork();
    if (pid < 0) {
        perror("Fork failed");
        exit(1);
    } else if (pid == 0) {
        printf("Child process started. Sending an alarm in 5 seconds...\n");
        sleep(5);  
        kill(getppid(), SIGALRM);  
        printf("\nChild process sent SIGALRM to parent and is exiting.\n");
        exit(0);
    } else {
        printf("Parent process waiting for SIGALRM from child...\n");
        wait(NULL);
        printf("Parent process resumed and child has exited.\n");
    }
    return 0;
}
