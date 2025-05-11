[y, nfo] = readRigolWaveform('NewFile4.wfm');
subplot(2,1,1);
plot(y(:,1));
hold on
plot(y(:,2),'r');
subplot(2,1,2);
plot(y(:,1)-y(:,2),'r');