%Fu Wen Tay, 23Jan, Exercise 3c: Version 3

%Finding the acceleration (ms^-2)
% Th (N), M (kg), g (ms^-2) denotes thrust, mass and gravity respectively.
function acceleration = GetAcceleration(t,Mdata)
    g = Mdata.g;
    Th = Mdata.initialThrust;
    burnTime = Mdata.burnTime;
    M = Mdata.initialTotalMass;

    Th = GetThrust(t,Mdata);
    %Acceleration from Force Balance
    acceleration = (Th - M*g)/M;
end

