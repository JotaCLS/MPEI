
Sx = [0, 1, 2, 3, 4];


%% Ex1
prob = 0.5;
N = 1e6;
moedas = rand(4, N);
contagem = moedas >= 0.5;
num_coroas = sum(contagem);
x_0 = num_coroas == 0;
x_1 = num_coroas == 1;
x_2 = num_coroas == 2;
x_3 = num_coroas == 3;
x_4 = num_coroas == 4;


prob_0 = sum(x_0)/N;
prob_1 = sum(x_1)/N;
prob_2 = sum(x_2)/N;
prob_3 = sum(x_3)/N;
prob_4 = sum(x_4)/N;


px = [prob_0, prob_1, prob_2, prob_3, prob_4]

%% Ex2
valor_esperado = sum(Sx.*px) % Media = Sx.* matriz de probabilidades

variancia = sum((Sx.^2).*px) - valor_esperado^2 % Var(x) = E(x^2) - (E(x))^2 

desvio_padrao = sqrt(variancia)

%% Ex3

%%Distribuicao Binomial
%%Expressao teorica --> https://imgur.com/a/d1NDcbA

%% Ex4


forma_binominial_0 = nchoosek(4, 0)*0.5^0*(1-0.5)^(4-0);
forma_binominial_1 = nchoosek(4, 1)*0.5^1*(1-0.5)^(4-1),
forma_binominial_2 = nchoosek(4, 2)*0.5^2*(1-0.5)^(4-2);
forma_binominial_3 = nchoosek(4, 3)*0.5^3*(1-0.5)^(4-3);
forma_binominial_4 = nchoosek(4, 4)*0.5^4*(1-0.5)^(4-4);


%% Ex5

valor_esperado_teorico = sum(Sx)/length(Sx)
variancia = 