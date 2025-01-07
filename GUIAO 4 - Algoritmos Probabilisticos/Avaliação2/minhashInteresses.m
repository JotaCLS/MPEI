function minhash_interesses = minhashInteresses(interessesbyUser,numHash)
numUsers = length(interessesbyUser);
minhash_interesses = inf(numUsers, numHash);
    
    x = waitbar(0,'A calcular minHashInteresses()...');
    for k= 1 : numUsers
        waitbar(k/numUsers,x);
        filmsUser = interessesbyUser{k};
        for j = 1:length(filmsUser)
            if ( ismissing(filmsUser{j}))
                % passar à frente os missings
                continue
            end
            chave = filmsUser{j};
            for i = 1:numHash
                chave = [chave num2str(i)];
                h(i) = string2hash(chave,'djb2');
            end
            minhash_interesses(k, :) = min([minhash_interesses(k, :); h]);
        end
    end
    delete(x);
end