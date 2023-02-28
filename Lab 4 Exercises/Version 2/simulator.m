%Fu Wen Tay, 20 Feb, Exercise 4b: Version 2

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
newstate.a = GetAcceleration(thrust, oldstate)