function [x, n] = periodic(f, P)
x = f' * ones(1, P);
x = x(:);
x = x';
end