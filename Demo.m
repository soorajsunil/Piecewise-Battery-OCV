clc; clear; close all;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
data    = load('LFP.mat'); 
[xm,ym] = dynamicProg(data.xn,data.yn,10); 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure; hold on; box on; grid on; xlabel('SOC (%)'); ylabel('OCV (V)'); 
plot(data.xn*100,data.yn,'o')
plot(xm*100,ym,'*--',LineWidth=2,MarkerSize=10)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

