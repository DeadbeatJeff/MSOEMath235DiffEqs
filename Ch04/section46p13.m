syms x(t) g(t);
a2 = 1;
a1 = 3;
a0 = 2;
g = sin(exp(t));

ode = a2*diff(x,t,2) + a1*diff(x,t,1) + a0*x == g
Dx = diff(x,t);
sol1 = dsolve(ode);
sol2 = simplify(sol1)
Dsol2 = diff(sol2,t);
D2sol2 = diff(Dsol2,t);
check1 = simplify(a2*D2sol2 + a1*Dsol2 + a0*sol2 - g)
