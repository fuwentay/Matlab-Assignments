%Fu Wen Tay, 20 Feb, Exercise 4b: Version 2

%Finding the acceleration (ms^-2)
% Th (N), M (kg), g (ms^-2) denotes thrust, mass and gravity respectively.
function acceleration = GetAcceleration(thrust, state)
    g = state.g;
    Th = thrust;
    M = state.fixedmass + state.fuelmass; %Total mass kg
    
    %Acceleration from Force Balance
    acceleration = (Th - M*g)/M;
end

