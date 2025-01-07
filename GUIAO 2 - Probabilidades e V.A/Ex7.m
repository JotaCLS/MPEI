%% Probabilidade de sabendo que existe um erro, o erro estar num programa do Carlos. P=(B|A)

N = 1e6;
andre = 20;
bruno = 30;
carlos = 50;
programa_andre = rand(andre, N) < 0.01;
programa_bruno = rand(bruno, N) < 0.05;
programa_carlos = rand(carlos, N) < 0.001;
programas_geral = [programa_andre; programa_bruno; programa_carlos];
prob_bug_carlos_matriz = programas_geral(51:end, :) >= 1;
prob_bug_carlos_logical = sum(prob_bug_carlos_matriz);
prob_bug_carlos = sum(prob_bug_carlos_logical) / N ;


cFav_erro = sum(sum(programas_geral));
prob_erro = cFav_erro/N;

prob_final = prob_bug_carlos/ prob_erro




