function I = trapazoid_area(n)
delta = 5/n;
xi = 0;
xf = 5;
x_vals = [0:delta:5];
y_vals = [((x_vals.^3) + 2 * x_vals + 1)];
sum_of_area = (delta/2)*(y_vals(1) + y_vals(end) + sum(2*(y_vals(2:end-1))));
I = sum_of_area;
end
