syms x(t);
ode1 = diff(x,t) == t*x
sol1 = dsolve(ode1)
Dsol1 = diff(sol1,t);
check11 = Dsol1 - t*sol1

ivp2 = diff(x,t) + 3*t^2*x == t^2
cond2 = x(0) == 1
sol2 = dsolve(ivp2, cond2)
Dsol2 = diff(sol2,t);
check21 = simplify(Dsol2 + 3*t^2*sol2)
check22 = vpa(subs(sol2,t,0))

ode3 = diff(x,t,2) + 2*diff(x,t,1) - 3*x == 0
sol3 = dsolve(ode3)
Dsol3 = diff(sol3,t);
D2sol3 = diff(Dsol3,t);
check31 = simplify(D2sol3 + 2*Dsol3 - 3*sol3)