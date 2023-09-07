w = [0:1:500] * pi/500;
H = exp(1j*w) ./ (exp(1j*w) - 0.9*ones(1,501));
magH = abs(H);
angH = angle(H);
subplot(2, 1, 1); plot(w/pi, magH); grid;
subplot(2, 1, 2); plot(w/pi, angH); grid