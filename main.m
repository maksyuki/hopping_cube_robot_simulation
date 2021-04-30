close all;

wn = 5;
damping_ratio = 0.03;
[num0, den] = ord2(wn, damping_ratio);
num = -180 * 5^2*num0;
printsys(num, den, 's');
sys = tf(num, den);
step(sys);

xlabel('t/', 'fontsize', 16);
ylabel('\theta/(degs)', 'fontsize', 16);
title('Zero-input Response');
hold on;