function matrizMinHashUsers = calc_distancia_minhash(users,numHash,films)
    numUsers = length(users);
    matrizMinHashUsers = inf(numUsers, numHash);
    
    x = waitbar(0,'A calcular minHashUsers()...');
    for k= 1 : numUsers
        waitbar(k/numUsers,x);
        filmsUser = films{k};
        for j = 1:length(filmsUser)
            chave = char(filmsUser(j));
            for i = 1:numHash
                chave = [chave num2str(i)];
                h(i) = DJB31MA(chave, 127);
            end
            matrizMinHashUsers(k, :) = min([matrizMinHashUsers(k, :); h]);
        end
    end
    delete(x);
end

function distances = getDistancesMinHashUsers(numUsers,matrizMinHash,numHash) 
    distances = zeros(numUsers,numUsers);
    for n1= 1:numUsers
        for n2= n1+1:numUsers
            distances(n1,n2) = sum(matrizMinHash(n1,:)==matrizMinHash(n2,:))/numHash;
        end
    end
end 