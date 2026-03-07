// Write a C program to create a child process and print the PID & PPID from both the parent and child processes. Also verify the output of your program with the 'ps' command.

#include<stdio.h>
#include<unistd.h>

int main(){
	pid_t pid;
	pid=fork();
	
	if (pid < 0) {
        printf("Fork failed\n");
        return 1;
    }
	else if(pid==0){
		printf("Child Process\n");
		printf("PID = %d\n", getpid());
		printf("PPID = %d\n" , getppid());
		sleep(20);
	}
	else{
		printf("Parent Process\n");
		printf("PID = %d\n", getpid());
		printf("Child PID = %d\n", pid);
		sleep(20);
	}
	return 0;
}
