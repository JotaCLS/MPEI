%% Exercicio 2

%2 a






%2 b
n = 15000;
B = innitBloomFilter(n);
alfabeto = ['a':'z'];
Palavras = KeyGen(400,6,10,alfabeto); % gerar 400 palavras de 6 ou 10 length
boleano = 0;
k=1;

for i = 1:length(Palavras)
    B = Insert (B,Palavras{i},3,n); % inserir palavras 1 a 1
end

for i = 1:length(Palavras)
    boleano = boleano + Verificar (B,Palavras{i},k,n); % inserir palavras 1 a 1
end

falsos_positivos =(boleano-400)/length(Palavras);
