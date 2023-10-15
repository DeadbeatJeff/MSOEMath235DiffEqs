x = t^2 + 6*t - 3
X = partfrac(laplace(x))
X = collect(laplace(x))

x = 1 + exp(4*t)
X = partfrac(laplace(x))
X = collect(laplace(x))