% m = 1:0.0001:1.01;
% x = cos(2*pi*697*m)+cos(2*pi*1209*m);
r = 0.999;
w_0 = 2*pi*0.1209;
zA = r*exp(1j*w_0);
zB = r*exp(-1j*w_0);
y = zeros(1,3000);
m = 1:3000;
x = (exp(1j*w_0*m) + exp(-1j*w_0*m)) / 2;
for n = 1:(length(y)-2)
    x(n) = (exp(1j*w_0*n) + exp(-1j*w_0*n)) / 2;
    y(n+2) = (zA+zB)*y(n+1) - (zA*zB)*y(n) + x(n);
end
plot(1:3000, y)