//Modify the above program where the value of N should be passed as argument to the thread function and the final result after summation should be returned to the main thread from the sub-thread.


#include<stdio.h>
#include<pthread.h>
#include<stdlib.h>
void *sum(void* arg){
	int n=*((int *)arg);
	int sum=0;
	for(int i=0;i<=n;i++){
		sum+=i;
	}
	int *res=(int *)malloc(sizeof(int));
	*res=sum;
	pthread_exit(res);
}
int main(){
	pthread_t th1;
	int n, *res;
	printf("Enter the number: ");
	scanf("%d",&n);
	pthread_create(&th1,NULL,sum,&n);
	pthread_join(th1,(void **)&res);
	printf("Total Sum: %d\n",*res);
	return 0;
}
