%Define and Translate Shapes, Exercise 1
%Fu Wen Tay

%Defining function
function translated = translateShape(shape, x, y)
    %Splitting into x and y
    vert = shape(1,:);
    hor = shape(2,:);
    %New x and y
    vert = vert + x;
    hor = hor + y;
    %Forming new matrix
    translated = [vert; hor]