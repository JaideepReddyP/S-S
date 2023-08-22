function [x, n] = compexpsig(n0, n1, n2)
n = [n1:n2];
x = [exp(n0*n)];
end