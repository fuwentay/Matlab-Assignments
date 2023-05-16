%Fu Wen Tay, 20 Feb, Exercise 4b: Version 1
% The lander simulator and controller
 
% 1. Initialise the values.
 
%    1.1 Set the Model Parameters.
state.fixedmass = 500;  % kg mass with no fuel
state.fuelmass = 1500;  % kg
state.g = 9.81;         % Acceleration due to gravity ms^-2
state.a = -state.g;     % Acceleration ms^-2
state.v = -300;         % Velocity m/s
state.h = 3000;         % Height m
state.t = 0;            % Start time s
state.dt = 0.1;         % Step size s

%    1.2 Initialise vectors to store the data to plot.
n = 600;                % Max iterations.
plot.A = zeros(1,n);    % Vector to store the values of a.
plot.V = zeros(1,n);    % Vector to store the values of v.
plot.H = zeros(1,n);    % Vector to store the values of h.
plot.M = zeros(1,n);    % Vector to store the values of m.
plot.T = zeros(1,n);    % Vector to store the values of t.

% 2. Repeat for each time step while above the ground.
k = 0;                  % Iteration counter
while (state.h > 0 && k < n)
    
%    3. Store the data to plot later.
    k = k+1;
    plot.A(k) = state.a;
    plot.V(k) = state.v;
    plot.H(k) = state.h;
    plot.T(k) = state.t;
    plot.M(k) = state.fuelmass;
    
%    4. Get the thrust from the controller.
    thrust = 0; % Zero thrust
%    5. Run the simulator to predict what will happen over the next time step.
    state = simulator(thrust, state);
 
% 6. End of repeat.
end

plot.A = plot.A(1:k); % Remove unused points.
plot.V = plot.V(1:k);
plot.H = plot.H(1:k);
plot.T = plot.T(1:k);
plot.M = plot.M(1:k);

% 7. Plot the data.
PlotGraphs(plot)






