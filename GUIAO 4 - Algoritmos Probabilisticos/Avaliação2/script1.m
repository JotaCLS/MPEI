clc; 
data = load("u.data");
dic_users = readcell('users.txt','Delimiter',';');
dic_films = readcell('film_info.txt','Delimiter','\t');

%% opção 2
numero_films = length(dic_films(:,1));
numero_hf = 10;
films_watched = getFilmsWatched(data);
% get the users that watched each film into the corresponding
% film id index of the cell array
minhash_option2 = minHashUsers(films_watched,numero_hf);
% get signatures matrix
distances_option2 = calculateDistancesUsers(numero_films,minhash_option2,numero_hf);
% get distances matrix

%% opção 3

interesses = (dic_users(:,3:end));
interessesByUser = cell(length(dic_users),1);
numero_hf = 100;
for i = 1: length(interesses)
    interessesByUser{i} = interesses(i,:);
end
minhash_option3 = minhashInteresses(interessesByUser,numero_hf);
distances_option3 = getJaccardDistance(minhash_option3);

%% opção 4
% minhash
titulos = dic_films(:,1);
num_titulos = length(titulos);
numero_hf = 100;
tamanho_shingle = 3; % 2 a 5
minhash_titles = minHashTitles(titulos,numero_hf,tamanho_shingle);
distances_titles = calculateDistancesUsers(num_titulos,minhash_titles,numero_hf);
% bloom filter
bloomfilter_size = 500;
Filtro_Bloom = zeros(bloomfilter_size,1); % apenas é suposto por tres filtros




















