function A=Amylu3b1(A)
 n = size(A,1);
 L=zeros(n,n);
 U=zeros(n,n);
 LU=zeros(n,n);
 for k = 1 : n - 1
   A(:, k) = A(:, k)/A(k, k);
   A = A - A(:, k) * A(k, :);
 end
endfunction
