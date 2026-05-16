f = @(x) (exp(x));
a = 1;
b = 2;

exact_ans = integral(f,a,b);
disp(exact_ans)

h = (b-a)/2;
c = a+h;
I = ((b-a)/2)*(f(a)+4*f(c)+f(b));
disp(I);
error = (I-exact_ans)/I * 100;
disp(error);