function [u_sol] = EMsolver(A, u_0, delta_t)
initial = u_0;
n_columns = length(0:delta_t:3);
u_sol = zeros(2, n_columns);
u_sol(:, 1) = initial;
for i = 2:n_columns
    initial = initial + delta_t .* A * initial;
    u_sol(:, i) = initial;
end