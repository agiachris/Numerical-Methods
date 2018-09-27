function Area = Simpsons_Approx(n)
delta = 4/n;
xi = 2;
xf = 6;
x_vals = 2:delta:6;
y_vals = 2*(x_vals.^4) - 2*x_vals + 1;
sum_of_area = (delta/3)*(y_vals(1) + y_vals(end) + sum(4*(y_vals(2:2:end-1))) + sum(2*(y_vals(3:2:end-2))));
Area = sum_of_area;
end

