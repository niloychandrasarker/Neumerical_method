% Euler Method

clc;
clear;

x = 1;
y = 2;

h = input('Enter step size h = ');

for i = 1:10

    y_new = y + h*(3*x*x + 1);

    x = x + h;
    y = y_new;

    if(x == 2)
        break;
    end

end

fprintf('Result = %f\n', y);