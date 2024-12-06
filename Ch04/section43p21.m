clc;clear;
syms y(x);
a3 = 1;
a2 = 3;
a1 = 3;
a0 = 1;

ode1 = a3*diff(y,x,3)+ a2*diff(y,x,2) + a1*diff(y,x,1) + a0*y == 0
sol1 = dsolve(ode1)
Dsol1 = diff(sol1,x);
D2sol1 = diff(Dsol1,x);
D3sol1 = diff(D2sol1,x);
check1 = simplify(a3*D3sol1 + a2*D2sol1 + a1*Dsol1 + a0*sol1)