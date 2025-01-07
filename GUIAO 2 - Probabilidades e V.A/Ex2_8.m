%%  1 erro num livro de 100 paginas
%% media de 2 erros por pagina, 200 erros em 100 paginas 
prob = 0;
lambda = 0.02*100;
for k = 0:1
     prob = prob + ((lambda)^k / factorial(k) * exp(-lambda));
end

prob

