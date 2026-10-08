// CO2035 - HK261 - Lab 2
clc; clear;

// Exercise 1 - quick function checks
v = [1 4 -2 6];
min_v = min(v);
max_v = max(v);
deff('y=squaref(x)', 'y=x*x');
square_3 = squaref(3);

// Exercise 2 - unit step
scf(1); clf;
n = -5:5;
msignal = bool2s(n >= 0);
plot2d3(n, msignal); title("Unit Step Signal u(n)"); xlabel("n"); ylabel("Amplitude"); xgrid();

// Exercise 3 - unit impulse
scf(2); clf;
n = -5:5;
imp = bool2s(n == 0);
plot2d3(n, imp); title("Unit Impulse Signal delta(n)"); xlabel("n"); ylabel("Amplitude"); xgrid();

// Exercise 4 - unit ramp
scf(3); clf;
n = -5:5;
ur = n .* bool2s(n >= 0);
plot2d3(n, ur); title("Unit Ramp Signal"); xlabel("n"); ylabel("Amplitude"); xgrid();

// Exercise 5 - even/odd decomposition
scf(4); clf;
n = -1:1; x = [1 3 -2];
xr = x($:-1:1);
xe = (x + xr)/2;
xo = (x - xr)/2;
subplot(3,1,1); plot2d3(n,x); title("Original signal x(n)"); xlabel("n"); ylabel("Amplitude"); xgrid();
subplot(3,1,2); plot2d3(n,xe); title("Even component xe(n)"); xlabel("n"); ylabel("Amplitude"); xgrid();
subplot(3,1,3); plot2d3(n,xo); title("Odd component xo(n)"); xlabel("n"); ylabel("Amplitude"); xgrid();

// Exercise 6 - addition
scf(5); clf;
n = -1:3;
x1 = [0 0 1 3 -2];
x2 = [0 1 2 3 0];
yadd = x1 + x2;
subplot(3,1,1); plot2d3(n,x1); title("x1(n)"); xlabel("n"); ylabel("Amplitude"); xgrid();
subplot(3,1,2); plot2d3(n,x2); title("x2(n)"); xlabel("n"); ylabel("Amplitude"); xgrid();
subplot(3,1,3); plot2d3(n,yadd); title("y(n)=x1(n)+x2(n)"); xlabel("n"); ylabel("Amplitude"); xgrid();

// Exercise 7 - multiplication
scf(6); clf;
ymul = x1 .* x2;
subplot(3,1,1); plot2d3(n,x1); title("x1(n)"); xlabel("n"); ylabel("Amplitude"); xgrid();
subplot(3,1,2); plot2d3(n,x2); title("x2(n)"); xlabel("n"); ylabel("Amplitude"); xgrid();
subplot(3,1,3); plot2d3(n,ymul); title("y(n)=x1(n).*x2(n)"); xlabel("n"); ylabel("Amplitude"); xgrid();

// Exercise 8 - signal manipulations in one window
scf(7); clf;
nx = -2:1; x = [1 -2 3 6];
n1 = -nx($:-1:1); y1 = x($:-1:1);
n2 = nx - 3;      y2 = x;
n3 = -nx($:-1:1) - 2; y3 = 2*x($:-1:1);
subplot(2,2,1); plot2d3(nx,x); title("Original signal x(n)"); xlabel("n"); ylabel("Amplitude"); xgrid();
subplot(2,2,2); plot2d3(n1,y1); title("y1(n)=x(-n)"); xlabel("n"); ylabel("Amplitude"); xgrid();
subplot(2,2,3); plot2d3(n2,y2); title("y2(n)=x(n+3)"); xlabel("n"); ylabel("Amplitude"); xgrid();
subplot(2,2,4); plot2d3(n3,y3); title("y3(n)=2x(-n-2)"); xlabel("n"); ylabel("Amplitude"); xgrid();
