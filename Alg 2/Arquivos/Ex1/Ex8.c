#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	FILE *arquivo;
	char palavra[10];
	int i = 0;
	char caminho[] = "..\\Exercícios sobre Arquivos - Parte 1-20250416\\palavras_computacao.txt";
	arquivo = fopen(caminho, "r");
	if (arquivo == NULL){
		printf("Erro na abertura do arquivo");
		exit(1);
	}
	while (fgets(palavra, sizeof(palavra), arquivo) != NULL){
		for(i=0;i<sizeof(palavra);i++){
			if ((palavra[i]=='m')||(palavra[i]=='M')){
				printf("%s", palavra);
				break;
			}
		}
	}
	fclose(arquivo);
	
	
	return 0;
}
