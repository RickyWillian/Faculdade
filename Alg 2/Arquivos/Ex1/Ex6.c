#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	FILE *arquivo;
	int qtdLinha=0;
	char linha[200];
	
	
	
	arquivo = fopen ("C:\\Users\\ricky\\OneDrive\\Área de Trabalho\\Faculdade\\Alg 2\\Arquivos\\Exercícios sobre Arquivos - Parte 1-20250416\\entrada.txt", "r");
	if (arquivo == NULL){
		printf("Erro na abertura do arquivo");
		exit(1);
	}
	while (fgets(linha, sizeof(linha), arquivo) != NULL){
		qtdLinha++;
	}
	printf("o arquivo contem %d linhas", qtdLinha);
	
	
	
	fclose(arquivo);
	return 0;
}
