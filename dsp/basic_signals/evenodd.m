function [xe, xo, m] = evenodd(x, n)
xe = ( x + fliplr(x) ) / 2;
xo = ( x - fliplr(x) ) / 2;
m = ?
end