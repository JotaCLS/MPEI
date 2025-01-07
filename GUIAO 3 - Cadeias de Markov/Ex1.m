%% Exercicio 1
%% Trabalho realizado em grupo com Rodrigo Aguiar 108969
%% a)

matriz_probabilidades = [0.7 0.8
                         0.3 0.2];

%% verificar se é estocástica (soma das colunas = 1)
sum(matriz_probabilidades);
                
matriz_estado_a = [1  %ir
                 0]; %nao ir 
matriz_estado_a_1 = matriz_probabilidades * matriz_estado_a;
matriz_estado_a_2 = matriz_probabilidades * matriz_estado_a_1

%% b)

matriz_estado_b = [0  %ir
                   1]; %nao ir

matriz_estado_b_2 = matriz_probabilidades * matriz_estado_b;

matriz_estado_b_3 = matriz_probabilidades * matriz_estado_b_2

%% c)

matriz_estado_c = [1
                   0];
n_saltos = 29;
matriz_estado_c_1 = matriz_probabilidades^n_saltos * matriz_estado_c

%% d)

matriz_estado_d = [0.85
                   0.15];

n_saltos = 29
prob(1) = matriz_estado_d(2)

for aula = 2:30
    matriz_estado_d_i = matriz_probabilidades^aula * matriz_estado_d

    prob(aula) = matriz_estado_d_i(2) % so vai buscar quando falta (2 linha)
end


plot(1:30, prob,"bo")





