//definition de la fonction matmat3b

function [C]= matmat3b(A,B)
 m=size(A,1);
 p=size(B,1);
 n=size(B,2);
 C=zeros(m,n);
 for i = 1 : m
  for j = 1 : n
   for k = 1 : p
    C(i, j) = A(i, k)*B(k, j) + C(i, j);
   end 
  end 
 end 
endfunction
