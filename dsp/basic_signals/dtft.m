function[X] = dtft(x, n, division_count, division_range)
    X = x * exp(-1j*pi/division_count) .^ (n'*division_range);
end