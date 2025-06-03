#include <stdio.h>


int main()
{
    unsigned short int n;
    printf("Enter the length of Fibonacci sequence : ");
    scanf("%hu", &n);

    unsigned long long int a = 0;
    unsigned long long int b = 1;
    unsigned long long int c;

    for (unsigned short int i = 0; i < n; i++) {

        if (i < 2) {

            printf("%hu\n", i);
            continue;

        }

        c = a + b;
        a = b;
        b = c;

        if (c < a) {

            printf("Next number is too big\n");
            printf("Length of the computed sequence : %hu\n", i);
            break;

        }

        printf("%llu\n", c);

    }

    return 0;
}
