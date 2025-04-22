#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	char nOrigem[30], nDestino[30];
	char caminhoOrigem[100], caminhoDestino[100];
	printf("Digite o nome do arquivo a ser copiado\n");
	scanf("%s", nOrigem);
	printf("Digite o nome do arquivo destino\n");
	scanf("%s", nDestino);
    snprintf(caminhoOrigem, sizeof(caminhoOrigem), "arqs\\%s.txt", nOrigem);
    snprintf(caminhoDestino, sizeof(caminhoDestino), "arqs\\%s.txt", nDestino);
	FILE *origem = fopen (caminhoOrigem,"r");
	FILE *destino = fopen(caminhoDestino,"w");
	if ((origem==NULL)||(destino==NULL)){
		printf("Erro ao abrir arquivos");
		exit(1);
	}
	
	int c;
	while((c=fgetc(origem))!=EOF){
		fputc(toupper(c),destino);
	}
	
	fclose(origem);
	fclose(destino);
	return 0;
}
