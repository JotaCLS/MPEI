%% Exercicio 1 
%
% 1- x/y    0   2    3
%     1   0.01 0.07 0.02
%     2   0.04 beta 0.08
%     3   0.04 0.15 0.09
%     4   0.01 0.2  0.01
%
%     Cada entrada representa P (x e y)
% 1 a) Qual o valor de beta 

beta = 1 - (0.01+0.07+0.02+0.04+0.08+0.04+0.15+0.09+0.01+0.2+0.01);


% 1 b) Funcao de probabilidade marginal de X e Y 
%    x/y    0   2    3
%     1   0.01 0.07 0.02   0.1  
%     2   0.04 beta 0.08   0.4
%     3   0.04 0.15 0.09   0.28
%     4   0.01 0.2  0.01   0.22
%         0.10 0.70 0.20   1.00
%
%     Probabilidade Marginal de X - Soma de todas as probabilidade de X
%     Probabilidade Marginal de Y - Soma de todas as probabilidade de Y

Prob_marg_X = (0.1 + 0.4 + 0.28 + 0.22);
Prob_marg_Y = (0.1 + 0.7 + 0.2);

% 1 c) Calcule a média e a variancia de X e Y 






