clc;
clear;

% Input coefficients
a1=input('coefficient of x1 1st equation: ');
b1=input('coefficient of x2 1st equation: ');
c1=input('coefficient of x3 1st equation: ');
d1=input('right hand side of 1st equation: ');

a2=input('coefficient of x1 2nd equation: ');
b2=input('coefficient of x2 2nd equation: ');
c2=input('coefficient of x3 2nd equation: ');
d2=input('right hand side of 2nd equation: ');

a3=input('coefficient of x1 3rd equation: ');
b3=input('coefficient of x2 3rd equation: ');
c3=input('coefficient of x3 3rd equation: ');
d3=input('right hand side of 3rd equation: ');

% -------- Forward Elimination --------

% Step 1: Make a2 zero
m21 = a2/a1;
a2 = a2 - m21*a1;
b2 = b2 - m21*b1;
c2 = c2 - m21*c1;
d2 = d2 - m21*d1;

% Step 2: Make a3 zero
m31 = a3/a1;
a3 = a3 - m31*a1;
b3 = b3 - m31*b1;
c3 = c3 - m31*c1;
d3 = d3 - m31*d1;

% Step 3: Make b3 zero
m32 = b3/b2;
b3 = b3 - m32*b2;
c3 = c3 - m32*c2;
d3 = d3 - m32*d2;

% -------- Back Substitution --------

x3 = d3 / c3;
x2 = (d2 - c2*x3) / b2;
x1 = (d1 - b1*x2 - c1*x3) / a1;

% -------- Output --------
disp('Solutions are:');
x1
x2
x3