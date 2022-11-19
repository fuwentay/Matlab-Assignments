%Plotting Functions
%Fu Wen Tay

%a)

%Defining constants and parameters
a=3
x=[-1:0.1:1]

%Defining function
y=(4*x.^3)-a*x

%Plotting function

plot(x,y)

%b)

%for loop
for a = [0:1:5]
        
    % Plot the new line
    plot(x,(4*x.^3)-a*x)
    hold on
    
end