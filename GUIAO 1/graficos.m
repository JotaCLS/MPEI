n = 200
p = 0.5
N = 1e6
vp = zeros(1,n+1)
for k = 0:n
    vp(k+1) = prob(k,n,p,N)
end
stem(0:n,vp)
