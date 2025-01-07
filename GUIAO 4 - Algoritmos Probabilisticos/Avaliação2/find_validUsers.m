function valid_users = find_validUsers(filme_escolhido,movie_watched_1,movie_watched_2,films_watched,dic_users)
            users_view_1 = films_watched(movie_watched_1); % vai buscar os ids das pessoas que viram o filme 1
            users_view_1 = users_view_1{1,1}; % distribui num array 
            users_view_2 = films_watched(movie_watched_2); % vai buscar os ids das pessoas que viram o filme 2
            users_view_2 = users_view_2{1,1}; % distribui num array 
            
            users_view_id = films_watched{filme_escolhido,1};
            id_valid_1 = users_view_1(ismember(users_view_1(:),users_view_id) == 0) ;
            id_valid_2 = users_view_2(ismember(users_view_2(:),users_view_id) == 0);
            % vai buscar aos utilizadores que viram o filme 1 ou filme 2 os
            % que não viram o filme escolhido
            valid_ids = zeros(1,length(id_valid_2)+length(id_valid_1));
            valid_ids(1:length(id_valid_1)) = id_valid_1;
            valid_ids(length(id_valid_1)+1:length(id_valid_2)+length(id_valid_1)) = id_valid_2;
            valid_ids = unique(valid_ids); % vetor com todos os ids válidos ( que cumprem a condição )
            valid_names = cell(1,length(valid_ids));
            for i = 1:length(valid_ids)
            valid_names{i} = [dic_users{valid_ids(i),2}] ;
            end
            valid_users = [valid_names;num2cell(valid_ids)]';
            % junta todos os ids validos num array
end