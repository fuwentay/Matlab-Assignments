%Fu Wen Tay, 15 May, Exercise 5b: Version 9

%% A short test script to test the getPWL function

% define x axis
x = 0:1:3000;

% Define coefficients for lines
lines.gradients = [-0.1 0]; %-0.1
lines.intercepts = [0 -150]; %0
lines.split = 1500;

% Call function
y = getPWL(lines,x);

% Plot results
plot(x,y,'b-.')

ylim([-300 0])