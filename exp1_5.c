#include <stdio.h>
#include <string.h>

int main() {
	int A[5];
	for(int i = 0; i < 5; i++) scanf("%d", &A[i]);
	int min = A[0], max = A[0];
	for(int i = 1; i < 5; i++) {
		if(A[i] > max) max = A[i];
		if(A[i] < min) min = A[i];
	}
	printf("%d %d\n", min, max);
	return 0;
}