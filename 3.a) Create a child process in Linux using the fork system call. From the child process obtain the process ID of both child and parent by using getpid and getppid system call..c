#include <stdio.h>
#include <unistd.h> int
main()
{ 
    int pid;
    pid = fork();
    if(pid==0)
    {
        printf("After Fork \n"); 
        printf("The new child process id created by fork system call %d\n ",getpid());
    } 
    else
    {
        printf(" Before Fork \n"); 
        printf("The parent process id is :%d\n",getppid()); 
        printf("The parent process executed successfully\n");
    }
    return 0;
}