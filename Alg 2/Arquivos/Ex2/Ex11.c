#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	FILE *arquivo;
	char nome[15], caminho[] = "arqs\\"; 
	char *palavra;
	char linha[200], plText[10];
	int totalPl = 0;
	
	printf("entre o nome do arquivo\n");
	scanf("%s", nome);
	
	strcat(caminho,nome);
	strcat(caminho, ".txt");
	arquivo = fopen(caminho, "r");
	if(arquivo == NULL){
		printf("Erro na abertura do arquivo\n");
		exit(1);
	}
	 printf("qual a palavra que deseja contar\n");
	 scanf("%s", plText);
	
	while(fgets(linha, sizeof (linha), arquivo) != NULL){
		linha [strcspn(linha, "\n")] = '\0';
		
		palavra = strtok (linha, " ");
		while (palavra != NULL){
		
			if (strcmp(palavra, plText)==0){ 
				totalPl++;
			}
			palavra = strtok(NULL, " ");
		
		}
		
	}
	printf ("o total de palavras %s é: %d", plText, totalPl);
	fclose(arquivo);
	return 0;
}
