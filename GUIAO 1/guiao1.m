% v1 = [1; 2; 4];
%v2 = 1:2:10;   % start , step , end 

%M = [ 1 3 4; 5 2 6 ; 7 8 9 ; 10 11 12];
%size(M)

%% funções

%rand(4,3)
%rand() % random number ]0;1[

%% simulação de 3 moedas
N = 6;
M = rand(3,N);
lancamentos = M > 0.5; % cria matriz com 1 e 0 , 1 -> maior que 0.5 , 0 -> menor que 0.5
num_caras = sum(lancamentos);  % soma dos numeros da matriz, basicamente soma dos 1's
x = num_caras == 2; % matriz logica , mete 1 se a coluna for 2 ( houver 2 caras )
cfav = sum(x);   % casos favoraveis
p = cfav / N % -> probabilidade








  


