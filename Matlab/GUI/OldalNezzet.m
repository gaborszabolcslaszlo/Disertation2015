clear all;
close all;
clc;
R=1.3
pointsX=[3 5];
pointsY=[2 2];
alfa1=0;
alfa2=45;

p=plot(pointsX,pointsY);
hold on;
set(p(1),'linewidth',3);
X=[pointsX(1) pointsX(1)-(cos(2*pi*alfa1/360)*R) ];
Y=[pointsY(1) (sin(2*pi*alfa1/360)*R)+pointsY(1) ];
h=plot(X,Y,'g');
set(h(1),'linewidth',4);
text(X(1),Y(1)+0.1,'A1');

X=[pointsX(2) (cos(2*pi*alfa2/360)*R)+pointsX(2) ];
Y=[pointsY(2) (sin(2*pi*alfa2/360)*R)+pointsY(2) ];
f=plot(X,Y,'g');
set(f(1),'linewidth',4);
text(X(1),Y(1)+0.1,'A2');
scatter(pointsX,pointsY);
grid on;
[x,y]=circle(pointsX(1),pointsY(1), R);
plot(x,y,'--r')
[x,y]=circle(pointsX(2),pointsY(2), R);
plot(x,y,'--r')
axis([1 7 0 4]);



