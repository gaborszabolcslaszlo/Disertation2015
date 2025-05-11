function [ dataout ] = Elokeszito( ydata,mintavetelekSzama )
%ELOKESZITO Summary of this function goes here
%   Detailed explanation goes here
[sa,sb]=size(ydata);
row=fix(sb/mintavetelekSzama);
dataout=reshape(ydata,[row,mintavetelekSzama]);
end

