#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	FILE *arquivo, *saida;
	int c;
	
	
	arquivo = fopen ("C:\\Users\\ricky\\OneDrive\\Área de Trabalho\\Faculdade\\Alg 2\\Arquivos\\Exercícios sobre Arquivos - Parte 1-20250416\\palavras_computacao.txt", "r");
	saida = fopen ("C:\\Users\\ricky\\OneDrive\\Área de Trabalho\\Faculdade\\Alg 2\\Arquivos\\Exercícios sobre Arquivos - Parte 1-20250416\\saida.txt", "w");
	if (arquivo == NULL){
		printf("Erro na abertura do arquivo palavra");
		exit(1);
	}
	if (saida == NULL){
		printf("Erro na abertura do arquivo saida");
		exit(1);
	}
	while((c = fgetc(arquivo)) != EOF){
		if((c == 'a') || (c == 'A'))
		c = '3';
	fputc(c,saida);
	}
	fclose(arquivo);
	fclose(saida);
	return 0;
}
