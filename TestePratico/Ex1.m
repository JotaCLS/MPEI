%% Teste Pratico

% 1
alpha = [0.2;0.3;0.45;0.1];

T = [0,0,0,0,0,0;
     alpha(1),0,0,1-alpha(4),1,0;
     0,1-alpha(2),0,alpha(4),0,0;
     0,alpha(2),1-alpha(3),0,0,0;
     1-alpha(1),0,0,0,0,0;
     0,0,alpha(3),0,0,1;];

sum(T);

% 2
% percurso mais pequeno é 1 - 2- 3 - meta

estado_inicial_b = [1;0;0;0;0;0];

for i = 1:3
    estado_inicial_b = T*estado_inicial_b;
end

prob_fast_finish = estado_inicial_b(6);

% 3
% Numero medio de casas percorridas

estado_inicial_c = [1;0;0;0;0;0];

Q = [0,0,0,0;
     1-alpha(1),0,0,0;
     0,1-alpha(2),0,alpha(4);
     0,alpha(2),1-alpha(3),0];

F = (eye(4) - Q)^-1;







