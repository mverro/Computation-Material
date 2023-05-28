
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


filename = 'D:\Tugas\Tugas Akhir\Struktur\Graphene 5x5\referensi DOS graphene.csv';
delimiter = ';';
formatSpec = '%f%f%[^\n\r]';
fileID = fopen(filename,'r');
dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter,  'ReturnOnError', false);
fclose(fileID);
x1 = dataArray{:, 1};
y1 = dataArray{:, 2};
clearvars filename delimiter formatSpec fileID dataArray ans;



 fermi1 = -1.514
 
 
 
 figure,
set(gcf,'Color','w') 
plot([0 0],[-27 100],'--k','LineWidth',1.0)
hold on


plot(x0-fermi1,y0,'LineWidth',2) 
hold on
plot(x1-(-0.5),y1,'LineWidth',2) 
hold on

set(gca,'FontSize',16,'LineWidth',2.0)

xlabel('Energy/eV')
ylabel('DOS/eV')
title('DOS ')
axis([-30 12 0 60 ])
