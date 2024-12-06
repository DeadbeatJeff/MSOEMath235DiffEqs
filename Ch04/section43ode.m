clear;clc;
syms y(x);
a2 = 1;
a1 = 2;
a0 = -3;

ode1 = a2*diff(y,x,2) + a1*diff(y,x,1) + a0*y == 0
sol1 = dsolve(ode1)
Dsol1 = diff(sol1,x);
D2sol1 = diff(Dsol1,x);
check1 = simplify(a2*D2sol1 + a1*Dsol1 + a0*sol1)