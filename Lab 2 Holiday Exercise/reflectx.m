%Reflect the Shape, Exercise 3
%Fu Wen Tay

%reflects about x axis through transformation
function newshape = reflectx(shape)
    newshape = [1 0; 0 -1]*shape;
end