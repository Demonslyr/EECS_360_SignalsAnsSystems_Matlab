clear all; close all; clc;

figure('Position',[100 100 1600 900],'Name','Lab 4 Problem 1')

%%%%%%%
subplot(6,3,1)
stem(-5:5,[0 0 0 0 0 1 1 1 1 1 0])
title('1a. x[n]')

subplot(6,3,4)
stem(-5:5,[0 0 0 1 1 1 1 1 0 0 0])
title('1a. h[n]')

subplot(6,3,7)
stem(convfunc(0,4,-2,2,ones(1,5),ones(1,5)))
title('1a. y[n]')

%%%%%%%
subplot(6,3,2)
stem(-5:5,[0 0 0 0 0 0.5 0.5 0.5 0 0 0])
title('1b. x[n]')

subplot(6,3,5)
stem(-5:5,[0 0 0 0 0 3 2 1 0 0 0])
title('1b. h[n]')

subplot(6,3,8)
stem(convfunc(0,2,0,2,[0.5 0.5 0.5],[3 2 1]))
title('1b. y[n]')

%%%%%%%
x = [];
for i = -5:5
    x = [x (5-abs(i))];
end
subplot(6,3,3)
stem(-8:8,[0 0 0 x 0 0 0])
title('1c. x[n]')

subplot(6,3,6)
stem(-8:8,[0 0 0 ones(1,11) 0 0 0])
title('1c. h[n]')

subplot(6,3,9)
stem(convfunc(-5,5,-5,5,x,ones(1,11)))
title('1c. y[n]')

%%%%%%%
x = [];
for i = -10:10
    x = [x ((1/2)^(i-1))];
end
subplot(6,3,10)
stem(-30:30,[zeros(1,30) ones(1,21) zeros(1,10)])
title('1d. x[n]')

subplot(6,3,13)
stem(-30:30,[zeros(1,20) x zeros(1,20)])
title('1d. h[n]')

subplot(6,3,16)
stem(convfunc(0,20,-10,10,ones(1,21),x))
title('1d. y[n]')

%%%%%%%
x = [];
for i = -2:1
    x = [x (1-1.3*exp(i/5))];
end
y = [];
for i = 0:4
    y = [y (exp(-(0.7*i)))];
end
subplot(6,3,11)
stem(-6:6,[0 0 0 0 x 0 0 0 0 0])
title('1e. x[n]')

subplot(6,3,14)
stem(-6:6,[zeros(1,6) y 0 0])
title('1e. h[n]')

subplot(6,3,17)
stem(convfunc(-2,1,0,4,x,y))
title('1e. y[n]')