function I = midpointInt(n)
delta = 3/n;
xi = delta/2;
xf = 3 - delta/2;
x_vals = [xi: delta: xf];
y_vals = [sqrt(x_vals + 1)];
area_sum = sum((y_vals .* delta));
I = area_sum;
end