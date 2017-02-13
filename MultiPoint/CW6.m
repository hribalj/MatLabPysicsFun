A = sin(linspace(0,2*pi,50));
map = A <= 0;
A(map) = Inf;
[a,b] = min(A)