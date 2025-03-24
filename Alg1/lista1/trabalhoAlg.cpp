//Programadores:
//Ricky Willian Ferraz da Silva    12011BSI262
//Tiago Francisco Rodrigues Miranda    12021BSI213

#include <stdio.h>
#include <locale.h>

// funçao para inicializar o ônibus atribundo 0 as poutronas desocupadas
void inicializarOnibus(int linhas, int colunas, int poltronas[10][4]) {
    for (int i = 0; i < linhas; i++) {
        for (int j = 0; j < colunas; j++) {
            poltronas[i][j] = 0;
        }
    }
    printf("Onibus inicializado com sucesso!\n");
}

// funçao para exibir o estado atual das poltronas em forma de matiz
void exibirOnibus(int linhas, int colunas, int poltronas[10][4]) {
    printf("\nStatus das poltronas (0 = Livre, 1 = Ocupada):\n\n");
    printf("     JE   CE   CD   JD\n");  // Exibe filas correspondentes 

    for (int i = 0; i < linhas; i++) {
        for (int j = 0; j < colunas; j++) {
            printf("  %d   ", poltronas[i][j]);  // Mostra o status de cada poltrona
        }
        printf("\n");
    }
    printf("\n");
}

// Funçao para preencher a poltrona desejada pelo usuário, verificando se já está ocupada.
void preencherPoltrona(int linhas, int colunas, int poltronas[10][4]) {
    int fila, coluna;
    char confirmacao;

    printf("Informe a fila (1 a %d): ", linhas);
    scanf("%d", &fila);
    printf("Escolha a posiçao (1 = JE, 2 = CE, 3 = CD, 4 = JD): ");
    scanf("%d", &coluna);

    if (fila < 1 || fila > linhas || coluna < 1 || coluna > colunas) {
        printf("Posiçao invalida. Por favor, tente novamente.\n");
        return;
    }

    fila -= 1;
    coluna -= 1;

    if (poltronas[fila][coluna] == 1) {
        printf("Essa poltrona já está ocupada.\n");
    } else {
        printf("A poltrona na Fila %d, Coluna %d esta disponível. Deseja reserva-la? (S/N): ", fila + 1, coluna + 1);
        scanf(" %c", &confirmacao);

        if (confirmacao == 'S' || confirmacao == 's') {
            poltronas[fila][coluna] = 1;
            printf("Poltrona reservada com sucesso!\n");
        } else {
            printf("Reserva cancelada.\n");
        }
    }
}

// Funçao para exibir a lista completa de poltronas ocupadas e desocupadas.
void listarPoltronas(int linhas, int colunas, int poltronas[10][4]) {
    exibirOnibus(linhas, colunas, poltronas);
}

// Funçao para listar as poltronas ocupadas e contar quantas estão reservadas.
void listarPoltronasOcupadas(int linhas, int colunas, int poltronas[10][4]) {
    int count = 0;
    printf("Lista de Poltronas Ocupadas:\n");

    for (int i = 0; i < linhas; i++) {
        for (int j = 0; j < colunas; j++) {
            if (poltronas[i][j] == 1) {
                printf("Fila %d - Coluna %d (Ocupada)\n", i + 1, j + 1);
                count++;
            }
        }
    }
    printf("Total de poltronas ocupadas: %d\n", count);
}

// Funçao para listar as poltronas desocupadas e contar quantas estão livres.
void listarPoltronasDesocupadas(int linhas, int colunas, int poltronas[10][4]) {
    int count = 0;
    printf("Lista de Poltronas Livres:\n");

    for (int i = 0; i < linhas; i++) {
        for (int j = 0; j < colunas; j++) {
            if (poltronas[i][j] == 0) {
                printf("Fila %d - Coluna %d (Livre)\n", i + 1, j + 1);
                count++;
            }
        }
    }
    printf("Total de poltronas livres: %d\n", count);
}

// Funçao para calcular e exibir a porcentagem de lugares ocupados e desocupados.
void calcularPorcentagens(int linhas, int colunas, int poltronas[10][4]) {
    int ocupadas = 0;
    int total = linhas * colunas;

    for (int i = 0; i < linhas; i++) {
        for (int j = 0; j < colunas; j++) {
            if (poltronas[i][j] == 1) {
                ocupadas++;
            }
        }
    }

    float percentualOcupadas = (ocupadas * 100.0) / total;
    float percentualDesocupadas = 100.0 - percentualOcupadas;

    printf("Porcentagem de lugares ocupados: %.2f%%\n", percentualOcupadas);
    printf("Porcentagem de lugares livres: %.2f%%\n", percentualDesocupadas);
}

int main() {
    setlocale(LC_ALL, "portuguese");

    int linhas = 10;
    int colunas = 4;
    int poltronas[10][4];
    int opcao;

    do {
        printf("\nMenu de Opções:\n");
        printf("1 - Inicializar o ônibus.\n");
        printf("2 - Reservar uma poltrona.\n");
        printf("3 - Exibir todas as poltronas (ocupadas e livres).\n");
        printf("4 - Exibir somente as poltronas ocupadas e quantidade.\n");
        printf("5 - Exibir somente as poltronas livres e quantidade.\n");
        printf("6 - Mostrar porcentagem de ocupaçao e disponibilidade.\n");
        printf("7 - Sair do programa.\n");
        printf("Escolha uma opçao: ");
        scanf("%d", &opcao);

        switch (opcao) {
            case 1:
                inicializarOnibus(linhas, colunas, poltronas);
                exibirOnibus(linhas, colunas, poltronas);
                break;
            case 2:
                preencherPoltrona(linhas, colunas, poltronas);
                break;
            case 3:
                listarPoltronas(linhas, colunas, poltronas);
                break;
            case 4:
                listarPoltronasOcupadas(linhas, colunas, poltronas);
                break;
            case 5:
                listarPoltronasDesocupadas(linhas, colunas, poltronas);
                break;
            case 6:
                calcularPorcentagens(linhas, colunas, poltronas);
                break;
            case 7:
                printf("Encerrando o programa.\n");
                break;
            default:
                printf("Opção invalida. \n");
                break;
        }
    } while (opcao != 7);

    return 0;
}

