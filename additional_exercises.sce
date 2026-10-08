// CO2035 - HK261 - Lab 2 Additional Exercises
clc; clear;

// Ex 1.3(e): verify period N0 = 16
scf(1); clf;
n = 0:31;
x13e = cos(%pi*n/2) - sin(%pi*n/8) + 3*cos(%pi*n/4 + %pi/3);
plot2d3(n, x13e); title("Additional Ex 1.3(e): periodic signal, N0=16"); xlabel("n"); ylabel("Amplitude"); xgrid();

// Ex 1.7: aliasing with Fs = 8 kHz
scf(2); clf;
Fs = 8000; n = 0:40;
x5 = sin(2*%pi*5000/Fs*n);
x3eq = -sin(2*%pi*3000/Fs*n);
x9 = sin(2*%pi*9000/Fs*n);
x1eq = sin(2*%pi*1000/Fs*n);
subplot(2,1,1); plot2d(n,[x5' x3eq']); title("5 kHz sampled at 8 kHz: alias 3 kHz"); xlabel("n"); ylabel("Amplitude"); xgrid();
subplot(2,1,2); plot2d(n,[x9' x1eq']); title("9 kHz sampled at 8 kHz: alias 1 kHz"); xlabel("n"); ylabel("Amplitude"); xgrid();

// Ex 1.9: sampled signal equivalence
scf(3); clf;
Fs = 600; n = 0:20;
x19 = sin(0.8*%pi*n) + 3*sin(1.2*%pi*n);
x19eq = -2*sin(0.8*%pi*n);
subplot(2,1,1); plot2d3(n,x19); title("Ex 1.9 sampled signal"); xlabel("n"); ylabel("Amplitude"); xgrid();
subplot(2,1,2); plot2d3(n,x19eq); title("Equivalent -2sin(0.8*pi*n)"); xlabel("n"); ylabel("Amplitude"); xgrid();

// Ex 1.10: 900 Hz component aliases to 100 Hz when Fs = 1 kHz
scf(4); clf;
Fs = 1000; n = 0:20;
x110 = 3*cos(0.6*%pi*n) + 2*cos(1.8*%pi*n);
x110eq = 3*cos(0.6*%pi*n) + 2*cos(0.2*%pi*n);
subplot(2,1,1); plot2d3(n,x110); title("Ex 1.10 sampled expression"); xlabel("n"); ylabel("Amplitude"); xgrid();
subplot(2,1,2); plot2d3(n,x110eq); title("Equivalent after aliasing"); xlabel("n"); ylabel("Amplitude"); xgrid();
