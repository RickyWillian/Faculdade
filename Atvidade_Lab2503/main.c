#include <stdio.h>
#include <stdlib.h>
#include <locale.h>


struct aluno{
char nome[50];
float n1, n2;
};


int cont = 0;
struct aluno *ptr = NULL;
void cadastrar(){
    ptr = (struct aluno *)realloc(ptr, (cont + 1)* sizeof(struct aluno));

    printf("Aluno %d:", cont);
    printf("Nome: \n");
    scanf ("%s", ptr[cont].nome);
    printf("Nota 1: \n");
    scanf ("%f", &ptr[cont].n1);
    printf("Nota 2: \n");
    scanf("%f", &ptr[cont].n2);
   cont ++;
}

float calcular_media(float n1,  float n2){
    float media = (n1+n2)/2;
return media;
}
void atualizar_nota(float *n1, float *n2){
     printf("N1: %.2f \n", *n1);
     printf("N2: %.2f \n", *n2);
     printf("Digite a nova N1: \n");
     scanf("%f", n1);
     printf("Digite a nova N2: \n");
     scanf("%f", n2);

}
void mostra_dados(){
int i;
    for(i =0; i<cont; i++){
        printf ("Nome: %s ", ptr[i].nome);
        printf ("N1: %.2f ", ptr[i].n1);
        printf ("N2: %.2f ", ptr[i].n2);
        printf ("Media %.2f ", calcular_media(ptr[i].n1, ptr[i].n2 ));
        printf ("\n");
        printf ("\n");
        printf ("\n");
    }
}
int menu(){
   
    int op;
    printf("Menu: (entre com a opço dejada)\n");
    printf("*****************\n");
    printf("1 - Cadastrar\n");
    printf("2 - Atualizar notas\n");
    printf("3 - Mostrar dados\n");
    printf("0 - Sair\n");
    scanf("%d", &op);
    return op;
    }

int main()
{
	setlocale(LC_ALL, "Portuguese");

  int op;	

  while (1){
      op = menu();

      switch (op){
      case 1:
        cadastrar();
       break;
		int pos;	
      case 2:
          
          printf ("Qual o aluno que deseja alterar a nota? \n");
          scanf("%d", &pos);
         atualizar_nota(&ptr[pos].n1, &ptr[pos].n2);
       break;

       case 3:
        mostra_dados();
        break;

        case 0:
        free(ptr);
        return 0;
        
        defaut:
            printf("opção invalda! \n");
            break;
      }
  }
    return 0;
}
