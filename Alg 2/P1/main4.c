#include <stdio.h>
#include <stdlib.h>

struct data{
	int dia, mes, ano;
};
struct end{
	char rua[50];
	int numero;	
};
struct func{
	char nome [50];
	float salario;
	struct data nascimento;
	struct end endereco;
};

int main() {
	int n, i;
	struct func *ptr;
	float maior=0;
	
	printf ("Quantos funcionarios devem ser cadastrados?\n");
	scanf ("%d", &n);
	
	ptr = (struct func *)malloc (n*sizeof(struct func));
	if (ptr == NULL) {
        printf("Erro ao alocar memoria!");
    }
    for (i=0; i<n; i++){
    	printf ("Nome:\n");
    	scanf ("%s", ptr[i].nome);
    	
    	printf("Salario: \n");
    	scanf("%f", &ptr[i].salario);
    	
		printf("Data de nascimento (dd mm aaaa): ");
        scanf("%d %d %d", &ptr[i].nascimento.dia, &ptr[i].nascimento.mes, &ptr[i].nascimento.ano);	
        
		printf("Rua: ");
        scanf("%s", ptr[i].endereco.rua);
        
        printf("Numero da casa: ");
        scanf("%d", &ptr[i].endereco.numero);
	}
	for (i=0; i<n; i++){
		if (ptr[i].salario>maior){
			maior =ptr[i].salario;
		}
	}
	for(i=0; i<n;i++){
		if (ptr[i].salario==maior)
	printf("%s possui o maior salario", ptr[i].nome);
	}
	
	free (ptr);
	
	
	
	return 0;
}
