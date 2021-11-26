function [LU]=mylu3b(A)
 n = size(A,1);
 L=zeros(n,n);
 U=zeros(n,n);
 LU=zeros(n,n);
 for k = 1 : n - 1
  for i = k + 1 : n
   A(i, k) = A(i, k)/A(k, k);
  end 
  for i = k + 1 : n
    for j = k + 1 : n
     A(i, j) = A(i, j) - A(i, k) * A(k, j);
    end 
  end 
 end

 n2 = n^2;

 L = tril(A);
 L(1:n+1:n2) = 1;
 
 U = triu(A);

 LU = L * U;
 
endfunction
