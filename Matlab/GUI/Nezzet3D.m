clear all;
close all;
clc;
R=1.3
ref=[50 0 0];
d3=2;
px=0
py=0
pz=0
pointsX=[0-px 2-px 0-px 2-px];
pointsY=[2-py 2-py 2-py 2-py];
pointsZ=[5-pz 1-pz 7-pz 1-pz];
alfa1=-90;
alfa2=-45;
alfa3=-45;
alfa4=-45;
n = [0 0 1]';
p=plot3([pointsZ(1) pointsZ(1) pointsZ(3) pointsZ(3)],pointsX(),pointsY());
hold on;
set(p(1),'linewidth',3);
p=plot3([pointsZ(3) pointsZ(3) pointsZ(1) pointsZ(1)],pointsX(),pointsY());
hold on;
set(p(1),'linewidth',3);
drawPlane(n,2,'c');
X=[pointsX(1) pointsX(1)-(cos(2*pi*alfa1/360)*R) ];
Y=[pointsY(1) (sin(2*pi*alfa1/360)*R)+pointsY(1) ];
h=plot3([pointsZ(1) pointsZ(1)],X,Y,'r');
set(h(1),'linewidth',4);
text(pointsZ(1),X(1),Y(1)+0.1,'A1');

X=[pointsX(2) (cos(2*pi*alfa2/360)*R)+pointsX(2) ];
Y=[pointsY(2) (sin(2*pi*alfa2/360)*R)+pointsY(2) ];
f=plot3([pointsZ(1) pointsZ(1)],X,Y,'r');
set(f(1),'linewidth',4);
text(pointsZ(1),X(1),Y(1)+0.1,'A2');

X=[pointsX(3) pointsX(3)-(cos(2*pi*alfa3/360)*R) ];
Y=[pointsY(3) (sin(2*pi*alfa3/360)*R)+pointsY(3) ];
f=plot3([pointsZ(3) pointsZ(3)],X,Y,'r');
set(f(1),'linewidth',4);
text(pointsZ(3),X(1),Y(1)+0.1,'A3');

X=[pointsX(4) (cos(2*pi*alfa4/360)*R)+pointsX(4) ];
Y=[pointsY(4) (sin(2*pi*alfa4/360)*R)+pointsY(4) ];
f=plot3([pointsZ(3) pointsZ(3)],X,Y,'r');
set(f(1),'linewidth',4);
text(pointsZ(3),X(1),Y(1)+0.1,'A4');
hold on;

%%scatter(pointsX,pointsY);
grid on;
[x,y]=circle(pointsX(1),pointsY(1), R);
plot3( ones(1,length(x))*pointsZ(1) ,x,y,'--r')
[x,y]=circle(pointsX(2),pointsY(2), R);
plot3(ones(1,length(x))*pointsZ(1),x,y,'--r');
[x,y]=circle(pointsX(3),pointsY(3), R);
plot3( ones(1,length(x))*pointsZ(3) ,x,y,'--r')
[x,y]=circle(pointsX(4),pointsY(4), R);
plot3(ones(1,length(x))*pointsZ(3),x,y,'--r')
axis([-2 2 -2 2 0 2]);
drawPlane(n,'y'); 
hold on;