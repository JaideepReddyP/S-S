n = 0:10;
x = (0.9*exp(1j*pi/3)).^n;
M = 100;
k = -200:200;
X = dtft(x, n, M, k);
w = (pi/M)*k;
X_mag = abs(X);
X_real = real(X);
X_imag = imag(X);
X_angle = angle(X);
clf;
subplot(2,2,1)
plot(w/pi, X_mag); title("mag")
subplot(2,2,2)
plot(w/pi, X_real); title("real")
subplot(2,2,3)
plot(w/pi, X_imag); title("imag")
subplot(2,2,4)
plot(w/pi, X_angle); title("angle")