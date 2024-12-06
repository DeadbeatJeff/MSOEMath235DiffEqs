syms x(t) g(t);
a2 = 1;
a1 = 0;
a0 = -1;
g = 1/t;
t0 = 1;
x0 = 3;
xdot0 = -2;

ode = a2*diff(x,t,2) + a1*diff(x,t,1) + a0*x == g
Dx = diff(x,t);
cond1 = x(t0) == x0;
cond2 = Dx(t0) == xdot0;
sol1 = dsolve(ode, cond1, cond2);
sol2 = simplify(sol1)
Dsol2 = diff(sol2,t);
D2sol2 = diff(Dsol2,t);
check1 = simplify(a2*D2sol2 + a1*Dsol2 + a0*sol2 - g)
