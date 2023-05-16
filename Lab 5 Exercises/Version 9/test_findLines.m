%Fu Wen Tay, 15 May, Exercise 5b: Version 9

% Short script to test the function points2pwl to 
% generate a Piecewise Linear (PWL) curve

% Define three points (x1,y1), (x2,y2) and (x3,y3)
X = [3,2,1];  % In vector form X = [x1 x2 x3]
Y = [7,5,2];  %            and Y = [y1 y2 y3]

% Plot 3 original points as large red circles
plot(X,Y,'ro','MarkerSize',10)
hold on

% Find coefficients of pwl going through three points
lineCoeffs = findLines(X,Y);

% Define range to define PWL over
x = 0:0.1:4;

% Find values of PWL over x range
y = getPWL(lineCoeffs,x);

% Check visually
plot(x,y,'b.-')
grid

