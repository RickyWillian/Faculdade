#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	char linha[200];
	char caminho[] = "..\\Exercícios sobre Arquivos - Parte 1-20250416\\palavras_computacao.txt";
	FILE *arquivo = fopen(caminho,"r");
	char caminho2[]= "..\\Exercícios sobre Arquivos - Parte 1-20250416\\cpy_palavras_computacao.txt";
	FILE *arquivo2 = fopen(caminho2, "w");
	if (arquivo == NULL){
		printf("Erro na abertura do arquivo");
		exit(1);
	}
		if (arquivo2 == NULL){
		printf("Erro na abertura do arquivo");
		exit(1);
	}
	while (fgets(linha, sizeof(linha), arquivo) != NULL){
		fputs(linha, arquivo2);
	}
	fclose(arquivo);
	fclose(arquivo2);
	
	char caminho3[] = "..\\Exercícios sobre Arquivos - Parte 1-20250416\\entrada.txt";
	arquivo = fopen(caminho3,"r");
	char caminho4[] = "..\\Exercícios sobre Arquivos - Parte 1-20250416\\cpy_entrada.txt";
	arquivo2 = fopen(caminho4, "w");
		if (arquivo == NULL){
		printf("Erro na abertura do arquivo");
		exit(1);
	}
		if (arquivo2 == NULL){
		printf("Erro na abertura do arquivo");
		exit(1);
	}
	while (fgets(linha, sizeof(linha), arquivo) != NULL){
		fputs(linha, arquivo2);
	}
	fclose(arquivo);
	fclose(arquivo2);
	
	
	return 0;
}
