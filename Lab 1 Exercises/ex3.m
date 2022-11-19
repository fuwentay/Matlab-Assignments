%Cubic Formula
%Fu Wen Tay

%a)

%Defining coefficients
p=-13;
q=12;

A = ((-q/2)+sqrt((q^2/4)+(p^3/27)))^(1/3)
B = ((-q/2)-sqrt((q^2/4)+(p^3/27)))^(1/3)

y1=A+B;
y2=-((A+B)/2)-j*(sqrt(3)/2)*(A-B);
y3=-((A+B)/2)+j*(sqrt(3)/2)*(A-B);

y1, y2, y3

%b)

y=[y1;y2;y3]
(y.^3+p*y+q)

%c)

%Matlab uses double precision, floating point numbers.

%Rounding off errors

%A=1.5000 + 1.4434i
%B=1.5000 - 1.4434i. When the real and imaginary components of A and B were
%calculated, they were truncated. Thus, when substituting back into the
%cubic equation, there are rounding errors, giving a non-zero answer.

format long e
y2-1
