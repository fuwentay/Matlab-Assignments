%Combining Functions, Exercise 5
%Fu Wen Tay

%instead of rotating about a fixed point, we now define a point p and q
%where we rotate the shape about by angle a in radians.
function newshape = rotateabout(shape, a, p, q)
    %series of transformations to achieve the rotateabout function
    newshape = translateShape(shape, -p, -q);
    newshape = rotateShape(newshape, a);
    newshape = translateShape(newshape, p, q);
