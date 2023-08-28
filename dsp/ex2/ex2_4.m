n = 0:10;
x = stepsig(0, 0, 10) - stepsig(10, 0, 10);
[xe, xo, m] = evenodd(x, n);
clf;
subplot(3, 1, 1)
stem(n, x); axis([-10, 10, 0, 1.2])
subplot(3, 1, 2)
stem(m, xe); axis([-10, 10, 0, 1.2])
subplot(3, 1, 3)
stem(m, xo); axis([-10, 10, -0.6, 0.6])

