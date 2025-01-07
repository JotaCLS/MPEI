%% Exercicios extra

%% Exercicio 6 alinea f exprimental
T = [0.8,0,0.3,0,0;
     0.2,0.6,0.2,0,0;
     0,0.1,0.4,0,0;
     0,0.3,0,1,0;
     0,0,0.1,0,1;];



soma = 0;
nexp=1e3;
for iter = 1:nexp
    state = crawl(T, 1, [4 5]);
    num_trans = length(state)-1;
    soma = soma+num_trans;   
end
fprintf(1, "Comecando em 1 %.3f saltos em media ate cair num estado absorvente\n", soma/iter);
for iter = 1:nexp
    state = crawl(T, 2, [4 5]);
    num_trans = length(state)-1;
    soma = soma+num_trans;
end
fprintf(1, "Comecando em 2 %.3f saltos em media ate cair num estado absorvente\n", soma/iter);
for iter = 1:nexp
    state = crawl(T, 4, [4 5]);
    num_trans = length(state)-1;
    soma = soma+num_trans;
end
fprintf(1, "Comecando em 4 - %.3f saltos em media ate cair num estado absorvente\n", soma/iter);


%% Exercicio 6 alinea g exprimental
estado_1 = [1;0;0;0;0];
for iter = 1:nexp
    estado_1 = T * estado_1;
    posicao_3 = estado_1(4);
end
fprintf(1, "Probabilidade de comecando em 1 absorver em 3 - %.3f\n", posicao_3 )

estado_1 = [1;0;0;0;0];
for iter = 1:nexp
    estado_1 = T * estado_1;
    posicao_5 = estado_1(5);
end
fprintf(1, "Probabilidade de comecando em 1 absorver em 5 - %.3f\n", posicao_5 )


%% Exercicio 2
estados = discrete_rnd(1:3, [1/3;1/3;1/3]); %% seleciona o proximo estado aleatorio pelas probabilidades
c = {};

for i = 1:nexp
    c{i} = crawl(T,estados,[4 5]); %% crawl percurso ate chegar ao estado absorvente
end
minimo = min(cellfun('length',c))
maximo = max(cellfun('length',c))


function [state] = crawl(H, first, last)
% the sequence of states will be saved in the vector "state"
% initially, the vector contains only the initial state:
    state = [first];
% keep moving from state to state until state "last" is reached:
    while (1)
        state(end+1) = nextState(H, state(end));
        if ismember(state(end), last) % verifies if state(end) is absorbing
            break;
        end
    end
end

function state = nextState(H, currentState)
    % find the probabilities of reaching all states starting at the current one:
    probVector = H(:,currentState)'; % probVector is a row vector
    n = length(probVector); %n is the number of states
    % generate the next state randomly according to probabilities probVector:
    state = discrete_rnd(1:n, probVector);
end

function state = discrete_rnd(states, probVector)
    U=rand();
    i = 1 + sum(U > cumsum(probVector));
    state= states(i);
end



