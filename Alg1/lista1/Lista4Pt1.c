#include <stdio.h>

int main() {
int i, qtdVeiculos, acidentes, maior, menor, maiorc, menorc, mediaP, cal, media;
for(i=1; i<=5; i++){
	printf("\n Codigo da cidade: %d \n", i);
	printf("\n Quantidade de veiculos: \n");
	scanf("%d",& qtdVeiculos);
	printf("\n Numero de acidentes com vitimas: \n");
	scanf("%d",& acidentes);
	if (acidentes> maior){
		maior=acidentes;
		maiorc=i;
	}	
	if (acidentes< menor){
		menor=acidentes;
		menorc=i;
	}
	media = media + qtdVeiculos;
	if(qtdVeiculos<2000){
		mediaP = mediaP + acidentes;
		cal++;
	}
}
printf("\n O menor indice de acidente eh de %d e pertence a %d \n", menor, menorc);
printf("\n O maior indice de acidente eh de %d e pertence a %d \n", maior, maiorc);
printf("\n A media de veiculos nas 5 cidade eh %d \n", media/5);
printf("\n a media de acidentes em cidades com menos de 2000 veiculos é %d \n", mediaP/cal);

    return 0;
}

