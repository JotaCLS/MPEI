%% Exercicios suplementares 3
%% Trabalho realizado em grupo com Rodrigo Aguiar 108969

T = [0,1,0,0,0,0;
    1/2,0,0,0,1/2,0;
    1/2,0,0,1/2,0,0;
    0,0,1,0,0,0;
    1/4,1/4,1/4,1/4,0,0;
    0,0,0,1,0,0;];

A = (T * 0.85) + ((ones(6,6)/6)*0.15);


iter = 0;
x = A;
epsilon = 10^-2;


%% 
while (1)
    xold = x;
    x= x*A;
    if max(abs(x-xold)) < epsilon
        break;
    end
    iter = iter +1;
end
fprintf(1,'iteracao %d\n', iter);


x = sum(x); %% pagerank- quantos mais link tiver para outra pagina, maior o pagerank
[M,I] = max(x(:));
[m,i] = min(x(:));

fprintf("A pagina com maior pagerank é %d, com pagerank de %f\n", I, M);
fprintf("A pagina com menor pagerank é %d, com pagerank de %f\n", i, m);

