f = @(t,x) -t./x
[t x] = ode45(f, [-4 4], 0.1);
plot(t,x)