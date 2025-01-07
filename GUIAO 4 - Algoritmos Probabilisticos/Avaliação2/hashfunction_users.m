function y = hashfunction_users(x, a, b, P)
y = 23;
for i = 1:length(x)
    y = mod((a*x(i) + b), P*900000) ;
end
end