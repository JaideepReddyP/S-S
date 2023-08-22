function [x, n] = expsig(n0, n1, n2)
n = [n1:n2];
x = [n0.^n];
end