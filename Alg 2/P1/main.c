#include <stdio.h>
#include <stdlib.h>



int main(int argc, char *argv[]) {
	
	char string[10], stringd[10];
	int i;
	
	gets(string);
	fflush
	for (i=0; i<10 ; i++){
		if ((string[i]!= 'a') && (string[i]!= 'e') && (string[i]!= 'i') && (string[i]!= 'o') && (string[i]!= 'u') &&(string[i]!= "\0")){
		printf("%c", string[i]);
		}
	}


	return 0;
}
