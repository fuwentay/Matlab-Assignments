%Fu Wen Tay, 23Jan, Exercise 3a: Version 1

%Plotting the results of height (m), velocity (ms^-1) and acceleration
%(ms^-2)
function graphs = PlotGraphs(A, V, H, T)
    %plotting 3 subplots together
    subplot(3,1,1);
    graphs = plot(T,H,'r')
    ylabel('height (m)')
    subplot(3,1,2);
    graphs = plot(T,V,'b')
    ylabel('velocity (ms^{-1})')
    subplot(3,1,3);
    graphs = plot(T,A,'g')
    ylabel('acceleration (ms^{-2})')
    xlabel('time (s)')
    
    %main title
    sgt = sgtitle('Version 1: Constant Mass and Constant Thrust Model');

end