%Fu Wen Tay, 23Jan, Exercise 3e: Version 5

% Finding the drag that varies with magnitude and direction of velocity
function drag = GetDrag(v,Mdata)
    drag = - Mdata.dragConstant * v * abs(v);
end