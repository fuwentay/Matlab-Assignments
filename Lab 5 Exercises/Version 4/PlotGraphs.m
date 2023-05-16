%Fu Wen Tay, 20 Feb, Exercise 4b: Version 4

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
    graphs = plot(T,H,'r');
    ylabel('height (m)');
    
    subplot(4,1,2);
    graphs = plot(T,V,'b');
    ylabel('velocity (ms^{-1})');
    
    subplot(4,1,3);
    graphs = plot(T,A,'g');
    ylabel('acceleration (ms^{-2})');

    subplot(4,1,4);
    graphs = plot(T,M);
    ylabel(' fuel mass (kg)');
    xlabel('time (s)');

    %finding minimum fuel mass
    [minM,index] = min(M);
    minT = T(index);
    s1 = num2str(minM);
    s2 = 'min fuel mass =';
    s3 = strcat(s2,s1);
    s4 = strcat(s3," kg");
    text(minT,minM+500,s4);
    
    %main title
    sgt = sgtitle('Version 4: Constant Acceleration, Thrust Model, Variable Mass, Variable Drag');

end