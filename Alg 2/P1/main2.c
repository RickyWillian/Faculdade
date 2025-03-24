#include <stdio.h>
#include <stdlib.h>


int main(int argc, char *argv[]) {
	
	int a=10, b=20;
	printf ("\n Endereço de A %u", &a);
	printf ("\n Endereço de B %u", &b);
	
	if (&a>&b)
		printf("\no maior é o endereço de A que contem %d", a);
	else
		printf("\no maior endereço é o de B que contem %d", b);
	return 0;
}
