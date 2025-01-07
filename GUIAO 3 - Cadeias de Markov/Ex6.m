%% Ex 6
%% Trabalho realizado em grupo com Rodrigo Aguiar 108969

%       1   2   4   3   5
%   1  0.8  0  0.3  0   0
%   2  0.2 0.6 0.2  0   0
%   4   0  0.1 0.4  0   0
%   3   0  0.3 0    1   0
%   5   0   0  0.1  0   1


%% a)

T = [0.8,0,0.3,0,0;
     0.2,0.6,0.2,0,0;
     0,0.1,0.4,0,0;
     0,0.3,0,1,0;
     0,0,0.1,0,1;];

%% b)

estado_1 = [1;0;0;0;0];
a = zeros(1,100);
n=100;

for i = 2:n
    estado_final_2 = T^i * estado_1;
    a(i) = estado_final_2(2);
end
%figure(1);
%plot(a);

%% c)

for i = 2:n 
    estado_final_3 = T^i * estado_1;
    estado_final_5 = T^i * estado_1;
    b(i) = estado_final_3(3);
    c(i) = estado_final_5(5);
end

%plot(b);
%plot(c);

%% d) Matriz Q (transicao de estados nao absorventes para estados nao absorventes)

%       1   2   4    |   3    5                 T = ______________
%   1  0.8  0  0.3   |   0    0                    | Q    |    0  |
%   2  0.2 0.6 0.2   |   0    0                    |______|_______|               
%   4   0  0.1 0.4   |   0    0                    |      |       |
%   - - - - - - - - - - - - - - - -                |_R____|_____1_|
%   3   0  0.3  0    |   1    0                     
%   5   0   0  0.1   |   0    1


Q = [0.8, 0, 0.3    %% Q = T(1:numero_estados_nao_absorventes, 1:numero_estados_nao_absorventes
     0.2 0.6 0.2    %% Q = T(1:3,1:3);
      0, 0.1, 0.4];

%% e) Matriz fundamental (F = (I - Q)^-1)

F = (eye(3) - Q)^-1


%% f) tempo ate absorcao =  F' * ones(3,1)


Abs = sum(F)



%% g)

R = T(4:5,1:3);

B = R*F


%   B   1   2   4
%   3  ...........  prob de comecando em J absrover em I 
%   5  ...........
%
%
%




