% 1º passo - gerar chave
% 2º passo - fazer a hash function
% 3º passo - simular a disperção 

%% a)
N = 1e5;
imin = 6;
imax = 20;
alfabeto = ['a':'z' 'A':'Z'];
%length(alfabeto);
%x=randi([1,length(alfabeto)],1,3);
%alfabeto(x);

words = KeyGen(N,imin,imax,alfabeto);

%% repetidas??
length(unique(words))
