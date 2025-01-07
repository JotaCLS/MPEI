%% Ex 7
%% Trabalho realizado em grupo com Rodrigo Aguiar 108969

%% a)Matriz H

%       A   B   C   D   E   F
%   A   0   0   0   0  1/3  0
%   B   1   0   0   0  1/3  0
%   C   0  0.5  0   1   0   0
%   D   0   0   1   0   0   0
%   E   0  0.5  0   0   0   0
%   F   0   0   0   0  1/3  0

n=6;

H = [0,0,0,0,1/3,0;
     1,0,0,0,1/3,0;
     0,0.5,0,1,0,0;
     0,0,1,0,0,0;
     0,0.5,0,0,0,0;
     0,0,0,0,1/3,0];

estado_inicial = [1/6;1/6;1/6;1/6;1/6;1/6];
estado_final_10= estado_inicial;

for i = 1:10
    estado_final_10 = H*estado_final_10;
end

estado_final_10






%% b)

% Dead end em F
%Spider trap em C e D

%% c)Alterar a matriz H para acabar com o dead-end


%       A   B   C   D   E   F
%   A   0   0   0   0  1/3 1/6_______Cria-se uma distribuicao para todos o
%   B   1   0   0   0  1/3 1/6
%   C   0  0.5  0   1   0  1/6
%   D   0   0   1   0   0  1/6
%   E   0  0.5  0   0   0  1/6
%   F   0   0   0   0  1/3 1/6


H_novo = [0,0,0,0,1/3,1/6;
     1,0,0,0,1/3,1/6;
     0,0.5,0,1,0,1/6;
     0,0,1,0,0,1/6;
     0,0.5,0,0,0,1/6;
     0,0,0,0,1/3,1/6;];

estado_final_10_novo = estado_inicial;
for i = 1:10
    estado_final_10_novo = H_novo*estado_final_10_novo;
end

estado_final_10_novo

%% d)Acabar com o dead end e com a spider trap

%       A   B   C   D   E   F
%   A   0   0   0   0  1/3 1/6
%   B   1   0   0   0  1/3 1/6
%   C   0  0.5  0   1   0  1/6
%   D   0   0   1   0   0  1/6
%   E   0  0.5  0   0   0  1/6
%   F   0   0   0   0  1/3 1/6

beta = 0.8;

matriz_n = ones(6,6)/n;

A = (0.8 * H_novo) +(0.2*matriz_n);  

estado_final_10_A = estado_inicial;

for i = 1:10
    estado_final_10_A = A*estado_final_10_A;
end

estado_final_10_A


%% e)

iter = 0;
x = A;
epsilon = 10^-4;


%% Funcao do stor, nao percebi muito bem oq que faz
while (1)
    xold = x;
    x= x*A;
    if max(abs(x-xold)) < epsilon
        break;
    end
    iter = iter +1;
end
fprintf(1,'iteracao %d\n', iter);








