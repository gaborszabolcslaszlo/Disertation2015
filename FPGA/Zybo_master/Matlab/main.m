clear all;
clc;
close all;
delete(instrfindall);
mod=2 %% mod =1 conzolos mod=2 grafikus
serialPort = 'COM8'; % define COM port #
plotTitleG = 'Giroszkop '; % plot title
plotTitleA = 'Axcelero '; % plot title
plotTitleDis = 'Tavolsagmero '; % plot title
plotTitleTemp = 'Temperature '; % plot title
xLabel = 'Elapsed Time (s)'; % x-axis label
yLabel = 'Data'; % y-axis label
plotGrid = 'on'; % 'off' to turn off grid
ming = -250; % set y-min
maxg = 250; % set y-max
mina = -10; % set y-min
maxa = 10; % set y-max
minT = -50; % set y-min
maxT = 50; % set y-max
minD = 0; % set y-min
maxD = 500; % set y-max
scrollWidth = 4; % display period in plot, plot entiredata log if <= 0
delay = 0.1; % make sure sample faster than resolution
%Define Function Variables
time = 0;
data1 = 0;
data2 = 0;
data3 = 0;
data1a = 0;
data2a = 0;
data3a = 0;
data1S = 0; %%distancemeter
data1T = 0; %%temperature
data=[];
count = 0;
%Open Serial COM Port
s = serial(serialPort,'Baudrate',115200);
fopen(s);
tic
%%uresiti a buffert
%% fread(s,s.BytesAvailable);
if (s.BytesAvailable>0)
 fread(s,s.BytesAvailable);
 a=1
end
D=[];
if(mod==1) %% konzolos mod
 while(1)
 values = str2double( regexp(fgetl(s),' ','split') ) ;
 [a,b]=size(values);
 data(1:1:6) = values(1:1:6)';
 d=values(8)*0.000224;
 ax=values(1)/16384;
 ay=values(2)/16384;
 az=values(3)/16384;
 gx=values(4)/131 ;
 gy=values(5)/131 ;
 gz=values(6)/131 ;
 T=values(7);
 fprintf(1,'DIS: %3.2f Ax: %3.2f Ay: %3.2f Az: %3.2f Gx: %3.2f Gy:%3.2f Gz: %3.2f T: %3.2f \r\n' ,d,ax,ay,az,gx,gy,gz,T);
 if(b~=8)%% hibas adat jon akkor uresiti a buffert
 if (s.BytesAvailable>0)
 fread(s,s.BytesAvailable);
 a=1
 end
 end
 end
end 
if(mod==2) %% grafikus mod
%Set up Plot
figure(1)
plotGraphGyro = plot(time,data1,'r',time,data2,'b',time,data2,'g' );
title(plotTitleG,'FontSize',15);
xlabel(xLabel,'FontSize',15);
ylabel(yLabel,'FontSize',15);
axis([0 10 ming maxg]);
legend('X','Y','Z');
grid(plotGrid);
figure(2)
plotGraphAxcel = plot(time,data1a,'r',time,data2a,'b',time,data2a,'g');
title(plotTitleA,'FontSize',15);
xlabel(xLabel,'FontSize',15);
ylabel(yLabel,'FontSize',15);
axis([0 10 mina maxa]);
legend('X','Y','Z');
grid(plotGrid);
figure(3)
plotSonic = plot(time,data1S,'r');
title(plotTitleDis,'FontSize',15);
xlabel(xLabel,'FontSize',15);
ylabel(yLabel,'FontSize',15);
axis([0 10 minD maxD]);
legend('Distance cm');
grid(plotGrid);
figure(4)
plotTemp = plot(time,data1S,'r');
title(plotTitleTemp,'FontSize',15);
xlabel(xLabel,'FontSize',15);
ylabel(yLabel,'FontSize',15);
axis([0 10 minT maxT]);
legend('Temp C');
grid(plotGrid);
while (1) %Loop when Plot is Active
 %%values = str2double(strsplit(fgetl(s))) //matlab 2013 verziora
 for(i=1:1:20)
 values = str2double( regexp(fgetl(s),' ','split') ) ; %%uj sorpeolvasasa a serial portrol
 [a,b]=size(values);
 if(b~=8)
 if (s.BytesAvailable>0)
 fread(s,s.BytesAvailable);
 a=1
 end
 else
 count = count + 1;
 time(count) = toc; %Extract Elapsed Time

 ax=values(1)/16384;
 ay=values(2)/16384;
 az=values(3)/16384;
 gx=values(4)/131 ;
 gy=values(5)/131 ;
 gz=values(6)/131 ;
 T=(values(7)/340) + 36.53;
 d=values(8)*0.000224;
 data(:,count)=[ax;ay;az;gx;gy;gz;T;d];
 fprintf(1,'DIS: %3.2f Ax: %3.2f Ay: %3.2f Az: %3.2f Gx: %3.2f Gy:%3.2f Gz: %3.2f T: %3.2f \r\n' ,d,ax,ay,az,gx,gy,gz,T);
 %% dd=values(8)*0.000224
 %% data(1:1:7,count) = values(1:1:7)';
 %% data(8,count)= dd;
 [a b]=size(data);
 if b==1000
 data=data(:,500:1:b);
 time=time(500:1:b);
 count=500;
 end
 if i==20
 %Set Axis according to Scroll Width
 if(scrollWidth > 0)
 set(0, 'currentfigure', 2)
 set(plotGraphAxcel(1),'XData',time(time > time(count)-scrollWidth),'YData',data(1,time > time(count)-scrollWidth));
 set(plotGraphAxcel(2),'XData',time(time > time(count)-scrollWidth),'YData',data(2,time > time(count)-scrollWidth));
 set(plotGraphAxcel(3),'XData',time(time > time(count)-scrollWidth),'YData',data(3,time > time(count)-scrollWidth));
 axis([time(count)-scrollWidth time(count) mina maxa]);
 set(0, 'currentfigure', 1)
set(plotGraphGyro(1),'XData',time(time > time(count)-scrollWidth),'YData',data(4,time > time(count)-scrollWidth));
 set(plotGraphGyro(2),'XData',time(time > time(count)-scrollWidth),'YData',data(5,time > time(count)-scrollWidth));
 set(plotGraphGyro(3),'XData',time(time > time(count)-scrollWidth),'YData',data(6,time > time(count)-scrollWidth));
 axis([time(count)-scrollWidth time(count) ming maxg]);
 set(0, 'currentfigure', 3)
 set(plotSonic(1),'XData',time(time > time(count)-scrollWidth),'YData',data(8,time > time(count)-scrollWidth));
 axis([time(count)-scrollWidth time(count) minD maxD]);
 set(0, 'currentfigure', 4)
 set(plotTemp(1),'XData',time(time > time(count)-scrollWidth),'YData',data(7,time > time(count)-scrollWidth));
 axis([time(count)-scrollWidth time(count) minT maxT]);
 else
 
 set(0, 'currentfigure', 2)
 set(plotGraphAxcel(1),'XData',time,'YData',data(1,:));
 set(plotGraphAxcel(2),'XData',time,'YData',data(2,:));
 set(plotGraphAxcel(3),'XData',time,'YData',data(3,:));
axis([0 time(count) mina maxa]);
 set(0, 'currentfigure', 1)
 set(plotGraphGyro(1),'XData',time,'YData',data(4,:));
 set(plotGraphGyro(2),'XData',time,'YData',data(5,:));
 set(plotGraphGyro(3),'XData',time,'YData',data(6,:));
 axis([0 time(count) ming maxg]);
set(0, 'currentfigure', 3)
 set(plotSonic(1),'XData',time,'YData',data(8,:));
 axis([0 time(count) minD maxD]);
 set(0, 'currentfigure', 4)
 set(plotTemp(1),'XData',time,'YData',data(7,:));
 axis([0 time(count) minT max T]);
end
 %Allow MATLAB to Update Plot
 pause(delay);
 end
 end
 end

end
end
%Close Serial COM Port and Delete useless Variables
fclose(s);
clear count dat delay max min plotGraph plotGrid plotTitle s ...
 scrollWidth serialPort xLabel yLabel;
disp('Session Terminated...');