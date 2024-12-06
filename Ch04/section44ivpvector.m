clear;clc;

syms x(t);
ode = diff(x,t,2) - 2*diff(x,t) - 3*x == 4*t - 5 + 6*t*exp(2*t);
Dx = diff(x,t);
cond = [x(0) == 0.5, Dx(0) == 2];
sol1 = dsolve(ode, cond);
sol2 = simplify(sol1)
Dsol2 = diff(sol2,t);
check1 = simplify(diff(sol2, t, 2) - 2*diff(sol2,t) - 3*sol2)
check2 = vpa(subs(sol2, t, 0))
check3 = vpa(subs(Dsol2, t, 0))
