%Fu Wen Tay, 15 May, Exercise 5b: Version 9

function [vLand, mLand, aMax] = CheckCriteria(state, plotdata)
% Checking if design criteria passed or failed

    g = state.g;

    A = plotdata.A;
    V = plotdata.V;
    VT = plotdata.VT;
    H = plotdata.H;
    T = plotdata.T;
    M = plotdata.M;

    % Defining parameters
    vLand = V(end);         % landing velocity
    mLand = M(end);         % fuel remaining at landing
    aMax = max(A);          % maximum acceleration

    % Criteria 1: Touchdown velocity between 0 and -2m/s
    if vLand < 0 && vLand > -2
        disp("Landing velocity =" + vLand + "m/s. Criteria #1 Passed!")
    else
        disp("Landing velocity =" + vLand + "m/s. Criteria #1 Failed!")
    end

    % Criteria 2: Fuel mass upon landing is greater than 0kg.
    if mLand > 0
        disp("Fuel remaining at landing =" + mLand + "kg. Criteria #2 Passed!")
    else
        disp("Fuel remaining at landing =" + mLand + "kg. Criteria #2 Failed!")
    end

    % Criteria 3: Maximum acceleration is less than 6g.
    if aMax < 6*g
        disp("Max Acceleration =" + aMax + "m/s^2. Criteria #3 Passed!")
    else
        disp("Max Acceleration =" + aMax + "m/s^2. Criteria #3 Failed!")
    end