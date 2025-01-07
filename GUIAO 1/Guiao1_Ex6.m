function [] = Guiao1_Ex6(k,n,p,N)
%No processo de fabrico de torneiras com 30% de probabilidade de sair com
%defeito, probabilidade de em 5 3 sairem com defeito
producao = rand(n,N) < p;
sucessos = sum(producao) == k;
probabilidade = sum(sucessos)/N;
fprintf("ProbSimulacao -> %.10f \n", probabilidade);
end
