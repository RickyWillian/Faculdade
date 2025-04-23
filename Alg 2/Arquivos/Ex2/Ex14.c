#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	FILE *origem;
	FILE *destino;
	char caminho[]="arqs\\";
	char nome[15], nomePes[20];
	int dia, mes, ano, diaNasc, mesNasc, anoNasc, idade;
	char linha[100];
	
	
	
	printf("Qual o nome do arquivo?\n");
	scanf("%s", nome);
	strcat(caminho, nome);
	strcat(caminho, ".txt");
	printf("qual a data de hoje?\n");
	printf("dia: ");
	scanf("%d", &dia);
	printf("mes: ");
	scanf("%d", &mes);
	printf("ano: ");
	scanf("%d", &ano);
	
	
	origem = fopen (caminho, "r");
	destino = fopen("arqs\\resultIdade.txt","w");
	if ((destino == NULL)|| (origem == NULL)){
		printf("Erro ao abrir o arquivo");
		exit(1);
	}
	
	while (fgets(linha, sizeof (linha), origem) != NULL){
		if(sscanf(linha, "%[^,], %d, %d, %d", nomePes, &diaNasc, &mesNasc, &anoNasc)==4){
			idade = ano - anoNasc;
			if ((mes<mesNasc)||((mes==mesNasc)&&(dia<diaNasc))){
				idade--;
			}
			fprintf(destino,"Nome: %s, Idade: %d \n", nomePes, idade);
		}
	}
	return 0;
}
