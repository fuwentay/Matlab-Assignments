%Combining Functions, Exercise 5
%Fu Wen Tay

%n is the number of arrows on the plot that are evenly rotated about point
%p,q
n = 80; 
p = 1.5;
q = -4;
%a is the angle between arrows that is determined from n
a = (2*pi)/n;

% Exercise 6: remove hold command
%hold on

%for loop to plot arrows as they rotate about angle a in radians about
%point (p,q)
for k=[1:n]
    %original arrow rotating
    drawshape(arrow, 'b')
    arrow = rotateabout(arrow, a, p, q);
    hold on

    %Exercise 6 modification - additional arrow that is moving in the other
    %direction
    drawshape(newArrow, 'c')
    newArrow = rotateabout(newArrow, -a, p, q);

    %scale to ensure a nice fit
    axis([-15 15 -15 15])
    axis square
    drawnow
    pause(0.01)

    %to ensure that the "trace" of the arrow does not remain as it animates
    hold off
end
