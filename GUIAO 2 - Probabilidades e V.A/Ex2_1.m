Sx = 1:6 % Espaco de amostragem = valores possiveis

%p (1) = 1/6

probs = [1 1 1 1 1 1] / 6


figure(1)
subplot(1,2,1)
stem(Sx, probs) %grafico com x = valores possiveis, y = probabilidades
xlim([0 7])
title('fmp de x')
xlabel("x_i")
ylabel("P[X = x_i]")
axis([-0.1 6.1 0 1/6*1.1])
grid on
%%
subplot(1,2,2)
pacumul = cumsum(probs)
stairs([0 Sx 7], [0 pacumul 1])
xlim([0 7])
ylim([0 1.1])
grid on


