%Reflect the Shape, Exercise 3
%Fu Wen Tay

%Reflect shape based on indicated axis
function newshape = reflectShape(shape, axis)
    if axis=="X" | axis=="x"
        %reflect about x axis
        newshape = reflectx(shape);
    elseif axis=="Y" | axis=="y"
        %reflect about y axis
        newshape = reflecty(shape);
    else
        disp("Invalid")
    end
end