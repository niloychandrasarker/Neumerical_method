% Bisection method
% Find the roots of 2x^2-5x+3 using bisection method and plot the error

f = @(x) (2*x^2-5*x+3)

a = 1;
b = 3;
error = 0.001;

while (f(a)*f(b)>0)
    a = input('input ');
    b = input('input1 ')
end

while(abs(a-b)>error)
    c=(a+b)/2
    if(f(a)*f(c)<0)
        b=c
    else
        a=c
    end
end
fprintf('solution = %f', c )

      

