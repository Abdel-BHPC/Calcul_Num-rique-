x=[5,50,100]
B1=[0.0001887,0.002515286,0.007345143];
B2=[0.000272571,0.018293,0.070214286];
B3=[0.000303286,0.323178286,2.629604143];

semilogy(x,B1,'r--<',x,B2,'b-o',x,B3,'k-.*')

hleg1 = legend( ['matmat1b';'matmat2b';'matmat13b']);
set(hleg1, 'Position', [.7,.71,.1,.2]);
xlabel('la taille');
ylabel('l''erreur');
title('Graphe des erreurs')
