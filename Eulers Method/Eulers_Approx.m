x = 0:0.01:3;
x2 = 0:0.005:3;
x3 = 0:0.001:3;

solution0 = EMsolver([0 1;(-100) 0], [0.2;0], 0.01);
solution1 = EMsolver([0 1;(-100) 0], [0.2;0], 0.005);
solution2 = EMsolver([0 1;(-100) 0], [0.2;0], 0.001);

subplot(2,1,1)
plot(x, solution0(1,:), 'r--')
hold on
plot(x2, solution1(1,:), 'k:')
plot(x3, solution2(1,:), 'g-.')
ylabel('Position')
xlabel('Time')
hold off
subplot(2,1,2)
plot(x, solution0(2,:), 'r--')
hold on
plot(x2, solution1(2,:), 'k:')
plot(x3, solution2(2,:), 'g-.')
ylabel('Velocity')
xlabel('Time')