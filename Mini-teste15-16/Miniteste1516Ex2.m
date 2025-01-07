%% Exercicio 2

% Exercicio sobre expedicao de mercadoria, esboco do grafico feito no
% caderno
%
% Estado inicial
%   Angola - 1 milhao
%   Brasil - 2 milhoes
%   Chile - 10 milhoes
%   Dinamarca - 5 milhoes
%

T = [0.84, 0.1, 0 ,0.5; % Matriz T, feita no caderno
    0.1, 0.7, 0, 0.1;
    0.05, 0.1, 0.8, 0.1;
    0.01, 0.1, 0.2, 0.3];

estado_inicial = [1;2;10;5]; % refere ao fim de 2013

% antes de agosto passamos por 7 dias 1 
estado_inicial_a = estado_inicial;

for i = 1:7
    estado_inicial_a = T*estado_inicial_a;
end

% descobrir o valor maximo de cada pais
estado_inicial_b = estado_inicial;
max_angola = 1;
max_brasil = 2;
max_chile = 10;
max_dinamarca = 5;

for i = 1:10000
    estado_inicial_b = T*estado_inicial_b;
    if estado_inicial_b(1) > max_angola % atualiza o max angola
        max_angola = estado_inicial_b(1);
    end
    if estado_inicial_b(2) > max_brasil % atualiza o max brasil
        max_brasil = estado_inicial_b(1);
    end
    if estado_inicial_b(3) > max_chile % atualiza o max chile
        max_chile = estado_inicial_b(1);
    end
    if estado_inicial_b(4) > max_dinamarca % atualiza o max dinamarca
        max_dinamarca = estado_inicial_b(1);
    end
end
    

