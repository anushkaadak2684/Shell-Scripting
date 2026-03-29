//Write a Program to demonstrate the use of signal. The process will print a message infinitely until an interrupt signal occurs. It will handle the signal and will print a message along with the signal number that it has got.(Help: signal(SIGINT,SIG_DFL))


#include <stdio.h>
#include <signal.h>
#include <unistd.h>
#include <sys/types.h>
void handle_signal(int signal_num) {
    printf("\nReceived signal %d, terminating the process.\n", signal_num);
    signal(SIGINT, SIG_DFL);
    raise(SIGINT); 
}
int main() {
    signal(SIGINT, handle_signal);
    while (1) {
        printf("Running... Press Ctrl+C to stop.\n");
        sleep(1);
    }
    return 0;
}

