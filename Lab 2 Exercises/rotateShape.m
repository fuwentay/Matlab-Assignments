%Rotate the Shape, Exercise 4
%Fu Wen Tay

%Rotate shape based on some angle a in radians
function newshape = rotateShape(shape, a)
    newshape = [cos(a) -sin(a); sin(a) cos(a)]*shape;
