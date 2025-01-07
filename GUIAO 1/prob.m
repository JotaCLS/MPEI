function [] = prob(k,n,p,N)
% CALCULO PROBABILIDADES K CARAS EM N MOEDAS
lancamentos = rand(n,N) > p;
sucessos = sum(lancamentos) == k;
probSimulacao = sum(sucessos)/N
end
