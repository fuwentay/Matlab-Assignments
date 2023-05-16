%Fu Wen Tay, 15 May, Exercise 5b: Version 9
% Running the Lander function multiple times with a for loop to try various
% PWLS

% Initialising
sVel = [-300:3:-100];
VLand = [];
AMax = [];
MLand = [];

% For loop to iterate through different Target Velocities at Height of
% 1500m (sVel)
for i = sVel
    [vLand, mLand, aMax] = LanderFunc(i);
    % storing element in array
    VLand = [VLand vLand];
    AMax = [AMax aMax];
    MLand = [MLand mLand];
end

% Plotting graphs

% Landing Velocity
subplot(3,1,1);
plot(sVel, VLand);
ylabel('Landing Vel. (m/s)');

% Maximum Acceleration
subplot(3,1,2);
plot(sVel, AMax);
ylabel('Max Accel. (m/s^2)');

% Fuel Left
subplot(3,1,3);
plot(sVel, MLand);
ylabel('Fuel Left (kg)');
xlabel('Target Velocity (m/s) at Height of 1500m');
