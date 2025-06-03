#include <stdio.h>

#define hu_int unsigned short int
#define llu_int unsigned long long int


int main()
{
    hu_int n;
    printf("Enter the length of Fibonacci sequence : ");
    scanf("%hu", &n);

    llu_int a = 0;
    llu_int b = 1;
    llu_int c;

    for (hu_int i = 0; i < n; i++) {
        if (i < 2) {
            printf("%hu\n", i);
            continue;
        }

        c = a + b;
        a = b;
        b = c;

        if (c < a) {
            printf("Next number is too big\n");
            n = i;
            break;
        }

        printf("%llu\n", c);
    }

    printf("Length of the computed sequence : %hu\n\n", n);

    printf("Enter 756412347556 to exit..\n");
    scanf("%hu", &n);

    return 0;
}
