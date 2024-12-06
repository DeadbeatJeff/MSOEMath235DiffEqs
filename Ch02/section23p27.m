syms x(t);
ivp2 = diff(x,t) + (1/t)*x == (1/t)*exp(t)
cond2 = x(1) == 2
sol2 = dsolve(ivp2, cond2)
Dsol2 = diff(sol2,t);
check21 = simplify(Dsol2 + (1/t)*sol2 - (1/t)*exp(t))
check22 = vpa(subs(sol2,t,1))