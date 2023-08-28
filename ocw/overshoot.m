clf
t = 0:0.001:2*pi;
x = zeros(size(t));
for m = 1:40
    x = x + (sin(m*t)/m);
end
subplot(1,2,1)
plot(t, x)
hold on
for m = 41:80
    x = x + (sin(m*t)/m);
end
plot(t, x)
for m = 81:160
    x = x + (sin(m*t)/m);
end
plot(t, x)

approx = (pi - t) /2;
plot(t, approx)

over = approx*1.18;
plot(t, over)

subplot(1,2,2)


