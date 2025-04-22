#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	int ch;
	int a=0, b=0, c=0, d=0,e=0,f=0,g=0,h=0,i=0,j=0,k=0,l=0,m=0,n=0,o=0,p=0,q=0,r=0,s=0,t=0,u=0,v=0,w=0,x=0,y=0,z=0;
	char caminho[] ="arqs\\Lorem_Ipsum.txt";
	FILE *arquivo = fopen (caminho, "r");
	if (arquivo == NULL){
		printf("Erro na abertura do arquivo");
		exit (1);
	}
	while ((ch = fgetc(arquivo)) != EOF){
		switch (ch) {
	            case 'a': a++; break;
	            case 'b': b++; break;
	            case 'c': c++; break;
	            case 'd': d++; break;
	            case 'e': e++; break;
	            case 'f': f++; break;
	            case 'g': g++; break;
	            case 'h': h++; break;
	            case 'i': i++; break;
	            case 'j': j++; break;
	            case 'k': k++; break;
	            case 'l': l++; break;
	            case 'm': m++; break;
	            case 'n': n++; break;
	            case 'o': o++; break;
	            case 'p': p++; break;
	            case 'q': q++; break;
	            case 'r': r++; break;
	            case 's': s++; break;
	            case 't': t++; break;
	            case 'u': u++; break;
	            case 'v': v++; break;
	            case 'w': w++; break;
	            case 'x': x++; break;
	            case 'y': y++; break;
	            case 'z': z++; break;
	    }
    }
	fclose(arquivo);

    printf("Contagem de letras:\n");
    printf("a: %d\nb: %d\nc: %d\nd: %d\ne: %d\nf: %d\ng: %d\nh: %d\ni: %d\n", a, b, c, d, e, f, g, h, i);
    printf("j: %d\nk: %d\nl: %d\nm: %d\nn: %d\no: %d\np: %d\nq: %d\nr: %d\ns: %d\n", j, k, l, m, n, o, p, q, r, s);
    printf("t: %d\nu: %d\nv: %d\nw: %d\nx: %d\ny: %d\nz: %d\n", t, u, v, w, x, y, z);

    return 0;
}
