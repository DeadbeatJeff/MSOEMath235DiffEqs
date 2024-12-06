clear;clc;
syms y(x);
a2 = 1;
a1 = 2;
a0 = -3;
x0 = 0;
y0 = 2;
yprime0 = -4;

ivp1 = a2*diff(y,x,2) + a1*diff(y,x,1) + a0*y == 0
Dy = diff(y,x);
cond1 = y(x0) == y0
cond2 = Dy(x0) == yprime0
sol1 = dsolve(ivp1, cond1, cond2)
Dsol1 = diff(sol1,x);
D2sol1 = diff(Dsol1,x);
check1 = simplify(a2*D2sol1 + a1*Dsol1 + a0*sol1)
check2 = vpa(subs(sol1,x,x0))
check3 = vpa(subs(Dsol1,x,x0))