function [] = probteorica(k,n,p,N)
%calculo teorico da probabilidade
pt = nchoosek(n,k)*p^k*(1-p)^(n-k)
end