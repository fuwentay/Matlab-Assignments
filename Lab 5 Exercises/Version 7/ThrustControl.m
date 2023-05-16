%Fu Wen Tay, 15 May, Exercise 5b: Version 7

function Th = ThrustControl(state)
% Controller that allows us to set the thrust

    v = state.v;                            % velocity, m/s
    g = state.g;                            % gravitational acceleration, m/s^2
    M = state.fixedmass + state.fuelmass;   % total mass kg
    vt = state.vt;                          % target velocity, m/s
    K = state.K;                            % gain

    % Defining Error and Thrust
    
    Err = vt - v;                           % error, m/s
    Th = Err*K + M*g;                       % thrust, N

