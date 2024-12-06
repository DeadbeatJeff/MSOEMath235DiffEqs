echo on
"Hello, World!"
echo off

A = [1,2;3,4]
B = rand(2,2)
C = A+A
D = 3.*A
E = A*A
F = A.*A

n = 2
I = eye(n)

Ainv1 = inv(A)
Ainv2 = A^(-1)
A*Ainv1
C*I

f = @(x,y)x.^2+y.^2
g = @(x,y)2.*x+2.*y-exp(x)+cos(y)
f(1,2)
g(3,pi)

f = @(t,x)x
dirfield(f, [-5:0.25:5])

