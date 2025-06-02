#include <stdio.h>


int main()
{
    int n;
    printf("Enter the length of Fibonacci sequence : ");
    scanf("%d", &n);

    int a = 0;
    int b = 1;
    int c;

    for (int i = 0; i < n; i++) {

        if (i < 2) {

            printf("%d\n", i);
            continue;

        }

        c = a + b;

        if (c < 0) {

            printf("Next number is too big\n");
            n = i;
            break;

        }

        printf("%d\n", c);

        a = b;
        b = c;

    }

    printf("Length of the computed sequence : %d\n\n", n);

    printf("Enter 756412347556 to exit..\n");
    scanf("%d", &n);

    return 0;
}
