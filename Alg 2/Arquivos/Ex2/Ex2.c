#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	char caminho[] ="arqs\\Lorem_Ipsum.txt";
	FILE *arquivo = fopen (caminho, "r");
	int count=0;
	char linha[200]; 
	
	if (arquivo == NULL){
		printf("Erro na abertura do arquivo");
		exit (1);
	}
	while (fgets(linha, sizeof(linha), arquivo)){
		count++;
	}
	
	printf("o arquivo tem %d linhas", count);
	fclose(arquivo);
	
	return 0;
}
