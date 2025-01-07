function [Set,Nu] = MakeSets(ficheiro)
udata=load(ficheiro);
u= udata(1:end,:);   
clear udata;
% Lista de utilizadores
frases = u(1:end,:); % Extrai a frase
Nu= 4; % Número de frases
% Constrói a lista de filmes para cada utilizador
Set= cell(Nu,1); % Usa ce´lulas
for n = 1:Nu % Para cada utilizador
% Obtém os filmes de cada um
    ind = find(u(:,1) == frases(n));
% E guarda num array. Usa células porque utilizador tem um número
% diferente de filmes. Se fossem iguais podia ser um array
    Set{n} = [Set{n} u(ind,2)];
end
end