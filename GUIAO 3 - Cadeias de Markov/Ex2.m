%% Exercicio 2
%% Trabalho realizado em grupo com Rodrigo Aguiar 108969
format short
%% a)

matriz_estados = [1/3 1/4 0
                  1/3 11/20 1/2     
                  1/3 1/5 1/2];

%% Verificar se é estocástica
sum(matriz_estados);


%% b)
matriz_estado_b = [60/90
                   15/90 
                   15/90];

%% c)

matriz_estado_c = [60/90
                   15/90
                   15/90];

n_saltos_c = 30;

matriz_estado_c_final = matriz_estados^n_saltos * matriz_estado_c;
n_alunos_c = round(matriz_estado_c_final*90)


%% d)

matriz_estados_d = [1/3
                    1/3
                    1/3];

n_saltos_d = 30;

matriz_estados_d_final = matriz_estados^n_saltos * matriz_estados_d;
n_alunos_d = round(matriz_estados_d_final*90)

