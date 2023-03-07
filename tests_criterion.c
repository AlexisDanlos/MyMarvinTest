#include <criterion/criterion.h>
#include <stdio.h>

int make_addition(int a, int b);
int make_substraction(int a, int b);

Test(make_addition, test_addition)
{
    int result = make_addition(2, 3);
    cr_assert_eq(result, 5, "Expected 2 + 3 to equal 5");
}

Test(make_substraction, test_substraction)
{
    int result = make_substraction(5, 2);
    cr_assert_eq(result, 3, "Expected 5 - 2 to equal 3");
}
