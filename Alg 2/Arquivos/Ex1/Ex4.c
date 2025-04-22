#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {

	FILE *arquivo;
	char caractere;
	int cont_a;
	
	arquivo = fopen ("C:\\Users\\ricky\\OneDrive\\Área de Trabalho\\Faculdade\\Alg 2\\Arquivos\\Exercícios sobre Arquivos - Parte 1-20250416\\entrada.txt", "r");
	if (arquivo == NULL){
		printf("Erro na abertura do arquivo");
		exit(1);
	}
	
	while ((caractere = fgetc(arquivo))!= EOF){
		printf("%c", caractere);
		
	}

	fclose(arquivo);
	return 0;
	
}
