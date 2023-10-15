syms y(t) s;
y = 1/sqrt(t)
Y = laplace(y)

syms f(a) b;
f = 1/sqrt(a)
F = laplace(f, a, b)

syms x(t) s;
y = t + 1
Y = partfrac(laplace(y))
Y = collect(laplace(y))