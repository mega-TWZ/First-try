#include<stdio.h>

void main()
{
	int i;
    int a;
    for (i=1;i<10;i++)
    {
        for(a=1;a<=i;a++)
        {
            printf("%d*%d=%d  ",a,i,i*a);
        }
	printf("\n");

    }



}

