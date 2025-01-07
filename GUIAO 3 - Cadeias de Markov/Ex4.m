%% Exercicio 4
%% Trabalho realizado em grupo com Rodrigo Aguiar 108969

%% a)

q = 0.6;
p = 0.4;

T = [p^2, 0, 0, q^2;
    (1-p)^2, 0, 0, q*(1-q);
    p*(1-p), 0, 0, q*(1-q);
    p*(1-p), 1, 1, (1-q)^2];


%% b)

vetor_estado_A = [1;0;0;0];

V2 = T^5 * vetor_estado_A; % Para 5 iteracoes

V3 = T^10 * vetor_estado_A; % Para 10 iteracoes

V4 = T^20 * vetor_estado_A; % Para 20 iteracoes

V5 = T^100 * vetor_estado_A; % Para 100 iteracoes


%% c) Probabilidades Limite ou estado estacionario 

M = [T - eye(4); % Matriz T - Identidade e acrescenta-se uma linha de 1´s no final
    ones(1,4)];

B = [zeros(4,1); % Matriz B é matriz de 0´s com ultima linha com 1
    1];

U = M \ B % (M-Ide) * U = B <=> U = M \ B


