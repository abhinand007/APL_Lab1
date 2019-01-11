#include <stdio.h>
#include <string.h>

int main() {
	register int a = 5;
	register int b = 7;
	register int sum = a + b;
	register int diff = b - a;
	register int prod = a*b;
	register int div = b/a;
	register int mod = a%b;
	register int or = a | b;
	register int and = a & b;
	printf("%d %d %d %d %d %d %d\n", sum, diff, prod, div, mod, or, and);
	return 0;
}