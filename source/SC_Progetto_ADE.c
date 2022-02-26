#include <stdio.h>

void main ()
{
	int x, i;
	for (x = 1; x <= 10000; x++) 
	{
		for (i = 2; i <= x / 2; i++) 
		{
			if (x % i == 0) 
			{
				break;
			}
		}	
		if (x % i != 0) 
		{
			printf( "%d\n", x );
		}
	}
}
