figure(2)
len=length(logData.motor(13,:))
kezd=1;
veg=len;


subplot(2,1,1)
plot(logData.motor(15,kezd:veg));
hold on;
plot(logData.motor(23,kezd:veg),'r');
subplot(2,1,2)
plot(logData.motor(16,kezd:veg),'c');



