figure(1)
len=length(logData.motor(13,:))
kezd=105000;
subplot(2,1,1)
plot(logData.motor(13,kezd:len).*5);
hold on;
plot(logData.motor(24,kezd:len).*5,'r');
subplot(2,1,2)
plot(logData.motor(14,kezd:len),'c');
