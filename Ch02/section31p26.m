syms A(t);
ivp2 = diff(A,t) + (1/100)*A == 6 + 3*sin(t/4)
cond2 = A(0) == 50
sol2 = dsolve(ivp2, cond2)
Dsol2 = diff(sol2,t);
check21 = simplify(Dsol2 + (1/100)*sol2 - 6 - 3*sin(t/4))
check22 = vpa(subs(sol2,t,0))