#include <stdio.h>

int make_addition(int a, int b);
int make_substraction(int a, int b);

int main(void)
{
    int result = make_addition(2, 3);
    printf("2 + 3 = %d\n", result);
    result = make_substraction(5, 2);
    printf("5 - 2 = %d\n", result);
    return 0;
}