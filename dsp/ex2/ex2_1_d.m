n = -10:9;
f = fliplr(1:5);
x = periodic(f, 4);
stem(n, x);