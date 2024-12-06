syms x(t);
ode1 = diff(x,t) + 3*t^2*x == t^2
sol1 = dsolve(ode1)
Dsol1 = diff(sol1,t);
check11 = simplify(Dsol1 + 3*t^2*sol1 - t^2)