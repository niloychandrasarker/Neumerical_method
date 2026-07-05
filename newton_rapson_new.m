% Newton-Raphson Method

f = @(x) exp(-x) - x;
fp = @(x) -exp(-x) - 1;

xi = 0;

for i = 1:100

    newx = xi - f(xi)/fp(xi);

    error = abs((newx - xi)/newx)*100;

    if(error <= 1)
        break;
    end

    xi = newx;

end

fprintf('Root = %f\n', newx);