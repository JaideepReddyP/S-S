x = cat(2, 1:7, fliplr(1:6));
n = -2:10;
n1 = n+5;
x1 = 2*x;
x2 = -3*x;
n2 = n-4;
[y, m] = addsig(x1, n1, x2, n2);
stem(m, y);