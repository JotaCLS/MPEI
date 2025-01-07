%% a)

%% lei_poisson = e^(-n*p) * (n*p)^x / factorial(x) ,  (n*p) --> Lambda

lambda = 15/1;
lei_poisson_a = (lambda)^0 / factorial(0) * exp(-lambda)

%% b)
prob = 0;
for k = 0:10
    prob = prob + ((lambda)^k / factorial(k) * exp(-lambda));
end
%% probabilidade de ter 10 ou menos 
%% mas queremos a probabilidade de ter mais de 10, 1 - p(<=10)
prob_b = 1 - prob



