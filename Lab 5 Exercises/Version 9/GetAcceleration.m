%Fu Wen Tay, 15 May, Exercise 5b: Version 9

%Finding the acceleration (ms^-2)
% Th (N), M (kg), g (ms^-2) denotes thrust, mass and gravity respectively.
function acceleration = GetAcceleration(state)
    g = state.g;
    Th = ThrustControl(state);
    M = state.fixedmass + state.fuelmass; %Total mass kg
    drag = -state.k * abs(state.v) * state.v; 
    
    % Set thrust to 0 when there is no more fuel
    if state.fuelmass <= 0
        Th = 0;
    end

    %Acceleration from Force Balance
    acceleration = (Th - M*g + drag)/M;
end

