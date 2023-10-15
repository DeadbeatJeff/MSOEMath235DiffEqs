clear;clc;

syms t s;

f = sin(4*t)
g = cos(4*t)

F = laplace(f)
G = laplace(g)

fcg = ilaplace(F*G)

% partfrac(4/((s^2+16)^2))
% 
% ilaplace(4/((s^2+16)^2))
% 
% laplace(t*cos(4*t))
% 
% a = laplace((1/32)*sin(4*t) - (1/8)*t*cos(4*t))
% 
% simplify(a)