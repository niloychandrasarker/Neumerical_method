% Secant Method

f = @(x) x^3 - x - 2;

x0 = 1;
x1 = 2;

for i = 1:100

    x2 = x1 - (f(x1)*(x1-x0)) / (f(x1)-f(x0));

    error = abs((x2-x1)/x2)*100;

    if(error <= 0.1)
        break;
    end

    x0 = x1;
    x1 = x2;

end

fprintf('Root = %f\n', x2);