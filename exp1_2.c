#include <stdio.h>
#include <string.h>

int main() {
	register int num1 = 10;
	register int num2 = 20;
	num1 = num1 + num2;
	num2 = num1 - num2;
	num1 = num1 - num2;
	printf("%d %d\n", num1, num2);
	return 0;
}