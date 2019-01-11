#include <stdio.h>
#include <string.h>

int main() {
	int A[10];
	for(int i = 0; i < 10; i++) A[i] = i + 1;
	int B[10];
	for(int i = 0; i < 10; i++) B[i] = A[i];
	for(int i = 0; i < 10; i++) printf("%d\n", B[i]);
	return 0;
}