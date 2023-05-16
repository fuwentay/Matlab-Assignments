%Fu Wen Tay, 15 May, Exercise 5b: Version 7

function newstate = simulator(thrust, oldstate)
% Use Euler's Method to predict the acceleration, velocity and height of the lander at next
% time step. 
% h is height(m), v is velocity (m/s), t is time (s) and a is acceleration
% (m/s^2).
    
% Make a new copy of all the variables  in state, ready for updating.
newstate = oldstate;
 
% 4.1 Use Euler's method to find the position at the next step
newstate.h = oldstate.h + oldstate.dt * oldstate.v;
 
% 4.2 Use Euler's method to find the velocity at the next step
newstate.v = oldstate.v + oldstate.dt * oldstate.a;
    
% 4.3 Increase the time by dt
newstate.t = oldstate.t + oldstate.dt;

% 4.4 Calculate acceleration using GetAcceleration
newstate.a = GetAcceleration(oldstate);

% 4.5 Calculate the fuel mass (kg)
if oldstate.fuelmass >= 0
    newstate.fuelmass = oldstate.fuelmass - oldstate.dt * oldstate.b * abs(thrust);
    % to stop fuel mass from going below 0
    if newstate.fuelmass <= 0
        newstate.fuelmass = 0;
    end
end