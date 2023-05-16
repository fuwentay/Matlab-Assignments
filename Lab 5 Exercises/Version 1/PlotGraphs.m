%Fu Wen Tay, 20 Feb, Exercise 4b: Version 1

%Plotting the results of height (m), velocity (ms^-1), acceleration (ms^-2)
%and fuel mass (kg)
function graphs = PlotGraphs(plotdata)
    A = plotdata.A;
    V = plotdata.V;
    H = plotdata.H;
    T = plotdata.T;
    M = plotdata.M;
    
    %plotting 4 subplots together
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
    ylabel(' fuel mass (kg)')
    xlabel('time (s)')
    
    %main title
    sgt = sgtitle('Version 1: Constant Acceleration, No Thrust Model');

end