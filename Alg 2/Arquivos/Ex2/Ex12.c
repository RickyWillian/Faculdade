#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	int a = 0, b = 0, cc = 0, d = 0, e = 0, f = 0, g = 0, h = 0, i = 0, j = 0,
        k = 0, l = 0, m = 0, n = 0, o = 0, p = 0, q = 0, r = 0, s = 0, t = 0,
        u = 0, v = 0, w = 0, x = 0, y = 0, z = 0;
	int c, contLet = 0, contLin = 0, contPal = 0;
	char *palavra;
	char linha [200];
	FILE *arquivo;
	arquivo = fopen ("arqs\\Lorem_Ipsum.txt","r");
	if(arquivo == NULL){
		printf("Erro ao abrir arquivo");
		exit(1);
	}
	while ((c = fgetc(arquivo))!= EOF){
		if (c != ' ')
			contLet++;
			switch (c) {
        case 'a':
            a++;
            break;
        case 'b':
            b++;
            break;
        case 'c':
            cc++; 
            break;
        case 'd':
            d++;
            break;
        case 'e':
            e++;
            break;
        case 'f':
            f++;
            break;
        case 'g':
            g++;
            break;
        case 'h':
            h++;
            break;
        case 'i':
            i++;
            break;
        case 'j':
            j++;
            break;
        case 'k':
            k++;
            break;
        case 'l':
            l++;
            break;
        case 'm':
            m++;
            break;
        case 'n':
            n++;
            break;
        case 'o':
            o++;
            break;
        case 'p':
            p++;
            break;
        case 'q':
            q++;
            break;
        case 'r':
            r++;
            break;
        case 's':
            s++;
            break;
        case 't':
            t++;
            break;
        case 'u':
            u++;
            break;
        case 'v':
            v++;
            break;
        case 'w':
            w++;
            break;
        case 'x':
            x++;
            break;
        case 'y':
            y++;
            break;
        case 'z':
            z++;
            break;
    	}
	}
	rewind(arquivo);
	while (fgets(linha, sizeof(linha), arquivo)!= NULL){
		contLin++;
		
		linha[strcspn(linha, "\n")] = '\0';
		palavra = strtok(linha, " ");
		while (palavra != NULL) {
            contPal++;
            palavra = strtok(NULL, " ");
        }
	}
	
	printf("o arquivo contem %d letras\n", contLet);
	printf("o arquivo contem %d linhas\n", contLin);
	printf("o arquivo contem %d palavras\n", contPal);
	printf("contagem das letras:\n");
    printf("a: %d\n", a);
    printf("b: %d\n", b);
    printf("c: %d\n", cc);
    printf("d: %d\n", d);
    printf("e: %d\n", e);
    printf("f: %d\n", f);
    printf("g: %d\n", g);
    printf("h: %d\n", h);
    printf("i: %d\n", i);
    printf("j: %d\n", j);
    printf("k: %d\n", k);
    printf("l: %d\n", l);
    printf("m: %d\n", m);
    printf("n: %d\n", n);
    printf("o: %d\n", o);
    printf("p: %d\n", p);
    printf("q: %d\n", q);
    printf("r: %d\n", r);
    printf("s: %d\n", s);
    printf("t: %d\n", t);
    printf("u: %d\n", u);
    printf("v: %d\n", v);
    printf("w: %d\n", w);
    printf("x: %d\n", x);
    printf("y: %d\n", y);
    printf("z: %d\n", z);
	fclose(arquivo);
	
	return 0;
}
