function [ numm denumm ] = SystemBecsles( u,y,Ts,orders)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
dats=iddata(y,u,Ts);
%%orders=[2 4 0];
HsysB=arx(dats,orders)
[numm denumm]=tfdata(HsysB);
%%ym=dlsim(numm,denumm,u);
%%subplot(1,2,2);stairs(u,'r');
%%hold on;
%%subplot(1,2,2);stairs(ym); 
%%grid on;
end

