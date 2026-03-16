//Implement IPC between a parent and a child process where parent will print a message received from the child, who will take the message as user input. Use un-nnamed pipe for IPC.


#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<unistd.h>
#define DATASIZE 100
int main()
{
	int pfd[2];
	int pid;
	char write_msg[DATASIZE];
	char read_msg[DATASIZE];
	pipe(pfd);
	pid=fork();
	if(pid==0)
	{
		printf("CHILD PROCESS\n");
		printf("Enter a message: ");
		fgets(write_msg,DATASIZE,stdin);
		write(pfd[1],write_msg,strlen(write_msg)+1);
	}
	else if(pid>1)
	{
		read(pfd[0],read_msg,DATASIZE);
		printf("\nPARENT PROCESS\n");
		printf("message received from child process: %s\n",read_msg);
	}
	return 0;
}


