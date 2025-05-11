clear all;
close all;
clc
hd=0;
xd=0.3;
vd=0.6
R=30;
N=180;
dk=(2*pi*R)/N;
periodus=dk;
duty=(dk-vd)/dk*100;
delay=hd;