function film_users= getFilmsWatched(data)
%   Gets the set of users that watched each film and puts them in
%   corresponding film id index
all_films = unique(data(:,2));
numero_films= length(all_films);
film_users = cell(numero_films,1);
    for i = 1:numero_films
        ind = find(data(:,2) == all_films(i));
        film_users{i} = [ film_users{i} data(ind,1)];
    end
end