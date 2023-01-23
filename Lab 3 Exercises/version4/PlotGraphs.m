%Fu Wen Tay, 23Jan, Exercise 3d: Version 4

%Plotting the results of height (m), velocity (ms^-1) and acceleration
%(ms^-2)
function graphs = PlotGraphs(A, V, H, T, M)
    %plotting 3 subplots together
    subplot(4,1,1);
    graphs = plot(T,H,'r')
    ylabel('height (m)')
    
    subplot(4,1,2);
    graphs = plot(T,V,'b')
    ylabel('velocity (ms^{-1})')
    
    subplot(4,1,3);
    graphs = plot(T,A,'g')
    ylabel('acceleration (ms^{-2})')
    
    subplot(4,1,4);
    graphs = plot(T,M)
    ylabel('mass (kg)')
    xlabel('time (s)')
    
    %main title
    sgt = sgtitle('Version 2: Constant Mass and Variable Thrust Model');

end