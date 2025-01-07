function J = calculateDistancesUsers(numero_films,Assinaturas,nhf)
h = waitbar(0,'Calculating distances');
J = zeros(numero_films,numero_films);
% para cada par de utilizadores
for n1 = 1:numero_films
    for n2 = (n1+1):numero_films
         J(n1,n2) = 1-(sum(Assinaturas(n1,:) == Assinaturas(n2,:))/nhf);
    end
end

% fechar barra de progresso
close(h)
end