%Fu Wen Tay, 23Jan, Exercise 3e: Version 5

%Finding the acceleration (ms^-2)
% Th (N), M (kg), g (ms^-2) denotes thrust, mass and gravity respectively.
function [acceleration, mass] = GetAcceleration(v,t,Mdata)
    g = Mdata.g;
    Th = GetThrust(t,Mdata);
    M = GetMass(t,Mdata);
    mass = M;
    drag = GetDrag(v,Mdata);
    
    %Acceleration from Force Balance
    acceleration = (Th - M*g + drag)/M;
end

