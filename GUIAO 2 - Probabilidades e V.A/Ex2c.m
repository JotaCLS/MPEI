N = 1000;
m = 1000;
ns = 10:10:100;
res = [];
for n = ns
    lancamentos = randi(m,n,N);
    diferentes = zeros(1,N);
    for col = 1:N
        diferentes(col) = length(unique(lancamentos(:,col)))<n;
    end
    res = [res sum(diferentes)/N];
end
plot(ns,res,"r*-"), xlabel("n"), ylabel("prob"),title("m=1000")
    