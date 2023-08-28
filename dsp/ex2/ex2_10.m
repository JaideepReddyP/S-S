b = 1;
a = [1, -0.9];
n = -5:50;
x = stepsig(0, -5, 50) - stepsig(10, -5, 50);
y = filter(b, a, x);
stem(n, y)