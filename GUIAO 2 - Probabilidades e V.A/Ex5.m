%%Considere um dado de seis faces numeradas de 1 a 6 lanc¸ado 2 vezes
%% A = soma de dois valores == 9
%% B = 2º é par
%% Pelo menos 1 cinco
%% D = nenhum valor igual a 1

N = 1e6;
n_lancamentos = 2;

%% A

lancamento = randi([1, 6], n_lancamentos, N);
matriz_soma = sum(lancamento);
soma_9_logical = matriz_soma == 9;
c_fav_A = sum(soma_9_logical);
prob_A = c_fav_A / N 


%% B

matriz_par = mod(lancamento(2,:), 2) == 0;
c_fav_B = sum(matriz_par);
prob_B = c_fav_B / N 

%% C

matriz_5 = lancamento == 5;
matriz_5_logical = sum(matriz_5);
c_fav_C = (matriz_5_logical) >= 1;
prob_C = sum(c_fav_C) / N 

%% D

matriz_not1 = lancamento ~= 1;
c_fav_D = sum(matriz_not1) == 2;
prob_D = sum(c_fav_D) / N


%% Determinar se 2 acontecimentos sao independentes teoricamento
%% P(AxB) = P(A) * P(B)
%% P(AXB) = 2/36  // P(A) = 4/36 E P(B) = 1/2 // P(A) * P(B) = 2/36
%% Sao independentes
%% P(CxD) = P(C) * P(D) 
%% P(CxD) = 9/36 = 0,25 // P(C) = 11/36 E P(D) = 25/36 // P(C) * P(D) = 0,21
%% Nao sao independentes






