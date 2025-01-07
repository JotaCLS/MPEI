% Sugestao: Criar pelo menos 3 func¸ ˜ oes [1, sec. 3.2]: uma para inicializar a estrutura de dados; outra para ˜
%inserir um elemento (ou elementos) no filtro; uma terceira para verificar se um elemento pertence ao conjunto.

% 1º - inicializar bloom filter (n,k) -> returns F (vetor do filtro)
% 2º - inserir ( F, elem , [n] , [m] , k ) -> returns F ( filtro
% atualizado)
% 3º - verificar ( F , elem , [n] , [m] , k ) 

%% 1)

n = 8000;
k = 3;
alfabeto = ['a':'z' 'A':'Z'];
boleano = 0;
falsos_positivos = 0;
B = innitBloomFilter(n);
Palavras = KeyGen(1000,5,10,alfabeto); % gerar 1000 palavras de 5 a 10 length
for i = 1:length(Palavras)
    B = Insert (B,Palavras{i},3,n); % inserir palavras 1 a 1
end
disp("B tem " +sum(B) + " elementos")
disp("Houve " + abs(sum(B)-length(Palavras)*k) + " colisões")
for i = 1:length(Palavras)
    boleano = boleano + Verificar (B,Palavras{i},k,n); % inserir palavras 1 a 1
end
disp("Numero de elementos que pertencem ao conjunto (devem ser 1000) -> " + boleano)

U2 = KeyGen(10000,5,10,alfabeto);
for i = 1:length(U2)
    boleano = boleano + Verificar(B,U2{i},k,n);
end
disp("Numero de elementos do U2 que pertencem ao conjunto -> " + boleano)
disp("Falsos positivos = " + (boleano-1000)/length(U2)*100 + " %")
falsos_positivos_teorico = ((1-exp(-k*length(Palavras)/n)).^k)*100











