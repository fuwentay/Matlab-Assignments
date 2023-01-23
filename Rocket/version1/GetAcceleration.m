%Fu Wen Tay, 23Jan, Exercise 3a: Version 1

%Finding the acceleration (ms^-2)
% Th (N), M (kg), g (ms^-2) denotes thrust, mass and gravity respectively.
function acceleration = GetAcceleration(Th, M, g)
    acceleration = (Th - M*g)/M
end

