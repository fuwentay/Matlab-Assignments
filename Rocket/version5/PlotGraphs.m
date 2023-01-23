%Fu Wen Tay, 23Jan, Exercise 3e: Version 5

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

    %finding maximum acceleration
    [maxA,index] = max(A)
    maxT = T(index)
    s1 = num2str(maxA)
    s2 = 'max acceleration ='
    s3 = strcat(s2,s1)
    text(maxT,maxA,s3)

    %finding minimum acceleration
    [minA,index] = min(A)
    minT = T(index)
    s1 = num2str(minA)
    s2 = 'min acceleration = '
    s3 = strcat(s2,s1)
    text(minT,minA,s3)

    subplot(4,1,4);
    graphs = plot(T,M)
    ylabel('mass (kg)')
    xlabel('time (s)')
    
    %main title
    sgt = sgtitle('Version 2: Constant Mass and Variable Thrust Model');

end