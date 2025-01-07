%% lanc¸amento com os olhos vendados de n dardos, um de cada vez, para m
%%alvos, garantindo-se que cada dardo atinge sempre um alvo (e apenas 1).
m = 100;
n = 20;
N = 1e6;

lancamentos = randi(m,n,N); %% Cria uma matriz n*N com valores de 1 a m

diferentes = zeros(1,N); %% Array de zeros
for col = 1:N %% ciclo for, de 1 ate N 
   diferentes(col) = length(unique(lancamentos(:,col))) == n; %% length = tamanho, unique = 1 se valor for unico,
                                                              %% se o tamanho for igual ao numero de lancamentos unicos
                                                              %% coloca um 1 na matriz diferentes
end
x = diferentes;
c_fav = sum(diferentes);
probabilidade = c_fav / N %% Numero de alvos que foram acertados mais que 1 vez / c possiveis






