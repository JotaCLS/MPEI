%% Filtros de Bloom

% Sendo dado um conjunto C, e tendo um array N 
%com tamanho maior que o conjunto C e inicializado 
%a 0, aplicando uma ou mais hash functions, 
%vai se mudando os indices do vetor N, consoante
%os resultados de aplicacao das hash functions 
%ao conjunto C.
% No final cada elemento vai gerar K valores no 
%vetor N, sendo K o numero de hash functions.
% Se os K valores gerados pelo elemento forem 1,
%podemos dizer que é muito provavel o elemento
%pertencer a C, pois podemos ter falsos positivos
%basta duas funcoes gerarem o mesmo hash code para 
%termos um falso positivo
% se algum desses valores é 0, 
%dizemos com certeza que o elemento nao pertence a C
%pois nao ha falsos negativos.
