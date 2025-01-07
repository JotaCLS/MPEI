%% a)
N = 1e4;
nascimento = rand(8000,N);
amostras = nascimento <= 0.0008;
num_erros = sum(amostras);
num_erros_7 = num_erros == 7;
prob = sum(num_erros_7) / N % Práticamente


%% forma_binominial_0 = nchoosek(n, x)*p^x*(1-p)^(n-x);
forma_binominial_0 = nchoosek(8000, 7)*0.001^7*(1-0.001)^(8000-7); % Teoricamente


%% b)


%% lei_poisson = e^(-n*p) * (n*p)^x / factorial(x) ,  (n*p) --> Lambda
lei_poisson = exp(-8000*0.001) * (8000*0.001)^7 / factorial(7)






