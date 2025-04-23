#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	FILE *entrada;
	FILE *saida;
	char linha [60];
	char cidadeMaisPopulosa[41];
	int populacao = 0, maior =0;
	int pos = 0,i;
	char nome [41];
	
	
	entrada = fopen ("arqs\\cidades.txt","r");
	saida = fopen ("arqs\\cidade_pop.txt", "w");
	if ((entrada == NULL)||(saida == NULL)){
		printf("Erro na abertura dos arquivos.");
		exit (1);
	}
	
	while(1){
		fseek(entrada, pos, SEEK_SET);
		
		if(fgets(linha, sizeof(linha), entrada) == NULL){
			break;
		}
		strncpy(nome, linha, 40);
		nome[40] = '\0';
		
		
		for (i=39; i>=0; i--){
			if (nome[i]==' ')
				nome[i]='\0';
			else
				break;
		}
		sscanf(linha + 40, "%d", &populacao);
		if (populacao > maior){
			maior=populacao;
			strcpy(cidadeMaisPopulosa, nome);
		}
		pos += 60;
	
	}
	fprintf(saida, "%s", cidadeMaisPopulosa);
	fprintf(saida, " - ");
	fprintf(saida, "%d", maior);
		
	printf("gravação feita com sucesso");
	fclose(saida);
	fclose(entrada);
	
	return 0;
}
