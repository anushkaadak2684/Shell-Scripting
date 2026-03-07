// Write a C program to create a Zombie process and verify the output of your program with the 'ps' command.

#include<stdio.h>
#include<unistd.h>
#include<stdlib.h>

int main() {
 	pid_t pid;
 	pid=fork();
 	
 	if(pid > 0){
 		printf("Parent Process PID: %d\n", getpid() );
 		sleep(10);
 		printf("Parent waking up \n");
 	}
 	else if(pid == 0){
 		printf("Child Process PID: %d\n",getpid());
 		printf("Child exiting\n");
 		sleep(5);
 		exit(0);
 	}
 	else{
 		printf("Fork failed\n");
        return 1;
	}
 	return 0;
}
