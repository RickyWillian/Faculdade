#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	FILE *arquivo1;
	FILE *arquivo2;
	FILE *arquivo3;
	char linha [200];
	
	
	arquivo1 = fopen ("arqs\\Lorem_Ipsum.txt","r");
	if (arquivo1 == NULL){
		printf("Erro na abertura do arquivo 1");
		exit(1);
	}
	arquivo2 = fopen ("arqs\\arq.txt","r");
	if (arquivo3 == NULL){
		printf("Erro na abertura do arquivo 2");
		fclose(arquivo1);
		exit (1);
	}
	arquivo3 = fopen ("arqs\\nove.txt","w");
	if (arquivo2 == NULL){
		printf("Erro na abertura do arquivo 3");
		fclose(arquivo1);
		fclose(arquivo2);
		exit (1);
	}
	
	while (fgets (linha, sizeof(linha), arquivo1) != NULL){
		fputs(linha, arquivo3);	
	}
	while(fgets(linha, sizeof(linha), arquivo2) != NULL){
		fputs(linha, arquivo3);
	}
	printf("combinação de arquivos com sucesso");
	fclose(arquivo1);
	fclose(arquivo2);
	fclose(arquivo3);
	return 0;
}
