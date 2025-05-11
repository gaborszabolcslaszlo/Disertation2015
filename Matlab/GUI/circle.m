function [ x ,y] = circle( px,py,rad )
%CIRCLE Summary of this function goes here
%   Detailed explanation goes here
ts=2*pi/199;
x=sin(-pi:ts:pi).*rad+ones(1,200)*px;
y=cos(-pi:ts:pi).*rad+ones(1,200)*py;

end

