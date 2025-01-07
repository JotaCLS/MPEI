%% gerar palavras
N = 1e5;
imin = 6;
imax = 20;
alfabeto = ['a':'z' 'A':'Z'];
words = KeyGen(N,imin,imax,alfabeto);

%% criar a tabela
for T = [5e5 1e6 2e6]
    tic
tabela = zeros(1,T);




%% usar a função de hash para cada palavra

hashcodes=zeros(1,N);
atribuicoes = zeros(1,T);

for i=1:N
    hash = string2hash(words{i});
    hash = rem(hash,T)+1;
    hashcodes(i)=hash;
    atribuicoes(hash) = atribuicoes(hash)+1;
end

%% hist
%hist(hashcodes,100);

%% b)

% hist atribuicoes
%hist(atribuicoes);

%% num colisoes
ncol = sum(atribuicoes > 1);
percent = ncol/T * 100;
tempo = toc;
fprintf(1,"T= %d , ncolisions = %d, percent = %.3f, time = %d s\n ",T,ncol,percent,tempo)
tempo = toc;

end
