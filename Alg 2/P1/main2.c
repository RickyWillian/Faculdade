#include <stdio.h>
#include <stdlib.h>


int main(int argc, char *argv[]) {
	
	int a=10, b=20;
	printf ("\n Endere�o de A %u", &a);
	printf ("\n Endere�o de B %u", &b);
	
	if (&a>&b)
		printf("\no maior � o endere�o de A que contem %d", a);
	else
		printf("\no maior endere�o � o de B que contem %d", b);
	return 0;
}
