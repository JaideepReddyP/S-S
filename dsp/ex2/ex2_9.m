b = 1;
a = [1 -1 0.9];
x = impsig(0, -20, 120);
n = -20:120;
h = filter(b, a, x);
subplot(2, 1, 1)
stem(n, h, "MarkerSize", 0.01)

x = stepsig(0, -20, 120);
s = filter(b, a, x);
subplot(2, 1, 2)
stem(n, s, 'MarkerSize',0.01)