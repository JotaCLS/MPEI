function [similarTitles,distancesTitles] = search_titles(search,minhash_titles,numHash,titulos,shingleSize)
%% calcula a matriz minhash da string introduzida pelo utilizador
minHashSearch = inf(1, numHash);
    for j = 1 : (length(search) - shingleSize + 1)
        shingle = char(search(j:(j+shingleSize-1))); 
        h = zeros(1, numHash);
        for i = 1 : numHash
            shingle = [shingle num2str(i)];
            h(i) = DJB31MA(shingle, 127);
        end
        minHashSearch(1, :) = min([minHashSearch(1, :); h]);
    end
%% faz as distâncias e filtra os titulos
    % calcula a matriz minhash da string introduzida pelo utilizador
    similarTitles = {};
    distancesTitles = {};
    numTitles = length(titulos);
    for n = 1 : numTitles
        distancia = 1 - (sum(minHashSearch(1, :) == minhash_titles(n,:)) / numHash);
        similarTitles{n} = titulos{n};
        distancesTitles{n} = distancia;
    end
 end
