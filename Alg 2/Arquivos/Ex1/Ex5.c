#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	FILE *arquivo;
	char input[50];
	int i=0;


	arquivo = fopen ("C:\\Users\\ricky\\OneDrive\\Área de Trabalho\\Faculdade\\Alg 2\\Arquivos\\Exercícios sobre Arquivos - Parte 1-20250416\\entrada.txt", "a");
	if (arquivo == NULL){
		printf("Erro na abertura do arquivo");
		exit(1);
	}
	printf("texto de input:");
	fgets(input, sizeof(input), stdin); 
	
	fputs(input, arquivo);
	fclose(arquivo);
	
	
	return 0;
}
