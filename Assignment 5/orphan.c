// Write a C program to create an Orphan process and verify the output of your program with the 'ps' command.

#include<stdio.h>
#include<unistd.h>

int main() {
	pid_t pid;
	pid=fork();
	
	if (pid < 0) {
        printf("Fork failed\n");
        return 1;
    }
	else if(pid==0) {
		printf("Child Has Started with PID: %d\n",getpid());
		printf("Parent Process ID: %d\n",getppid());
		printf("I will be Sleeping Now while the Parent gets Killed...\n");
		sleep(10);
		printf("Child is Orphan Now..\n");
	}
	else {
		printf("Parent PID: %d\n",getpid());
		sleep(5);
		printf("Parent Killed....\n");
	}
	return 0;
}

