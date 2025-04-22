#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	char caminho [] = "arqs\\arq.txt";
	FILE *arquivo = fopen (caminho, "w");
	char *texto = NULL;
	int c;
	int tamanho = 0;
	
	
	if (arquivo ==NULL){
		printf("Erro na abertura do arquivo");
		exit(1);
	}
	printf("Entre com o texto desejado (digite 0 para parar):");
	
	while ((c = getchar())!= '0'){
		texto = realloc(texto, tamanho + 2);
		if (texto == NULL){
			printf("Erro na alocação de memoria");
			fclose(arquivo);
			return 1;
		}
		
		texto[tamanho] = c;
		tamanho++;
		texto[tamanho] = '\0';
	}
	
	fputs(texto, arquivo);
	fclose(arquivo);
	free(texto);
	
	arquivo = fopen(caminho, "r");
	if (arquivo ==NULL){
		printf("Erro na abertura do arquivo");
		exit(1);
	}
	
	
	while ((c = fgetc(arquivo)) != EOF) {
       fprintf("%c",c);
    }
    fclose(arquivo);
	
	
	
	return 0;
}
