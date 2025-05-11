%Kezileg Bealitando Parameterek
Ts=0.001;
orders=[2 4 0];
fileName='MeresekMotor1.mat';
mintavetelekSzama=100;
MotorNumber=1;
%------------------------------------------
meresekY=Elokeszito(ydata,mintavetelekSzama);
meresekU=Elokeszito(udata,mintavetelekSzama);
[sa sb]=size(meresekU);
for i=1:1:sa
[num denum]=SystemBecsles(meresekU(i,:)',meresekY(i,:)',Ts,orders);
Adatok={MotorNumber,Ts,num,denum,meresekU(i,:),meresekY(i,:),date}
MentesFileba(Adatok,fileName);
tf(num,denum);
end;
