figure(1)                       
h=subplot(3,1,1);
%range=[1:1:]
hold on;
plot(logData.giro(1,:),'r');            
plot(logData.giro(2,:),'g');
plot(logData.giro(3,:),'b'); 
h=subplot(3,1,2);                       
hold on;
plot(logData.giro(4,:),'r');            
plot(logData.giro(5,:),'g');
plot(logData.giro(6,:),'b');
h=subplot(3,1,3);
plot((logData.giro(10,:)./340)+36.53,'r')