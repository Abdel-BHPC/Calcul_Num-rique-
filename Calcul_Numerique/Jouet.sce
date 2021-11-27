
function a=jouet(n)
A=rand(n,n)    //Matrice de taille n
xex=rand(1:n)  //Vecteur de taille n
xex=xex'
b=A*xex        //calcul de b
x=A\b          //Resolution du systeme
disp("x = ",x)
err_avant=norm(xex-x)/norm(xex)  //Erreur Avant
disp("Erreur_Avant = ",err_avant)
r=b-A*x                          //Erreur Arriere
disp("r =",r)
relres = norm(r)/(norm(A)*norm(x))
disp("Relres = ",relres)
a=1
endfunction
