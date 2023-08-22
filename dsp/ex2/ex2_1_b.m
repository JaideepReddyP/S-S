n1 = 0;
n2 = 20;
n = n1:n2;
x1 = n .* ( stepsig(0, n1, n2) - stepsig(10, n1, n2) );
x2 = 10 * exp(-0.3*(n-10)) .* ( stepsig(10, n1, n2) - stepsig(20, n1, n2) );
x = x1 + x2;
stem(n, x);