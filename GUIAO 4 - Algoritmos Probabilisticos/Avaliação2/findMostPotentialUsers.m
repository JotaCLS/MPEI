function [id_user_1,id_user_2,nome_user_1,nome_user_2] = findMostPotentialUsers(dic_users,films_watched,filme_escolhido,distances_option3)
filmes_vistos = sort(films_watched{filme_escolhido}); %% utilizadores que ja viram o filme atual
matrix_option3 = cell(length(filmes_vistos),1);
for id_1 = 1 :length (filmes_vistos) % para cada um dos watchers do filme atual
    for id_2 = 1:length(dic_users)   % para cada utilizador que existe
        if (strcmp(filmes_vistos(id_1),dic_users{id_2,1}) == 0 && distances_option3(filmes_vistos(id_1),dic_users{id_2,1}) < 0.90 && ~ismember(filme_escolhido,films_watched{id_2}))
            % se o id for diferente e a distancia for menor que
            % 0.90 e não tiver visto o filme
            matrix_option3{id_1}  = [matrix_option3{id_1} dic_users(id_2,1)];
        end
    end
end
array_option3 = matrix_option3(1:end,1);
potential_users = [];
for i=1:length(filmes_vistos)
    potential_users = [potential_users array_option3{i}];
end
[GC,GR] = groupcounts(cell2mat(potential_users'));
[GC_sorted, indices ] = sort(GC,'descend');
id_user_1 = GR(indices(1));  % id do primeiro utilizador que apareçe + vezes
id_user_2 = GR(indices(2));   % id do segundo utilizador que aparece + vezes
nome_user_1 = dic_users{id_user_1,2};
nome_user_2 = dic_users{id_user_2,2};
end