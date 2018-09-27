clc
close all;
clear;

i = 1;
for n = 10:100
    mid_sum_stored(i) = midpointInt(n);
    abs_error(i) = abs(14/3 - midpointInt(n));
    error_bound(i) = 9/(48 * (n^2));
    true_sum(i) = 14/3;
    i = i + 1;
end

x = [10:1:100];

subplot(2,1,1)
plot(x, mid_sum_stored, 'b--')
hold on 
plot(x, true_sum, 'g-.')
legend('Mid Point Approx', 'True Sum')
xlabel('Intervals')
ylabel('Area')
title('Area vs Intervals')
hold off

subplot(2,1,2)
plot(x, abs_error, 'r-')
hold on
plot(x, error_bound, 'g:')
legend('Absolute Error', 'Error Bound')
xlabel('Intervals')
ylabel('Error')
title('Error vs Intervals')
hold off


