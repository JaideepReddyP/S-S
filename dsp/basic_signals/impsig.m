function [x, n] = impsig(imp_at, range_start, range_end)
n = [range_start:range_end];
x = [(n-imp_at) == 0];
end