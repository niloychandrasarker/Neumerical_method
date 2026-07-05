% Runge-Kutta 4th Order Method

clc;
clear;

x = 1;
y = 2;

h = input('Enter step size h = ');

for i = 1:10

    k1 = h*(3*x^2 + 1);

    k2 = h*(3*(x+h/2)^2 + 1);

    k3 = h*(3*(x+h/2)^2 + 1);

    k4 = h*(3*(x+h)^2 + 1);

    y = y + (k1 + 2*k2 + 2*k3 + k4)/6;

    x = x + h;

    if(x >= 2)
        break;
    end

end

fprintf('Result = %f\n', y);