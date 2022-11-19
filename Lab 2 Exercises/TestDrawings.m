%Define and Translate Shapes, Exercise 1
%Fu Wen Tay

%Defining shape
arrow = [0 1 1 3 3 1 1 0; 0 1 0.5 0.5 -0.5 -0.5 -1 0]

%Defining new arrow
newArrow = translateShape(arrow,2,3);

%Test drawshape, Exercise 2

%plot original arrow
drawshape(arrow,'g')
hold on

%plot new arrow
drawshape(newArrow,'r')

%plotting both arrows would allow us to easily see if the new arrow is
%translated vertically and horizontally

%Exercise 3: plot y-reflection of new arrow in cyan
yNewArrow = reflectShape(newArrow,'y');
drawshape(yNewArrow,'cyan')

%Exercise 3: plot x-reflection of y-reflection of new arrow (arrow above) in magenta
xyNewArrow = reflectShape(yNewArrow,'x');
drawshape(xyNewArrow,'m')

%Exercise 4: plot rotation of x-reflection of y-reflection of new arrow (arrow above) in blue
rotateXyNewArrow = rotateShape(xyNewArrow, pi/4);
drawshape(rotateXyNewArrow, 'b')

%scaling to a square
axis([-10 10 -10 10])
axis square



