#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

/**
 * infinite_while - Run an infinite while loop.
 *
 * Return: Always 0.
 */

int infinite_while(void)
{
	while (1)
	{
		sleep(1);
	}
	return (0);
}


/**
 * main - creates five zombie processes
 * Return: Always 0
 */
int main(void)
{
	pid_t pid;
	int i;

	/* creates the 5 zombie process */
	for (i = 0; i < 5; i++)
	{
		pid = fork();
		if (pid > 0)
		{
			/* parent process */
			printf("Zombie process created, PID: %d\n", pid);
			sleep(1);
		}
		else if (pid == 0)
		{
			/* child process */
			exit(0);
		}
		else
		{
			/* error occured */
			perror("fork");
			exit(1);
		}
	}
	infinite_while();

	return (EXIT_SUCCESS);
}
