function [L,U]=mylu3bopt(A)
        
        n=size(A,1);
    
        for k=1:n-1
            A(k+1:n,k)=A(k+1:n,k)/A(k,k);
            A(k+1:n,k+1:n)=A(k+1:n,k+1:n)-A(k+1:n,k)*A(k,k+1:n);          
        end   
    
   U=triu(A)
   L=tril(A)
   for l=1:n
   L(l,l)=1
    
endfunction
