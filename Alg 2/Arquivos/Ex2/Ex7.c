#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	FILE *arquivo, *saida;
	int c;
	
	
	arquivo = fopen ("arqs\\Lorem_Ipsum.txt", "r");
	saida = fopen ("arqs\\CPY_Lorem_Ipsum.txt", "w");
	if (arquivo == NULL){
		printf("Erro na abertura do arquivo palavra");
		exit(1);
	}
	if (saida == NULL){
		printf("Erro na abertura do arquivo saida");
		exit(1);
	}
	while((c = fgetc(arquivo)) != EOF){
		if((c == 'a') || (c == 'A') || (c == 'o') || (c == 'O') ||
            (c == 'u') || (c == 'U') || (c == 'e') || (c == 'E') ||
            (c == 'i') || (c == 'I'))
		c = '*';
	fputc(c,saida);
	}
	fclose(arquivo);
	fclose(saida);
	return 0;
}
