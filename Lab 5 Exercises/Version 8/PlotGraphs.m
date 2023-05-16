%Fu Wen Tay, 15 May, Exercise 5b: Version 8

%Plotting the results of height (m), velocity (ms^-1), acceleration (ms^-2)
%and fuel mass (kg)
function graphs = PlotGraphs(plotdata)
    A = plotdata.A;
    V = plotdata.V;
    VT = plotdata.VT;
    H = plotdata.H;
    T = plotdata.T;
    M = plotdata.M;
    
    % plotting 4 subplots together
    subplot(4,1,1);
    graphs = plot(T,H,'r');
    ylabel('height (m)');
    
    % velocity
    subplot(4,1,2);
    graphs = plot(T,V,'b');
    hold
    graphs = plot(T,VT,'b--');    
    ylabel('velocity (ms^{-1})');
    
    % finding velocity upon landing
    vland = V(end);
    tland = T(end);
    k1 = num2str(vland);
    k2 = 'Velocity upon landing =';
    k3 = strcat(k2, k1);
    k4 = strcat(k3, 'm/s');
    text(tland, vland, k4);

    % adding legend to velocity plot
    legend('Lander Velocity','Target Velocity','Location','southeast')
    
    % acceleration
    subplot(4,1,3);
    graphs = plot(T,A,'g');
    ylabel('acceleration (ms^{-2})');

    % finding maximum acceleration
    [maxA,indexMaxA] = max(A);
    maxTA = T(indexMaxA);
    i1 = num2str(maxA);
    i2 = 'Max Acceleration =';
    i3 = strcat(i2,i1);
    i4 = strcat(i3, 'm/s^2');
    text(maxTA+2,maxA,i4);    

    % finding minimum acceleration
    [minA,indexMinA] = min(A);
    minTA = T(indexMinA);
    j1 = num2str(minA);
    j2 = 'Min Acceleration =';
    j3 = strcat(j2,j1);
    j4 = strcat(j3, 'm/s^2');
    text(minTA+2,minA,j4);   

    % mass
    subplot(4,1,4);
    graphs = plot(T,M);
    ylabel(' fuel mass (kg)');
    xlabel('time (s)');

    % finding minimum fuel mass
    [minM,index] = min(M);
    minT = T(index);
    s1 = num2str(minM);
    s2 = 'Fuel mass left =';
    s3 = strcat(s2,s1);
    s4 = strcat(s3," kg");
    text(minT,minM+500,s4);
    
    %main title
    sgt = sgtitle('Build 5: Constant Target Velocity Controller (Thrust = Constant 50000N, Target Velocity = 0m/s)');

end