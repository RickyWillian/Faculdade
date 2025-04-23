#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	FILE *arquivo;
	arquivo = fopen ("arqs\\cadastro.txt","w");
	if (arquivo == NULL){
		printf("Erro na abertura do arquivo");
		exit (1);
	}
	char nome[10];
	char tel[10];
	
	while(1){
	
		printf("Digite o nome do usuario:\n");
		scanf("%s", nome);
		printf("Digite o telefone:\n");
		scanf("%s", tel);
		if (strcmp(tel, "0")==0){
			break;
		}
		fprintf(arquivo,"Nome: %s", nome);
		fprintf(arquivo," Telefone:  %s \n", tel);
	}
	fclose(arquivo);
	
	
	
	return 0;
}
