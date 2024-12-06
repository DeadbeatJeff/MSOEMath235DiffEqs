syms x(t);
ode1 = diff(x,t) == -exp(-3*t)
sol1 = dsolve(ode1)
Dsol1 = diff(sol1,t);
check11 = Dsol1 +exp(-3*t)