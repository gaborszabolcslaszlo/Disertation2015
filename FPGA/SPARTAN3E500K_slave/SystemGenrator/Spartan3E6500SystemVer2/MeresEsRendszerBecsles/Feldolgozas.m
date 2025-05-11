filename = 'Meresek.xls';
sheet = 1;
u=[10 1 2 3;4 5 6 7];
[~,~,dataFromExcel] = xlsread(filename,sheet);
[sa,sb]=size(dataFromExcel);
xlRange = strcat('A',num2str(sa+1));
A = {'Temperature','ssx'; 1 2;2 2 ;3 3};
xlswrite(filename,A,sheet,xlRange)

