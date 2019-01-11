#include <stdio.h>
#include <string.h>

int main() {
	int A[10];
	for(int i = 0; i < 10; i++) {
		*(A + i) = i + 1;
	}	
	for(int j = 0; j < 10; j++) printf("%d\n", *(A + j));
	return 0;
}