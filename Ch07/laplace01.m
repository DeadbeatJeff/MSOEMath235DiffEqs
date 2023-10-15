syms x(t) s
x = 1/sqrt(t)
X = laplace(x)

syms f(x) y
f = 1/sqrt(x)
F = laplace(f, x, y)

syms x(t) s
x = t + 1
X = partfrac(laplace(x))
X = collect(laplace(x))
