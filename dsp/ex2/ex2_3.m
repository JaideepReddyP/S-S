n = -10:10;
x = compexpsig(-0.1+0.3j, -10, 10);
subplot(2,2,1); stem(n, real(x)); title('real');
subplot(2,2,2); stem(n, imag(x)); title('imag');
subplot(2,2,3); stem(n, abs(x)); title('abs');
subplot(2,2,4); stem(n, (180/pi)*angle(x)); title('angle')
