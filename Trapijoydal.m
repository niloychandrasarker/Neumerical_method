f = @(x) (x.^3+1);
a=1;
b=2;
exact_ans = integral(f,a,b);
disp(exact_ans);
I = ((b-a)/2)*(f(a)+f(b));
disp(I);
erorr = (I-exact_ans)/I * 100;
disp(erorr);