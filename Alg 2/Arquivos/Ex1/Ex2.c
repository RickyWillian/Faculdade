#include <stdio.h>
#include <stdlib.h>
#define TAMANHO_LINHA 100



int main(int argc, char *argv[]) {
	FILE *origem;
	FILE *destino;
	char linha [TAMANHO_LINHA];
	
	origem = fopen ("C:\\Users\\ricky\\OneDrive\\Área de Trabalho\\Faculdade\\Alg 2\\Arquivos\\Exercícios sobre Arquivos - Parte 1-20250416\\entrada.txt", "r");
	destino = fopen ("C:\\Users\\ricky\\OneDrive\\Área de Trabalho\\Faculdade\\Alg 2\\Arquivos\\Exercícios sobre Arquivos - Parte 1-20250416\\copia.txt", "w");
	
	if ((origem == NULL) || ( destino==NULL )){
		printf("Erro na abertura de arquivos");
		exit(1);
	}
	while (fgets(linha, TAMANHO_LINHA, origem) != NULL){
		if(fputs(linha, destino)== EOF){
			printf("Erro ao escrever");
			fclose(origem);
			fclose(destino);
			exit(1);
		}
	}
	printf("dados copiados");
	fclose(origem);
	fclose(destino);
	return 0;
}
