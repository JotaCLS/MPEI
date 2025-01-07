%%Considere uma fam´ılia com 5 filhos. Sabendo que pelo menos um dos filhos e rapaz, obtenha por ´
%%simulac¸ao uma estimativa para a probabilidade de um dos outros (e apenas um) ser tamb ˜ em rapaz.
%% P(A) = Porbabilidade de sair rapaz sabendo que já ha 1, P(B) = Haverem 2 rapazes 

N = 1e6;
nascimento = rand(5,N);
contagem = nascimento >= 0.5;
num_rapazes = sum(contagem)
y = num_rapazes >= 1;
x = num_rapazes == 2;
c_poss = sum(y);
c_fav = sum(x);
probabilidade = c_fav / c_poss
