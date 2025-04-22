#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	char caminho[] = "..\\Exercícios sobre Arquivos - Parte 1-20250416\\entrada.txt";
	FILE *arquivo = fopen(caminho, "r");
	int count = 0;
	char c;
	
	
	if (arquivo == NULL){
		printf("Erro na abertura do arquivo");
		exit(1);
	}
	
	while ((c = fgetc(arquivo))!= EOF){
		if ((c == 'r')||(c == 'R')){
			count++;
		}
	}
	
	printf("A letra R aparece %d vezes", count);
	fclose(arquivo);
	
	return 0;
}
