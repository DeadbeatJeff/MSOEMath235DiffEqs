% Script to solve first-order variables separable ODE
% Change ODE in ode1 line and check11 line, then run script

clear;clc;
syms y(x);
ode1 = diff(y,x) == -exp(-3*x)
sol1 = dsolve(ode1)
Dsol1 = diff(sol1,x);
check11 = Dsol1 + exp(-3*x) % Should be 0
