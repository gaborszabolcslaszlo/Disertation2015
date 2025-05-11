clear all;
close all;
load 'motorstandmeres2.mat';
y=motorStandDCTs0_005sUmax(840:1800);
t=0:0.005:192000;
plot(y);
a=65000;
n=length(y);
yst=mean(y(500:600));
%%erosites
k=yst/a;
%%idoallando
p=find(y>(yst*0.63));
T=t(p(1));
%%holtido

p=find(y>(yst*0.02));
ta=t(p(1));

tau=0;
s=tf('s');
T=T-0-tau;
H=((k)/(T*s+1))*exp(-tau*s)




