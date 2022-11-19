%Fitting Data
%Fu Wen Tay

%Defining coordinates
% a=(-1,4);
% b=(0,2);
% c=(1,0);
% d=(2,4);
x=[-1;0;1;2];
y=[4;2;0;4];

%Creating and plotting cubic equation
p=polyfit(x,y,3)
X=[-3:0.1:3]
Y=polyval(p,X)

plot(X,Y,'g-')

%Plotting data points
point_x=[-1,0,1,2];
point_y=[4,2,0,4];
hold on
plot(point_x,point_y,'Rx')

