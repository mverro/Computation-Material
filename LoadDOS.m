clc, clear, close all

%%import data

filename = 'D:\Tugas\Tugas Akhir\Struktur\Graphene 5x5\graphene5x5\espresso.pdos_tot';
startRow = 2;
formatSpec = '%8f%12f%f%[^\n\r]';
fileID = fopen(filename,'r');
dataArray = textscan(fileID, formatSpec, 'Delimiter', '', 'WhiteSpace', '', 'EmptyValue' ,NaN,'HeaderLines' ,startRow-1, 'ReturnOnError', false);
fclose(fileID);
x0 = dataArray{:, 1};
y0 = dataArray{:, 2};
en = dataArray{:, 3};
clearvars filename startRow formatSpec fileID dataArray ans;

filename = 'D:\Tugas\Tugas Akhir\Struktur\Graphene 5x5\GrapheneO1\GrapheneO1\espresso.pdos_tot';
startRow = 2;
formatSpec = '%8f%12f%f%[^\n\r]';
fileID = fopen(filename,'r');
dataArray = textscan(fileID, formatSpec, 'Delimiter', '', 'WhiteSpace', '', 'EmptyValue' ,NaN,'HeaderLines' ,startRow-1, 'ReturnOnError', false);
fclose(fileID);
x1 = dataArray{:, 1};
y1 = dataArray{:, 2};
en1 = dataArray{:, 3};
clearvars filename startRow formatSpec fileID dataArray ans;

filename = 'D:\Tugas\Tugas Akhir\Struktur\Graphene 5x5\GrapheneO2\GrapheneO2\espresso.pdos_tot';
startRow = 2;
formatSpec = '%8f%12f%f%[^\n\r]';
fileID = fopen(filename,'r');
dataArray = textscan(fileID, formatSpec, 'Delimiter', '', 'WhiteSpace', '', 'EmptyValue' ,NaN,'HeaderLines' ,startRow-1, 'ReturnOnError', false);
fclose(fileID);
x2 = dataArray{:, 1};
y2 = dataArray{:, 2};
en2 = dataArray{:, 3};
clearvars filename startRow formatSpec fileID dataArray ans;

filename = 'D:\Tugas\Tugas Akhir\Struktur\Graphene 5x5\GrapheneO3\GrapheneO3\GrapheneO3\espresso.pdos_tot';
startRow = 2;
formatSpec = '%8f%12f%f%[^\n\r]';
fileID = fopen(filename,'r');
dataArray = textscan(fileID, formatSpec, 'Delimiter', '', 'WhiteSpace', '', 'EmptyValue' ,NaN,'HeaderLines' ,startRow-1, 'ReturnOnError', false);
fclose(fileID);
x3 = dataArray{:, 1};
y3 = dataArray{:, 2};
en3 = dataArray{:, 3};
clearvars filename startRow formatSpec fileID dataArray ans;


filename = 'D:\Tugas\Tugas Akhir\Struktur\Graphene 5x5\GrapheneO4\GrapheneO4\espresso.pdos_tot';
startRow = 2;
formatSpec = '%8f%12f%f%[^\n\r]';
fileID = fopen(filename,'r');
dataArray = textscan(fileID, formatSpec, 'Delimiter', '', 'WhiteSpace', '', 'EmptyValue' ,NaN,'HeaderLines' ,startRow-1, 'ReturnOnError', false);
fclose(fileID);
x4 = dataArray{:, 1};
y4 = dataArray{:, 2};
en4 = dataArray{:, 3};
clearvars filename startRow formatSpec fileID dataArray ans;

filename = 'D:\Tugas\Tugas Akhir\Struktur\Graphene 5x5\GrapheneO5\GrapheneO5\espresso.pdos_tot';
startRow = 2;
formatSpec = '%8f%12f%f%[^\n\r]';
fileID = fopen(filename,'r');
dataArray = textscan(fileID, formatSpec, 'Delimiter', '', 'WhiteSpace', '', 'EmptyValue' ,NaN,'HeaderLines' ,startRow-1, 'ReturnOnError', false);
fclose(fileID);
x5 = dataArray{:, 1};
y5 = dataArray{:, 2};
en5 = dataArray{:, 3};
clearvars filename startRow formatSpec fileID dataArray ans;


 fermi1 = -1.514
 fermi2 = -1.633
 fermi3 = -1.772
 fermi4 = -1.629
 fermi5 = -1.719
 fermi6 = -1.750
 
%%
th = 0.05 ;
for n = 1:length(y0) ; 
if y0(n)<=th 
    y0(n) = NaN ;
end
end
for n = 1:length(y1) ; 
if y1(n)<=th 
    y1(n) = NaN ;
end
end
for n = 1:length(y2) ; 
if y2(n)<=th 
    y2(n) = NaN ;
end
end
for n = 1:length(y3) ; 
if y3(n)<=th 
    y3(n) = NaN ;
end
end
for n = 1:length(y4) ; 
if y4(n)<=th 
    y4(n) = NaN ;
end
end

for n = 1:length(y5) ; 
if y5(n)<=th 
    y5(n) = NaN ;
end
end



figure,
set(gcf,'Color','w') 
plot([0 0],[-27 100],'--k','LineWidth',1.0)
hold on
plot(x0-fermi1,y0,'LineWidth',2,'Color',[0 0 1]) 
hold on
plot(x1-fermi2,y1,'LineWidth',2,'Color',[0 0 0.5]) 
hold on
plot(x2-fermi3,y2,'LineWidth',2,'Color',[0 1 0]) 
hold on
plot(x3-fermi4,y3,'LineWidth',2,'Color',[0 0.5 0]) 
hold on
plot(x4-fermi5,y4,'LineWidth',2,'Color',[1 0 0]) 
hold on
plot(x5-fermi6,y5,'LineWidth',2,'Color',[0.5 0 0]) 

set(gca,'FontSize',16,'LineWidth',2.0)

xlabel('Energy/eV')
ylabel('DOS(States/eV)')
title('DOS ')
% axis([-30 12 0 60 ])
% axis([-5 5 0 20 ])
axis([-1.8 1.8 0 5 ])



