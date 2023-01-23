%Fu Wen Tay, 23Jan, Exercise 3b: Version 2

% Using Euler's method to solve for velocity of Rocket
%1. Initialise the values
% 1.1 Initialise any rocket constants needed for force formula
clear all

Th = 34000000; % N
M = 2900000; % kg
g = 9.81; % ms^-2
burnTime = 150; % s

% 1.2 Set the initial value of a, v and h (all zero)
a = 0; v = 0; h = 0;

% 1.3 Set the start and end value of t (0 to 300 seconds), and a step size (0.1)
tstart = 0; tend = 300; dt = 0.1;

% 1.4 Define a vector of time steps called T
T = tstart:dt:tend; % Vector of values of t.

% 1.5 Initialise vectors of zeros to store calculated values (vectors called A,V,H)
n = length(T); % Find the total number of point
A = zeros(1,n); % Vector to store the values of A.
V = zeros(1,n); % Vector to store the values of V.
H = zeros(1,n); % Vector to store the values of H.

%2. Repeat for each time step
for k = 1:n
    %3. Store the current values of a, v and h for plotting later.
    A(k) = a;
    V(k) = v;
    H(k) = h;
 
    %4. Calculate the acceleration.
        %4.1 Calculate the force acting on the object.
        %4.2. Use Newton's second law (F = ma) to find the acceleration.
        %We will use the function GetAcceleration that was defined earlier
        %instead.
        a = GetAcceleration(Th,M,g,k*dt,burnTime); % k*dt gives us the time

    %5. Use Euler's method to find the height at the next step.
        h = h + dt * v;
    
    %6. Use Euler's method to find the velocity at the next step.
        v = v + dt * a;

end 

PlotGraphs(A,V,H,T);

% % Comparing analytical and simulated height and velocity at specific time.
% u_analytical = 0;
% a_analytical = 1.9141
% t_analytical = 150
% v_analytical = u_analytical + a_analytical*t_analytical 
% % matlab returns:   287.1150, which corresponds to the simulation results
% s_analytical = u_analytical*t_analytical + 0.5*a_analytical*(t_analytical)^2
% % matlab returns:  2.1534e+04, which corresponds to the simulation results

% Acceleration should be 1.9141 before 150s and -9.81 after 150s. The data
% from the graph are what I would expect.
% Given the shape of the acceleration graph, we would expect the velocity
% graph to peak at 150s before a linear decline where it eventually
% transitions from a positive to negative velocity. As a result, we would
% expect the height graph to have a peak some time after 150s -- where the
% velocity transitions from positive to negative. After which, the height
% would start to decline as the rocket has negative velocity.




