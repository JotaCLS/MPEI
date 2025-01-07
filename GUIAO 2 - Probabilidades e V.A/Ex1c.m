%% Numa familia com filhos calcular a probabilidade de em 2 filhos, pelo menos 1 rapaz
%% Sabendo que 1 ja é rapaz

N = 1e6;
nascimento = rand(2,N);
contagem = nascimento >= 0.5;
num_rapazes = sum(contagem);
y = num_rapazes >= 1;
x = num_rapazes == 2;
c_poss = sum(y);
c_fav = sum(x);
probabilidade = c_fav / c_poss