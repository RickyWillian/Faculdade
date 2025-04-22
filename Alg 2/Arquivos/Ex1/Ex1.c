#include <stdio.h>
#include <stdlib.h>
#define TAMANHO_LINHA 100


int main(int argc, char *argv[]) {
	FILE *arquivo;
	char linha[TAMANHO_LINHA];
	
	arquivo= fopen ("C:/Users/ricky/OneDrive/Área de Trabalho/Faculdade/Alg 2/Arquivos/Exercícios sobre Arquivos - Parte 1-20250416/entrada.txt", "r");
	if (arquivo == NULL){
	printf("Erro ao abrir arquivo!");
	exit(1);
	}
	   while (fgets(linha, TAMANHO_LINHA, arquivo) != NULL) {
        printf("%s", linha);
    }
	fclose(arquivo);
	
	return 0;
}
