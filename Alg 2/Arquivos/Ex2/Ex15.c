#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	FILE *origem;
	FILE *destino;
	char nomeArqOr[20], nomeArqDes[20];
	char caminhoOr[] = "arqs\\",caminhoDes[] = "arqs\\";
	char linha [200];
	char nomePes[50];
	int dia, mes, ano, anoAtual, idade;
	char validacao[100];
	
	printf("Digite o nome do arquivo de origem: \n");
	scanf("%s", nomeArqOr);
	printf("Digite o nome do arquivo de destino: \n");
	scanf("%s", nomeArqDes);
	printf("Digite o ano atual: \n");
	scanf("%d", &anoAtual);
	

	strcat(caminhoOr, nomeArqOr);
	strcat(caminhoOr, ".txt");
	strcat(caminhoDes, nomeArqDes);
	strcat(caminhoDes, ".txt"); //o arquivo destino está retornando com o nome "txt.txt"
								// corrigir depois 
	
	
	origem=fopen(caminhoOr, "r");
	destino=fopen(caminhoDes, "w");
	if((origem == NULL)|| (destino == NULL)){
		printf("Erro na abertura dos arquivos");
		exit(1);
	}
	while(fgets(linha, sizeof(linha), origem)!= NULL){
		if (sscanf(linha, "%[^,], %d, %d, %d", nomePes, &dia, &mes, &ano) == 4) {
            idade = anoAtual - ano;
		}
		if(idade<18){
			strcpy(validacao, "menor de idade");
		}
		else if(idade==18){
			strcpy(validacao, "entrando na maior idade");
		}
		else {
			strcpy(validacao, "maior de idade");
		}
		fprintf(destino, "Nome: %s %s \n", nomePes, validacao);
	}
	fclose(origem);
	fclose(destino);
	return 0;
}
