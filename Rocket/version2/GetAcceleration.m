%Fu Wen Tay, 23Jan, Exercise 3b: Version 2

%Finding the acceleration (ms^-2)
% Th (N), M (kg), g (ms^-2) denotes thrust, mass and gravity respectively.
function acceleration = GetAcceleration(Th, M, g, t, burnTime)
    Th = GetThrust(Th, t, burnTime);
    acceleration = (Th - M*g)/M;
end

