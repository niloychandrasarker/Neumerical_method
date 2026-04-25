%false posision method
f = @(x) (x^3-2*x-5)
a = 1;
b = 3;

for i=1 ; 10
    x(i) = a-(b-a)/(f(b)-f(a))*f(a);
    if f(x(i)) > 0
        b = x(i);
    else
        a = x(i);
    end
    p = x(i)
end

fprintf('solution = %f',p)
