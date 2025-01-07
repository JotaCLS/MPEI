%% Exercicio 3
%% Trabalho realizado em grupo com Rodrigo Aguiar 108969

%% Cadeira aleatoria de 20 estados

matriz_estados = rand(20); %% aleatorio

x = sum(matriz_estados); %% nao é estocastica

x2 = matriz_estados./repmat(x, 20, 1); %% Divide todos os numeros da coluna pela soma da mesma 

x3 = sum(x2)

