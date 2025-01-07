function [names,number] = list_names_watched_same(id,ficheiro,dic_users)
utilizadores = ficheiro(:,1);
filmes_vistos = ficheiro(:,2); % filmes vistos
utilizadores2 = utilizadores(filmes_vistos == id); % utilizadores com o mesmo filme visto
name_users = [dic_users(:,2)];  % array de nomes dos utilizadores todos
names = dictionary(utilizadores2,name_users(utilizadores2)); % dicionario com utilizadores e id
number = length(utilizadores2);
end

