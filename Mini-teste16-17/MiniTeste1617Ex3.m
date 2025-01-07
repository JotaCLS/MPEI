%% Exercicio 3
%           
%          Matriz transicao de J para I 
%
%       a   b   c   d   ?   .
%   a  0.7 0.2  0   0   0   0  
%   b  0.2  0  0.3  0   0   0
%   c   0  0.6 0.3  0   0   0 
%   d  0.1 0.2 0.3 0.1  0   0 
%   ?   0   0   0  0.4  1   0
%   .   0   0  0.1 0.5  0   1

% 3 a) Representar a matriz transicao Tji, sabendo que J probabilidade de I
% e escrever a linha da matriz correspondente a cada caracter

T = [0.7,0.2,0,0,0,0; % caracter a
    0.2,0,0.3,0,0,0; % caracter b
     0,0.6,0.3,0,0,0; % caracter c
    0.1,0.2,0.3,0.1,0,0; % caracter d
     0,0,0,0.4,1,0; % caracter ?
     0,0,0.1,0.5,0,1]; % caracter .

%sum(T);

% 3 b) Probabilidade de sendo o primeiro caracter "a" o decimo ser um "c"
% e probababilidade de o quinto ser um "d"

estado_inical_b = [1;0;0;0;0;0]; % comecar em "a"

for i = 2:15 % ate à 15 letra
    estado_inical_b =T*estado_inical_b;
    if i == 10 % quando for a 10 letra 
        estado_c = estado_inical_b(3); % probabiliade de "c"
    end
end

estado_d = estado_inical_b(4); % probabiliade de "d"

fprintf("Ao fim de 10 iteracoes a probabilidade de sair a letra C é: %f \n", estado_c);
fprintf("Ao fim de 15 iteracoes a probabilidade de sair a letra D é: %f \n", estado_d);

% 3 c) Qual a méida (valor esperado) do comprimento das cadeias de
% caracteres comecadas por "c" e terminadas em "?" ou "."







