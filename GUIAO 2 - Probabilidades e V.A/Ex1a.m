%% Numa familia com filhos calcular a probabilidade de em 2 filhos, pelo menos 1 rapaz

N = 10;
nascimento = rand(2, N); % Simula o nascimento de 2 pessoas N vezes
contagem = nascimento >= 0.5; % Matriz logica dos valores acima ou igual a 0,5 (nascer rapaz)
num_rapazes = sum(contagem); % Soma os numeros da matriz  
x = num_rapazes >= 1; % Matriz logica quando o valor é 1 ou 2
c_fav = sum(x); % Soma todos os casos possiveis, soma a matriz x;
probabilidade = c_fav / N % Calcula a probabilidade;


