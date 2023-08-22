n = 0:50;
x1 = cos(0.04*pi*n);
x2 = 0.2*randn(1, 51);
x = x1 + x2;
stem(n, x);