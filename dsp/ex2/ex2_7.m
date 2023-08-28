x = [3, 11, 7, 0, -1, 4, 2];
nx = -3:3;
h = [2, 3, 0, -5, 2, 1];
nh = -1:4;
[y, ny] = conv_m(x, nx, h, nh);
subplot(3, 1, 1)
stem(nx, x); axis([-5, 5, -7, 12])
subplot(3, 1, 2)
stem(nh, h); axis([-5, 5, -7, 12])
subplot(3, 1, 3)
stem(ny, y)