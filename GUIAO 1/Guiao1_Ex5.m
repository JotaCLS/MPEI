function [outputArg1] = Guiao1_Ex5(p, n_lancamentos, n_caras, N)
%
lancamentos = rand(n_lancamentos,N) > p;
sucessos= sum(lancamentos)==n_caras;
probSimulacao= sum(sucessos)/N;
end

