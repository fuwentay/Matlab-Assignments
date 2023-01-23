%Fu Wen Tay, 23Jan, Exercise 3e: Version 5

% Determining the mass of the rocket as fuel burns.
function mass = GetMass(t,Mdata)
    if t < Mdata.burnTime
        % fuel burns linearly
        mass = Mdata.initialTotalMass - Mdata.burnRate * t; 
    else
        % there is no more fuel to be burnt, resulting in constant mass
        mass = Mdata.finalMass; 
    end

