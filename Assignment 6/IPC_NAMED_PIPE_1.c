//Implement IPC between two processes where proceess-1 will take two strings as user input and send them to process-2. Process-2 will compare them and return the result ("SAME" or "NOT SAME") back to process-1. Use FIFO for IPC.


//1st File
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>
#include <fcntl.h>
#define DATASIZE 64
int main() {
	mkfifo("./myfifo1", 0666|O_CREAT);
	char data1[DATASIZE];
	char data2[DATASIZE];
	char data6[DATASIZE];
	printf("Enter two strings : \n");
	fgets(data1,DATASIZE,stdin);
	fgets(data2,DATASIZE,stdin);
	printf("Data is sent to process 2\n");
	int fd = open("./myfifo1",O_WRONLY);
	write(fd,data1,strlen(data1)+1);
	write(fd,data2,strlen(data2)+1);
	int fd2 = open("./myfifo2", O_RDONLY);
	read(fd2,data6,DATASIZE);
	printf("\nResult received from process 2\n");
	printf("The strings are ");
	printf("%s\n",data6);
	close(fd);
	close(fd2);
	return 0;
}
