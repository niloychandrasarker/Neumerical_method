% Secant Method for f(x) = x^3 - x - 2

xl = 1;     % initial guess 1
xu = 2;     % initial guess 2

for i = 1:1:100
    y1 = xl^3 - xl - 2;
    y2 = xu^3 - xu - 2;
    
    xr(i) = ((y2*xl) - (y1*xu)) / (y2 - y1);
    
    error = abs((xr(i) - xu) / xr(i)) * 100;
    
    xl = xu;
    xu = xr(i);
    
    if (error <= 0.1)
        break;
    end
end

error
fprintf('The root is : %f ', xu);