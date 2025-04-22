#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	int c;
	char letra;
	int count=0;
	char caminho[] ="arqs\\Lorem_Ipsum.txt";
	FILE *arquivo = fopen (caminho, "r");
	if (arquivo == NULL){
		printf("Erro na abertura do arquivo");
		exit (1);
	}
	printf("Qual letra quer que seja verificada?");
	scanf("%c", &letra);
	while ((c = fgetc(arquivo)) != EOF){
		if((c == letra)||(c == toupper(letra))){
			count++;
		}
	}
	printf("o texto tem %d letras %c", count, letra);
	fclose(arquivo);
	return 0;
}
