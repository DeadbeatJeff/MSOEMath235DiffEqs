syms T(t);
ivp2 = diff(T,t) == -0.1*(T - 100 + 40*exp(-0.1*t))
cond2 = T(0) == 80
sol2 = dsolve(ivp2, cond2)
Dsol2 = diff(sol2,t);
check21 = simplify(Dsol2 + 0.1*(sol2 - 100 + 40*exp(-0.1*t)))
check22 = vpa(subs(sol2,t,0))