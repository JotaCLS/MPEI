% Co´digo base para detec¸a˜o de pares similares
%% fazer os sets
[Set,Nu] = MakeSets('u.data');

%% calcular a distancia de jacard 

J = calc_distancia(Set,Nu);
imagesc(J)
 
%% verificar com um threshold

pairs(J,Nu,users,threshold)