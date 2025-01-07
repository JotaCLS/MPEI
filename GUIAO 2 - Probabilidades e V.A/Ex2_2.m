%% 90 notas de 5, 9 notas de 50, 1 nota de 100.
%% Prob de cada caso elementar é de 1%

Sx = [5, 50, 100]; % Espaço de amostragem 
    
probs = [0.9, 0.09, 0.01];

%2.2
figure(1)
subplot(1,2,1)
stem(Sx, probs)
grid on

%2.3
subplot(1,2,2)
pacumul = cumsum(probs);
stairs([0, Sx, 105], [0 pacumul 1])
ylim([0, 1.1])
grid on 




