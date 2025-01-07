function [lst] = KeyGenerator(N,imin,imax,alfabeto)
% name is conflicting with a actual matlab function
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
comp = randi([imin,imax],1,N);
lst = cell(N,1);
for i=1:N
     x = randi([1,length(alfabeto)],1,comp(i));
     word = alfabeto(x);
     lst{i} = word;
     %fprintf(1,"%3d, %3d - %s\n",i,comp(i),word)
end
end