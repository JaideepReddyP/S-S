x = cat(2, 1:7, fliplr(1:6));
n = -2:10;
x1 = fliplr(x);
n1 = -fliplr(n)+3;
n3 = n+2;
[y2, m2] = sigmult(x, n, x, n3);
[y, m] = addsig(x1, n1, y2, m2);
stem(m, y);