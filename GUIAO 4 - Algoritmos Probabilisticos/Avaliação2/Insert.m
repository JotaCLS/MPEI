function B = Insert(B,elem,k,n)
for j = 1:length(elem)
    key = elem(j);
    for i=1:k
        key=[key num2str(i)];
        pos = string2hash(key);
        pos=mod(pos,n)+1;
        B(pos)= B(pos) + 1;
    end
end
end

