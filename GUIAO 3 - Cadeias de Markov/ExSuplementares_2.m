%% Exercicios suplementares 2
%% Trabalho realizado em grupo com Rodrigo Aguiar 108969

%       A   B(1)   C(3)    D(5)   E(3)   F(9)  FIM
%   A   0   0       0                           0
%   B  0.5  0                                   
%   C  0.5  0               0.1
%   D   0  1/3      0.6     0.4     0.5     0.3
%   E   0  1/3       0              0.2
%   F   0  1/3      0.4     0.3             0.3
%   FIM 0   0               0.2     0.3     0.4

% a)

T = [0,0,0,0,0,0,0;
    0.5,0,0,0,0,0,0;
    0.5,0,0,0.1,0,0,0;
    0,1/3,0.6,0.4,0.5,0.3,0;
    0,1/3,0,0,0.2,0,0;
    0,1/3,0.4,0.3,0,0.3,0;
    0,0,0,0.2,0.3,0.4,0;];


sum(T);

%b e c)
 


X = T^7; % 7 iteracoes 
Y = 0.5; % probabilidade de comecar em 91
Z = X(7,6); % probabilidade de terminar em 9

prob = Z * Y % Como acabar em 9 nao depende de comecar em 91 



