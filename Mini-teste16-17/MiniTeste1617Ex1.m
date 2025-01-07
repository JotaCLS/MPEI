%% Exercicio 1 
% Se o pacote anterior nao contem erros, o pacote seguinte contem erro com
% prob 0.09 e contem 2 erros com prob 0.01
% Se o pacote anterior contem erros , o pacote seguinte contem um erro com
% probabilidade 0.4 e contem 2 ou mais erros com prob 0.1
%
%           Naoerro 1Erro   2+   Sabendo que 
%   Nao erro  0.9    0.5   0.5   Nao haver erro
%     1Erro   0.09   0.4   0.4   Haver apenas 1 erro
%      2+     0.01   0.1   0.1   Haver 2 ou mais erros
%       
%
%


%1 a) Matriz T e vetor relativo ao estado inical 

T = [0.9, 0.5, 0.5; % Matriz T
     0.09, 0.4, 0.4;
     0.01, 0.1, 0.1];

if sum(T) == [1,1,1]
    fprintf ("A matriz é estocástica \n");
end

estado_inicial = [0; 0 ; 1]; % matriz estado incial (3 erros)

%1 b) Probabilidade de o 4 pacote conter 0 , 1 ou 2+ erros

estado_b = estado_inicial;
for i = 2:4
    estado_b = T * estado_b;
end

fprintf ("Ao fim de 4 codigos, a probabilidade de: \n 0 erros: %f \n 1 erro: %f \n 2+ erros: %f \n", estado_b(1), estado_b(2), estado_b(3))

%1 c) Probabilidade estacionaria dos estados, calculando a probabilidade de
%cada estado ate à diferenca entre o ultimo e o anterior nao seja superior
%a 0.001.


for i = 1:1000
    T_old = T;
    T = T * T;
    if max(abs(T-T_old)) < 0.001
        break
    end
end

fprintf("O estado estacionario obtem-se na %i iteracao \n", i)
fprintf("No estado estacionario, a probabilidade de perda de pacote é: %f \nA probabilidade de perda de pacote sem o corretor de erros é: %f\n", estado_c(3), estado_c(2) + estado_c(3));






