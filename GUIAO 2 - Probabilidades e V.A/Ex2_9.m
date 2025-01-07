media = 14;
desvio_padrao = 2;

%% Variavel continua normal 
%x = randn(1, 1e6); %% ---> Normal ou gaussiana
%y = rand(1, 1e6); %% ---> Continua
%figure(1)
%hist(y,100)
%figure(2)
%hist(x, 100)

% X + media
%z = x + 14;
%figure(3)
%hist(z,100)

% X * sigma, sigma = sqrt(variancia)
%y = x *2;
%figure(4)
%hist(y,100)

%% a) Aluno obter nota entre 12 e 16

N = 1e6
x = randn(1, N);
y = x*desvio_padrao + media;
%hist(y, 100);

alunos_classificados = y >= 12 & y<= 16;

prob = sum(alunos_classificados) / N

%%

pt = normcdf(16,14,2) - nomrcdf(12,14,2); % Notas ate 16 - notas ate 12 ,, normcdf(nota, media, desvio_padrao)

%% b) Alunos terem classificaçao entre 10 e 18

porb_b = sum(y>= 10 & y<=18) / N


%% c) Aluno ter classificaçao >= 10

prob_c = sum(y>=10) / N 



