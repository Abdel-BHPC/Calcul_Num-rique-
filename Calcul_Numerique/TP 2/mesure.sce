A=rand(3,3)
b=rand(1:3)'

for i = 1:10
 tic();A\b;t=toc()
 disp(t)
end
