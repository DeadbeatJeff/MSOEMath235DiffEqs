syms x(t) s X;
a0 = -3
u = t^2
x0 = 4

Dx = diff(x(t),t);
ode = Dx + a0*x - u

ODE = laplace(ode,t,s); % The t and s in laplace aren't necessary, as they are default
IVP = subs(ODE,{x(0)},{x0});
IVP = subs(IVP,{laplace(x(t),t,s)},{X});
IVP = collect(IVP,X);

X = solve(IVP, X);
X = partfrac(X);

sol = ilaplace(X, s, t)

Dsol = diff(sol,t);
check1 = Dsol + a0*sol
check2 = vpa(subs(sol, t, 0))
