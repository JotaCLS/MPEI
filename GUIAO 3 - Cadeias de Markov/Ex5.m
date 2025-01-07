%% Exercicio 5
%% Trabalho realizado em grupo com Rodrigo Aguiar 108969

% a)

T = [0.7, 0.3, 0.2; % fazer sol
     0.1, 0.4, 0.5; % fazer chuva
     0.2, 0.3, 0.3]; % fazer nuvens


% b) Sol --> Sol --- > Sol

vetor_estado_A = [1;0;0];

matriz_estado_sol_2 = T * vetor_estado_A; % Primeiro Dia

matriz_estado_sol_3 = T * vetor_estado_A; % Segundo Dia

prob_sol = matriz_estado_sol_2 (1) * matriz_estado_sol_3 (1) % Sao independentes



% c) Sabendo que sol --> nao chuva --> nao chuva = 1- Sabendo que sol -->
% chuva -- > chuva

vetor_estado_c = [1;0;0]; % estado inicial 

matriz_estado_chuva_2 = T * vetor_estado_c;

vetor_estado_c_2 = [0;1;0]; % estado de chuva no 2 dia

matriz_estado_chuva_3 = T * vetor_estado_c_2

prob_nao_chuva = 1 - (matriz_estado_chuva_3(2) * matriz_estado_chuva_2(2)) % 1- sol-->chuva-->chuva



% d) Sabendo que 1 = sol, média de sol , nuvens e chuva durante o mees de
% janeiro

vetor_estado_D = [1;0;0];

dia_sol= 1;
dia_chuva = 0;
dia_nuvens = 0;

for i = 2:31 % primeiro dia ja temos, por isso comeca em 2
    vetor_estado_D = T * vetor_estado_D

    dia_sol = dia_sol + vetor_estado_D(1);
    dia_chuva = dia_chuva + vetor_estado_D(2);
    dia_nuvens = dia_nuvens + vetor_estado_D(3);
end
    
% e)

vetor_estado_D = [0;1;0];

dia_sol_e = 0;
dia_chuva_e = 1;
dia_nuvens_e = 0;

for i = 2:31 % primeiro dia ja temos, por isso comeca em 2
    vetor_estado_D = T * vetor_estado_D;

    dia_sol_e = dia_sol + vetor_estado_D(1);
    dia_chuva_e = dia_chuva + vetor_estado_D(2);
    dia_nuvens_e = dia_nuvens + vetor_estado_D(3);
end


% f)
%Quando o primeiro dia é de sol
prob_dores = (dia_sol * 0.10) + (dia_nuvens * 0.3) + (dia_chuva * 0.5)

%Quando o primeiro dia é de chuva

prob_dores_e = (dia_sol_e * 0.10) + (dia_nuvens_e * 0.3) + (dia_chuva_e * 0.5)



 





