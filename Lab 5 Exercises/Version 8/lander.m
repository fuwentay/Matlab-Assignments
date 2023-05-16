%Fu Wen Tay, 15 May, Exercise 5b: Version 8

% The lander simulator and controller
 
% 1. Initialise the values.
 
%    1.1 Set the Model Parameters.
state.fixedmass = 500;  % kg mass with no fuel
state.fuelmass = 1500;  % kg
state.g = 9.81;         % Acceleration due to gravity ms^-2
state.a = -state.g;     % Acceleration ms^-2
state.v = -290;         % Velocity m/s
% h is changed for us to conduct a robustness test
state.h = 3100;         % Height m
state.t = 0;            % Start time s
state.dt = 0.1;         % Step size s
state.b = 0.001;        % Burn rate kg/N/s
state.k = 1/3;          % Drag constant Ns^2/m^2
state.K = 1000;         % Gain
state.Hpoints = [0 1500 3000] % Height m   
state.Vpoints = [-1 -100 -300]% Velocity m/s

%    1.2 Initialise vectors to store the data to plot.
n = 2000;               % Max iterations.
plot.A = zeros(1,n);    % Vector to store the values of a.
plot.V = zeros(1,n);    % Vector to store the values of v.
plot.VT = zeros(1,n);   % Vector to store the values of vt.
plot.H = zeros(1,n);    % Vector to store the values of h.
plot.M = zeros(1,n);    % Vector to store the values of m.
plot.T = zeros(1,n);    % Vector to store the values of t.

% 2. Repeat for each time step while above the ground.
k = 0;                  % Iteration counter
while (state.h > 0 && k < n)

    lineCoeffs = findLines(state.Hpoints, state.Vpoints)
    s = lineCoeffs.split;
    m1 = lineCoeffs.gradients(1);
    m2 = lineCoeffs.gradients(2);
    c1 = lineCoeffs.intercepts(1);
    c2 = lineCoeffs.intercepts(2);
    
    % Defining target velocity
    if state.h < s
        state.vt = m1*state.h + c1;
    else
        state.vt = m2*state.h + c2;
    end

%    3. Store the data to plot later.
    k = k+1;
    plot.A(k) = state.a;
    plot.V(k) = state.v;
    plot.VT(k) = state.vt;
    plot.H(k) = state.h;
    plot.T(k) = state.t;
    plot.M(k) = state.fuelmass;
    
%    4. Get the thrust from the controller.
    thrust = ThrustControl(state);
%    5. Run the simulator to predict what will happen over the next time step.
    state = simulator(thrust, state);
 
% 6. End of repeat.
end

plot.A = plot.A(1:k); % Remove unused points.
plot.V = plot.V(1:k);
plot.VT = plot.VT(1:k);
plot.H = plot.H(1:k);
plot.T = plot.T(1:k);
plot.M = plot.M(1:k);

% 7. Plot the data.
PlotGraphs(plot);

% 8. Check criteria
CheckCriteria(state,plot);




