%% Question 1 - Michael MacKenzie & Benji Christie

clear
clc
close all

%% Question 1 - (i)
t = linspace(0,10,81);
x = 10*exp(-t.^2/2);
n = 20*cos(8*pi*t) + 2*sin(8*pi*t);
y = x + n;

figure
hold on
plot(t,x,'m');
plot(t,y,'b'); 
legend('x','y');
xlabel('Time');
ylabel('Magnitude');
title('x and y as Functions of Time');

%% Question 1 - (ii) & (iii)
N = 7;
ytrans = fft(y);

for i = N:1:(length(t) - N)
    ytrans(i) = 0*ytrans(i);
end
y2 = ifft(ytrans);

figure
hold on
plot(t,x);
plot(t,real(y2));
legend('x','Low Pass Filtered');
xlabel('Time');
ylabel('Magnitude');
title('Ideal Low Pass Filtered Signal');

%% Question 1 - (iv)
n = 1;
W = 0.3;
[A,B,C,D] = butter(n,W);
filt = ss2sos(A,B,C,D);
filtered = sosfilt(filt,y);

figure
hold on
plot(t,x);
plot(t,filtered);
legend('x','Butterworth Filtered');
xlabel('Time');
ylabel('Magnitude');
title('Butterworth Filtered Signal');
