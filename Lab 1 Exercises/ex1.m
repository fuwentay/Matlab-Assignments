%Linear Algebra
%Fu Wen Tay

A=[2 3 7 1;1 0.5 1 2;3 1 1 -3;-1 1 3 1]
B=[21; 11; -8; 10]

%Return matrix containing w,x,y,z
C=inv(A)*B

%Checking that D = [21;11;-8;10]
D=A*C