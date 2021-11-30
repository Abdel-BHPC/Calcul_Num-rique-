function [P,L,U]=mylu(A)
  n=size(A,1)
  P=zeros(n,n)
  P(n,n)=1
  for k=1:n-1
    pivot_max=max(abs(A(k:n,k)))
    P(k,find(pivot_max==A(k:n,k),1))=1
    A([k find(pivot_max==A(k:n,k),1)],: )=A([find(pivot_max==A(k:n,k),1) k],: )
    for i=k+1:n
      A(i,k)=A(i,k)/A(k,k)
      for j=k+1:n 
        A(i,j)=A(i,j)-(A(i,k)/A(k,k))*A(k,j)
      end
    end
  end
  U=triu(A)
  L=tril(A)
  L=eye(n,n)+tril(A,-1);
  U=triu(A);
endfunction
