#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	int plMaior = 0, plMenor = 0;
	char palavra[10];
	char caminho[] = "..\\Exercícios sobre Arquivos - Parte 1-20250416\\palavras_computacao.txt";
	FILE *arquivo = fopen(caminho, "r");
	if (arquivo == NULL){
		printf("Erro na abertura do arquivo");
		exit(1);
	}
	
	while (fgets(palavra, sizeof(palavra), arquivo) != NULL){
		palavra [strcspn(palavra,"\n")] ='\0';
		int tamanho = strlen(palavra);
		if (tamanho>5){
			plMaior++;
		}
		else if (tamanho >3){
			plMenor++;
		}
	}
	printf("existem %d palavras com maior de 5 letras e %d palavras entre 3 e 5 letras", plMaior, plMenor);
	fclose(arquivo);
	
	return 0;
}
