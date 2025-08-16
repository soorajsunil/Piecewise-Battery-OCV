clear, clc, close all; 

% Load
cell_name = 'Molicel-INR18650P28A';
data      = load(strcat('Data/',cell_name,'.mat')); 
[xm,ym]   = dynamicProg(data.xn,data.yn,10); 

% Plot
f=figure(Position=[100,100,600,300]); hold on; box on; grid on; axis('padded')
xlabel('SOC (\%)',Interpreter='latex'); ylabel('OCV (V)',Interpreter='latex'); 
title(cell_name,Interpreter='latex'); 

plot(data.xn*100,data.yn,'o-',MarkerSize=6)
plot(xm*100,ym,'*--',LineWidth=2,MarkerSize=12)

exportgraphics(f,strcat('Figures/',cell_name,'.png'))
