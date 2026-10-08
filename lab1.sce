// CO2035 - HK261 - Lab 1
clc;
clear;
close;

// Exercise 1.1
x = 1:4;
xplus1 = x + 1;
y = 5:8;
xy = x .* y;
x2 = linspace(0, %pi, 10);
sin_x = sin(x2);

// Exercise 1.2
clf;
t = linspace(0, 0.1, 500);
xa = 3*sin(100*%pi*t);
subplot(3,1,1);
plot(t, xa);
title("Analog signal xa(t)");
xlabel("t (s)"); ylabel("Amplitude");

Fs = 300;
n = 0:30;
xn = 3*sin(%pi*n/3);
subplot(3,1,2);
plot2d3(n, xn);
title("Discrete-time signal x(n)");
xlabel("n"); ylabel("Amplitude");

delta = 0.1;
xqn = floor(xn/delta)*delta;
subplot(3,1,3);
plot2d3(n, xqn);
title("Quantized signal xq(n)");
xlabel("n"); ylabel("Amplitude");
