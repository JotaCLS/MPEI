function B = Insert(B,elem,k,n)
key = elem;
for i=1:k
    key=[key num2str(i)]; 
    pos = string2hash(key);
    pos=mod(pos,n)+1;
    B(pos)=1;
end
end

