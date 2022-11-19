%Drawing Shapes, Exercise 2
%Fu Wen Tay

function plotted = drawshape(matrix, colour)
    %determining x and y coordinates
    x = matrix(1,:);
    y = matrix(2,:);
    %plotting data points with colour
    plotted = plot(x,y, colour);
    disp(plotted)
end