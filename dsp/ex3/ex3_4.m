n = -1:3;
x = 1:5;
k = 0:500;
w = pi*k/500;
X = x * exp(-1j*pi/500) .^ (n'*k);
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