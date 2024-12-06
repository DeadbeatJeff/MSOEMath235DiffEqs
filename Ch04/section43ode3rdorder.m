syms x(t);
a3 = 1;
a2 = 2;
a1 = -3;
a0 = 4;

ode1 = a3*diff(x,t,3)+ a2*diff(x,t,2) + a1*diff(x,t,1) + a0*x == 0
sol1 = dsolve(ode1)
Dsol1 = diff(sol1,t);
D2sol1 = diff(Dsol1,t);
D3sol1 = diff(D2sol1,t);
check1 = simplify(a3*D3sol1 + a2*D2sol1 + a1*Dsol1 + a0*sol1)