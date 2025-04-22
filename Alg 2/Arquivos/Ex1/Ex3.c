#include <stdio.h>
#include <stdlib.h>


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
		if ((caractere == 'a')||(caractere == 'A'))
			cont_a++;
	}
	printf("o arquivo contem %d letras 'a'", cont_a);
	fclose(arquivo);
	return 0;
}
