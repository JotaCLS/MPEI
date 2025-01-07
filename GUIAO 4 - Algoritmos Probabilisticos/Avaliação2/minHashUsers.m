function minhash_users = minHashUsers(users,numHash)
    numUsers = length(users);
    minhash_users = inf(numUsers, numHash);
    
    x = waitbar(0,'A calcular minHashUsers()...');
    for k= 1 : numUsers
        waitbar(k/numUsers,x);
        filmsUser = users{k};
        for j = 1:length(filmsUser)
            chave = char(filmsUser(j));
            for i = 1:numHash
                chave = [chave num2str(i)];
                %h(i) = hashfunction_users(chave,13,51,numHash);
                h(i) = DJB31MA(chave,127);
            end
            minhash_users(k, :) = min([minhash_users(k, :); h]);
        end
    end
    delete(x);
end