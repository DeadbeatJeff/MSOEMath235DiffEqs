% Script to solve first-order linear IVP
% Change P(x), Q(x), x0 ,and y0 in header, then run script

clear;clc;
syms y(x) P(x) Q(x);
P = 3*x^2;
Q = x^2;
x0 = 0;
y0 = 1;

ivp2 = diff(y,x) + P*y == Q
cond2 = y(x0) == y0
sol2 = dsolve(ivp2, cond2)
Dsol2 = diff(sol2,x);
check21 = simplify(Dsol2 + P*sol2) % Should be Q(x) 
check22 = vpa(subs(sol2,x,0)) % Should be y0
