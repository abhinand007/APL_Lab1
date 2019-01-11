#include <stdio.h>
#include <string.h>

int recursion(int n) {
	if(n == 1) return 1;
	else {
		return n * recursion(n - 1);
	}
}

int main() {
	int num;
	scanf("%d", &num);
	printf("%d\n", recursion(num));
	return 0;
}