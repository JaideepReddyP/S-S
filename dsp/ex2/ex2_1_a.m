n1 = -5;
n2 = 5;
x = 2*impsig(-2, n1, n2) - impsig(4, n1, n2);
stem(n1:n2, x);