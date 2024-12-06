syms x(t);
ivp2 = diff(x,t) == 4*(x^2+1)
cond2 = x(pi/4) == 1
sol2 = dsolve(ivp2, cond2)
Dsol2 = diff(sol2,t);
check21 = simplify(Dsol2 - 4*(sol2^2+1))
check22 = vpa(subs(sol2,t,0))