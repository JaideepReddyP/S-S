w = [0:500] * pi/500;
X = exp(1j*w) ./ (exp(1j*w) - 0.5);
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
