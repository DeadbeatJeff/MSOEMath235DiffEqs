clear;clc;
syms x(t)
ode = diff(x,t,2) + 3*x == -48*t^2*exp(3*t)
Dx = diff(x,t)
%cond = [x(pi/8) == 1/2, Dx(pi/8) == 2]
%sol1 = dsolve(ode, cond)
sol1 = dsolve(ode)
sol2 = simplify(sol1)
Dsol2 = diff(sol2,t)
check1 = simplify(diff(sol2, t, 2) + 3*sol2)
%check2 = vpa(subs(sol2, t, pi/8))
%check3 = vpa(subs(Dsol2, t, pi/8))
echo off