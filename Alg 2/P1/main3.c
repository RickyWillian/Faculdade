#include <stdio.h>
#include <stdlib.h>
#include <time.h>



int main(int argc, char *argv[]) {

	int i=0,j=0,l, c;
	double **mat1, **mat2, **soma;
	
	printf("digite a quantidade de linhas na matriz");
	scanf ("%d", &l);
	printf("digite a quantidade de colunas na matriz");
	scanf ("%d", &c);
	
   mat1 = (double **)malloc(l * sizeof(double*));
   mat2 = (double **)malloc(l * sizeof(double*));
   soma = (double **)malloc(l * sizeof(double*));
    if ((mat1 == NULL) || (mat2 == NULL))
    {
        printf("Erro: Memória Insuficiente!\n");
        exit(1);
    }
    for (i=0;i<l;i++){
    	mat1[i]= (double *)malloc(c * sizeof(double));
    	mat2[i]= (double *)malloc(c * sizeof(double));
    	soma[i]= (double *)malloc(c * sizeof(double));
    	if ((mat1 == NULL) || (mat2 == NULL))
		    {
		        printf("Erro: Memória Insuficiente!\n");
		        exit(1);
		    }
	}
	srand(time(0));
	for (i=0;i<l;i++){
		for (j=0; j<c; j++){
		 mat1[i][j] = 1 + (double)rand() / RAND_MAX * 9;
		 mat2[i][j] = 1 + (double)rand() / RAND_MAX * 9;
		 soma[i][j] = mat1[i][j] + mat2[i][j];
		}
	}
	    printf("\nSoma das matrizes recebida:\n");
    for (i = 0; i < l; i++) {
        for (j = 0; j < c; j++) {
            printf("%.2lf ", soma[i][j]);
        }
        printf("\n");
    }
    
    for (i=0; i<c; i++){
    	free (mat1[i]);
    	free (mat2[i]);
    	free (soma[i]);
	}
		free (mat1);
    	free (mat2);
    	free (soma);
    	
	
	return 0;
}


