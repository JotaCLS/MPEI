function boleano = Verificar(B,elem,k,n)
boleano = 1;
key = elem;
for i=1:k
    key=[key num2str(i)]; 
    pos = string2hash(key);
    pos=mod(pos,n)+1;
    if (B(pos) ~= 1)
        boleano = 0;
    end
end
end