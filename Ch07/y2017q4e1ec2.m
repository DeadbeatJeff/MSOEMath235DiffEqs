% Script to solve first-order variables separable ODE
% Change ODE in ode1 line and check11 line, then run script

clear;clc;
syms y(x);
ivp2 = diff(y,x) == 4*(y^2+1)
cond2 = y(pi/4) == 1
sol2 = dsolve(ivp2, cond2)
Dsol2 = diff(sol2,x);
check11 = Dsol2 -4*(sol2^2+1) % Should be 0
check12 = subs(sol2,x,pi/4) % Should be 1