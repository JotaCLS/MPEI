function J = getJaccardDistance(minhash_option3)
Nu = length(minhash_option3); % numero de utilizadores 
J=zeros(Nu); % array para guardar distâncias
h= waitbar(0,'Calculating Jaccard Distances for Option 3');
for n1= 1:Nu
waitbar(n1/Nu,h);
    for n2= n1+1:Nu
        u1 = minhash_option3(n1,:);
        u2 = minhash_option3(n2,:);
        similaridadejaccard = length(intersect(u1,u2))/length(union(u1,u2));
        distanceJaccard = 1 - similaridadejaccard;
        J(n1,n2) = distanceJaccard;
    end
end
delete(h)
end