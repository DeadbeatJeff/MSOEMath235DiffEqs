% Script to solve second-order linear ODE with constant coefficients
% Change a2, a1, a0, and g(x) in header, then run script

clear;clc;
syms y(x) g(x);
a2 = 1;
a1 = 2;
a0 = -3;
g = 0;

ode3 = a2*diff(y,x,2) + a1*diff(y,x,1) + a0*y == g
sol3 = dsolve(ode3)
Dsol3 = diff(sol3,x);
D2sol3 = diff(Dsol3,x);
check31 = simplify(a2*D2sol3 + a1*Dsol3 + a0*sol3) % Should be g(x)
