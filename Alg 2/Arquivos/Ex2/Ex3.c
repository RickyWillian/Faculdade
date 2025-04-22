#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	int c;
	int vogal;
	char caminho[] ="arqs\\Lorem_Ipsum.txt";
	FILE *arquivo = fopen (caminho, "r");
	if (arquivo == NULL){
		printf("Erro na abertura do arquivo");
		exit (1);
	}
	while ((c = fgetc(arquivo)) != EOF){
		if((c == 'a')||(c == 'A')||(c == 'o')||(c == 'O')||(c == 'u')||(c == 'U')||(c == 'e')||(c == 'E')||(c == 'i')||(c == 'I')){
			vogal++;
		}
	}
	printf("o texto tem %d vogais", vogal);
	fclose(arquivo);
	return 0;
}
