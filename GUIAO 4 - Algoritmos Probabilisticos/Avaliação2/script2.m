clc;
filme_escolhido = 0;
while ( filme_escolhido < 1 || filme_escolhido > 1682 )
    filme_escolhido = str2double(input("Insert Film ID ( 1 to 1682 ): " ,"s"));
    if (filme_escolhido < 1 || filme_escolhido > 1682)
        fprintf("Choose a valid film ID ( 1 to 1682 ) ");
    end
end
choice = 0;  %% user option choice

while ( choice ~= 5 )
    fprintf("1 - Users that evaluated current movie \n")
    fprintf("2 - Suggestion of users to evaluate movie\n")
    fprintf("3 - Suggestion of users to based on common interests\n")
    fprintf("4 - Movies feedback based on popularity\n")
    fprintf("5 - Exit\n")
    choice = input("Select choice: ","s");
    switch choice
        case "1"
            [names,number] = list_names_watched_same(filme_escolhido,udata,dic_users);
            disp(names)
            fprintf("No total %i utilizadores viram o mesmo filme ( %d ), com os nomes e id's listados acima \n", number, filme_escolhido)
            fprintf("--------------------------------------------- \n")
        case "2"
            [sorted_values,indexes] = sort(distances_option2(filme_escolhido,filme_escolhido+1:end));
            movie_watched_1 = indexes(1);
            movie_watched_2 = indexes(2);
            validUsers = find_validUsers(filme_escolhido,movie_watched_1,movie_watched_2,films_watched,dic_users)
            fprintf("Os dois filmes mais parecidos com o filme dado são os filmes com id %d e %d \n",movie_watched_1, movie_watched_2);
            fprintf("Os utilizadores que avaliaram pelo menos um dos dois filmes similares mas não avaliaram o filme escolhido encontram-se acima  \n")
            fprintf("--------------------------------------------- \n")
        case "3"
            [id1,id2,nome1,nome2] = findMostPotentialUsers(dic_users,films_watched,filme_escolhido,distances_option3);
            fprintf("Utilizadores que aparecem no maior número de conjuntos: \n")
            fprintf("%s ->  id %i\n",nome1,id1)
            fprintf("%s ->  id %i\n",nome2,id2)
            fprintf("--------------------------------------------- \n")
        case "4"
            string_escolhida = input("Escreva uma string para procurar nos titulos: ","s");
            while (length(string_escolhida) < tamanho_shingle)
                fprintf("Erro: escreva uma string com no minimo %d caracteres!!! \n",tamanho_shingle);
                string_escolhida = input("Escreva uma string para procurar nos titulos: ","s");
            end
            numero_hf = 100;
            [titulos_similares,distancias_similares] = search_titles(string_escolhida,minhash_titles,numero_hf,titulos,tamanho_shingle);
            [distancias_sorted,titulos_sorted] = sort(cell2mat(distancias_similares));
            fprintf("Três filmes mais similares à string introduzida: \n");
            fprintf("%s - id %i \n", dic_films{titulos_sorted(1),1},titulos_sorted(1));
            fprintf("%s - id %i \n", dic_films{titulos_sorted(2),1},titulos_sorted(2));
            fprintf("%s - id %i \n", dic_films{titulos_sorted(3),1},titulos_sorted(3));
            findTitles(titulos_sorted,Filtro_Bloom,bloomfilter_size,numero_hf,data)
        case "5"
            return;
    end
end

