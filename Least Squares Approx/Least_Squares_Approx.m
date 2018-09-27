clc
close all;
clear;

conduct = [14 23 28 34];
humid = [20 30 40 50];

% C for different fits
C_lin = [ones(4, 1) humid'];
C_quad = [ones(4, 1) humid' humid'.^2];
C_cube = [ones(4, 1) humid' humid'.^2 humid'.^3];

% Coefficients of Fits
lin_coeffs = ((inv(C_lin' * C_lin))*(C_lin' * conduct'));
quad_coeffs = ((inv(C_quad' * C_quad))*(C_quad' * conduct'));
cube_coeffs = ((inv(C_cube' * C_cube))*(C_cube' * conduct'));

% Domain
x = [0:0.1:100];

% Functions

y_lin = lin_coeffs(1) + lin_coeffs(2) * x;
y_quad = quad_coeffs(1) + quad_coeffs(2) * x + quad_coeffs(3) * x.^2;
y_cube = cube_coeffs(1) + cube_coeffs(2) * x + cube_coeffs(3) * x.^2 + cube_coeffs(4) * x.^3;

% Plot
title('Conductivity vs Humidity')
xlabel('Humidity')
ylabel('Conductivity')
plot(x, y_lin, 'g--', 'LineWidth', 1.25)
hold on
plot(x, y_quad, 'r:', 'LineWidth', 1.25) 
plot(x, y_cube, 'b-.', 'LineWidth', 1.25)
plot(humid, conduct, 'ok', 'LineWidth', 1.25)
legend('Linear Fit', 'Quadratic Fit', 'Cubic Fit', 'Data Points')
xlim([0 100])
ylim([0 100])





