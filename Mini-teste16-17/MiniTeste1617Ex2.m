%% Exercicio 2 
%  PageRank
%       C   D   E   F   G
%   C   0  0.5 1/3 1/4  0 
%   D  0.5  0   0  1/4 0.5
%   E  0.5 0.5 1/3 1/4  0
%   F   0   0   0   0  0.5
%   G   0   0  1/3 1/4  0
%
%
%

% 2 a) Definir a matriz da Google A = βH + (1 − β)[ 1/N ]
% H é a matriz HyperLinks 
% Beta = 0.8 
% 1/N é uma matriz N por N com todas as entrada 1/N em que N é o nr paginas

H = [0, 0.5, 1/3, 1/4 0; % Matriz HyperLinks
    0.5, 0, 0, 1/4, 0.5;
    0.5, 0.5, 1/3, 1/4, 0;
     0, 0, 0, 0, 0.5;
     0, 0, 1/3, 1/4, 0];

beta = 0.8;

N = 5;

matriz_N = ones(N,N)/N;

A = beta * H + (1 - beta) * matriz_N

% 2 b) Usando a matriz A, qual o page rank ao fim de 10 iteracoes
% considere o estado inical 1/n para todas as paginas

estado_inicial = [1/N;1/N;1/N;1/N;1/N];

estado_final_10 = estado_inicial;

for i = 1:10
    estado_final_10 = A*estado_final_10;
end

fprintf("Ao fim de 10 iteracoes \n A pagina C tem pagerank: %f \n A pagina D tem pagerank: %f \n A pagina E tem pagerank: %f \n A pagina F tem pagerank: %f \n A pagina G tem pagerank: %f\n", estado_final_10(1),estado_final_10(2),estado_final_10(3),estado_final_10(4),estado_final_10(5));



