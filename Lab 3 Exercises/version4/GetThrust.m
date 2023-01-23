%Fu Wen Tay, 23Jan, Exercise 3d: Version 4

% To determine the thrust of the rocket given that the fuel stops burning
% after some time.
function thrust = GetThrust(t,Mdata)
    Th = Mdata.initialThrust;
    burnTime = Mdata.burnTime;

    if t < burnTime
        thrust = Th; % fuel is still burning so there is Thrust
    else
        thrust = 0; % fuel is no longer burning so there is no Thrust
    end