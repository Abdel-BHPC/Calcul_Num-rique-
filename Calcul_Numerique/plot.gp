set ylabel "temps d'execution"  
set xlabel "La taille"  
plot "out.dat" with lines title "matmat1b", "out1.dat" with lines title "matmat2b", "out2.dat" with lines title "matmat3b"
pause -1
