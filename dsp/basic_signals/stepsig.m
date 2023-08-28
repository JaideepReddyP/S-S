function [x, n] = stepsig(step_start, range_start, range_end)
n = [range_start:range_end];
x = [(n-step_start) >= 0];
end