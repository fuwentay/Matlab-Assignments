%Fu Wen Tay, 15 May, Exercise 5b: Version 9

% A script to plot a piecewise linear flight plan

% Define three co-ordinates for the lines to go through
Hpoints = [0 1500 3000]                   % In vector form X = [x1 x2 x3]
Vpoints = [-1 -100 -300]                   %            and Y = [y1 y2 y3]

%  Find intercepts and slopes, store as data structure lineCoeffs
lineCoeffs = findLines(Hpoints,Vpoints);

% For full range of heights (m), find the corresponding velocities (m/s), using function getPWLval
heights = 0:1:3000;
vTarget = getPWL(lineCoeffs,heights);

% Plot the flight plan
plot(heights,vTarget);
xlabel('Height (m)')
ylabel('Target velocity (m/s)')
grid 

% Plot 3 original points to show fixed points where lines should pass through
hold on
plot(Hpoints,Vpoints,'ro','MarkerSize',10)
title({'PWL Flight Plan'})

% Move the x axis
set(gca, 'XAxisLocation', 'top')

%% Optional extra code to label the lines
% Line 1
xMid1=(Hpoints(2)-Hpoints(1))/2;
yMid1=(Vpoints(2)-Vpoints(1))/2;
Line1Label=sprintf('y=%0.2fx+%0.2f',lineCoeffs.gradients(1),lineCoeffs.intercepts(1));
t1=text(xMid1,yMid1,Line1Label,'HorizontalAlignment','center','Rotation',atand(lineCoeffs.gradients(1)));
% Line 2 label
xMid2=Hpoints(3)-(Hpoints(3)-Hpoints(2))/2;
yMid2=Vpoints(3)-(Vpoints(3)-Vpoints(2))/2;
Line2Label=sprintf('y=%0.2fx+%0.2f',lineCoeffs.gradients(2),lineCoeffs.intercepts(2));
%xintercept=-lineCoeffs.intercepts(2)/lineCoeffs.gradients(2)
t2=text(xMid2,yMid2,Line2Label,'HorizontalAlignment','center','Rotation',atand(lineCoeffs.gradients(2)));
t1.FontSize=14;
t2.FontSize=14;