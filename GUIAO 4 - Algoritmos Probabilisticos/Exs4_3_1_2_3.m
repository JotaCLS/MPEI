% Co´digo base para detec¸a˜o de pares similares

%% fazer os sets
[Set,Nu,users] = MakeSets('u.data');

%% calcular a distancia de jacard 

J = calc_distancia(Set,Nu);
imagesc(J)
 
%% verificar com um threshold
threshold = 0.4;
pairs(J,Nu,users,threshold)

