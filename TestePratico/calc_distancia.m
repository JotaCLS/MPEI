function J = calc_distancia(Set,Nu)
J=zeros(Nu); % array para guardar distâncias
h= waitbar(0,'Calculating');
for n1= 1:Nu
waitbar(n1/Nu,h);
    for n2= n1+1:Nu
        u1 = Set{n1,:};
        u2 = Set{n2,:};
        similaridadejaccard = length(intersect(u1,u2))/length(union(u1,u2));
        distanceJaccard = 1 - similaridadejaccard;
        J(n1,n2) = distanceJaccard;
    end
end
delete(h)
end