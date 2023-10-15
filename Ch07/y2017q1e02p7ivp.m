echo on
syms x(t)
ode = diff(x,t,2) + 5*diff(x,t) - 6*x == exp(2*t)
Dx = diff(x,t)
cond = [x(0) == 0, Dx(0) == 0]
%sol1 = dsolve(ode)
sol1 = dsolve(ode, cond)
sol2 = simplify(sol1)
Dsol2 = diff(sol2,t)
check1 = simplify(diff(sol2, t, 2) - 4*sol2)
check2 = vpa(subs(sol2, t, 0))
check3 = vpa(subs(Dsol2, t, 0))
echo off