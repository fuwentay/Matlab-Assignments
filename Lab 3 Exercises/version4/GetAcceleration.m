%Fu Wen Tay, 23Jan, Exercise 3d: Version 4

%Finding the acceleration (ms^-2)
% Th (N), M (kg), g (ms^-2) denotes thrust, mass and gravity respectively.
function [acceleration, mass] = GetAcceleration(t,Mdata)
    g = Mdata.g;

    Th = GetThrust(t,Mdata);
    M = GetMass(t,Mdata);
    mass = M;
    acceleration = (Th - M*g)/M;
end

