run('Figures/init_plot.m');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
file_name = 'Molicel-INR21700P42A';
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
data    = load(strcat('Data/',file_name,'.mat')); 
[xm,ym] = dynamicProg(data.xn,data.yn,10); 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
f=figure; hold on; box on; grid on; axis('padded')
xlabel('SOC (\%)'); ylabel('OCV (V)'); 
plot(data.xn*100,data.yn,'o')
plot(xm*100,ym,'*--',LineWidth=2,MarkerSize=10)
title(file_name); exportgraphics(f,strcat('Figures/',file_name,'.png'))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

