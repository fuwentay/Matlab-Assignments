%Plotting Data
%Fu Wen Tay

load TestData.csv

d = TestData(:,1);
l = TestData(:,2);

plot(d,l)

%Labelling Axis
xlabel('Displacement (mm)');
ylabel('Load (kN)');
title('Load (kN) vs Graph of Displacement (mm)');

%Adding Grid
grid on
hold on

[M,Index]=max(l)

plot(d(Index),M,'Rx')
text(d(Index)+1,M,'Maximum Load')