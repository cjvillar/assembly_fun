#include <stdio.h>

int main(void)
{
    
    int num = 9;
    
    //loop through num to produce left aligning triangle

    for (int i = 0; i < num ; i++)
    {
        for (int j = 0; j < i; j++)
        {
            printf("#");
        }

        printf("\n");
    }

}