clc, clear, close all
% Load Band Structure
% B_

% ==============================================
% LOAD DATA

% di file espresso.band1.gnu ada baris yg kosong
% itu batasan satu garis kurva band. Posisi baris yg kosong itu yg akan
% digunakan untuk plot garis band (Nsplit).
Nsplit = 183; 

folderName = 'graphene5x5';
fileName = 'espresso.band1.gnu';

data = load([folderName '\' fileName]);
x0 = data(:,1);
y0 = data(:,2);

folderName = 'GrapheneO1';
fileName = 'espresso.band1.gnu';

data = load([folderName '\' fileName]);
x1 = data(:,1);
y1 = data(:,2);

folderName = 'GrapheneO2';
fileName = 'espresso.band1.gnu';

data = load([folderName '\' fileName]);
x2 = data(:,1);
y2 = data(:,2);

folderName = 'GrapheneO3';
fileName = 'espresso.band1.gnu';

data = load([folderName '\' fileName]);
x3 = data(:,1);
y3 = data(:,2);

folderName = 'GrapheneO4';
fileName = 'espresso.band1.gnu';

data = load([folderName '\' fileName]);
x4 = data(:,1);
y4 = data(:,2);

folderName = 'GrapheneO5';
fileName = 'espresso.band1.gnu';

data = load([folderName '\' fileName]);
x5 = data(:,1);
y5 = data(:,2);

folderName = 'GrapheneOH';
fileName = 'espresso.band1.gnu';

data = load([folderName '\' fileName]);
x6 = data(:,1);
y6 = data(:,2);

folderName = 'GrapheneOH2';
fileName = 'espresso.band1.gnu';

data = load([folderName '\' fileName]);
x7 = data(:,1);
y7 = data(:,2);

folderName = 'GrapheneOH3';
fileName = 'espresso.band1.gnu';

data = load([folderName '\' fileName]);
x8 = data(:,1);
y8 = data(:,2);

folderName = 'GrapheneOH4';
fileName = 'espresso.band1.gnu';

data = load([folderName '\' fileName]);
x9 = data(:,1);
y9 = data(:,2);

folderName = 'GrapheneOH5';
fileName = 'espresso.band1.gnu';

data = load([folderName '\' fileName]);
x10 = data(:,1);
y10= data(:,2);
% ==============================================
% PLOT
figure,
set(gcf,'Color','w') % Set Figure Background to white(w)

% Plot Garis Arah Momentum
% K_POINTS {crystal_b}
% 12
% gG     20
% M      20
% K      20
% gG     20
% A      20
% L      20
% H      20
% A      0
% L      20
% M      0
% K      20
% H      0
plot([0 0],[-27 10],'-k','LineWidth',1.0)           % Posisi \Gamma gG
hold on
plot([x0(20) x0(20)],[-27 10],':k','LineWidth',1.0) % Posisi M
plot([x0(40) x0(40)],[-27 10],':k','LineWidth',1.0) % Posisi K
plot([x0(60) x0(60)],[-27 10],':k','LineWidth',1.0) % Posisi \Gamma
plot([x0(80) x0(80)],[-27 10],':k','LineWidth',1.0) % Posisi 
plot([x0(100) x0(100)],[-27 10],':k','LineWidth',1.0) % Posisi 
plot([x0(120) x0(120)],[-27 10],':k','LineWidth',1.0) % Posisi 
plot([x0(140) x0(140)],[-27 10],':k','LineWidth',1.0) % Posisi 
plot([x0(160) x0(160)],[-27 10],':k','LineWidth',1.0) % Posisi 
plot([x0(180) x0(180)],[-27 10],':k','LineWidth',1.0) % Posisi 
plot([-100 100],[0 0],'--k','LineWidth',1.0)

% Data Graphene 5x5
L = length(x0)/Nsplit;
for ni = 1:L
    % Maksud di bawah ini load data 1-183,184-2*183,(2*183+1)-3*183, ...
    plot(x0((ni-1)*Nsplit+1:ni*Nsplit), ...
         y0((ni-1)*Nsplit+1:ni*Nsplit)-(-1.5137),'-', ...
         'LineWidth',2.0,'Color',[0 0 1]), hold on
end

% 
% % Data Graphene + O1
% L = length(x1)/Nsplit; % Nilainya beda dengan L sebelumnya
% for ni = 1:L
%     plot(x1((ni-1)*Nsplit+1:ni*Nsplit), ...
%          y1((ni-1)*Nsplit+1:ni*Nsplit)-(-1.633),'-', ...
%          'LineWidth',2.0,'Color',[0 0 0.5]), hold on
% end
% 
% 
% % Data Graphene + O2
% L = length(x2)/Nsplit; % Nilainya beda dengan L sebelumnya
% for ni = 1:L
%     plot(x2((ni-1)*Nsplit+1:ni*Nsplit), ...
%          y2((ni-1)*Nsplit+1:ni*Nsplit)-(-1.772),'-', ...
%          'LineWidth',2.0,'Color',[0 1 0]), hold on
% end
% 
% 
% % Data Graphene + O3
% L = length(x3)/Nsplit; % Nilainya beda dengan L sebelumnya
% for ni = 1:L
%     plot(x3((ni-1)*Nsplit+1:ni*Nsplit), ...
%          y3((ni-1)*Nsplit+1:ni*Nsplit)-(-1.629),'-', ...
%          'LineWidth',2.0,'Color',[0 0.5 0]), hold on
% end
% 
% % Data Graphene + O4
% L = length(x4)/Nsplit; % Nilainya beda dengan L sebelumnya
% for ni = 1:L
%     plot(x4((ni-1)*Nsplit+1:ni*Nsplit), ...
%          y4((ni-1)*Nsplit+1:ni*Nsplit)-(-1.719),'-', ...
%          'LineWidth',2.0,'Color',[1 0 0]), hold on
% end
% 
% % Data Graphene + O5
% L = length(x5)/Nsplit; % Nilainya beda dengan L sebelumnya
% for ni = 1:L
%     plot(x5((ni-1)*Nsplit+1:ni*Nsplit), ...
%          y5((ni-1)*Nsplit+1:ni*Nsplit)-(-1.750),'-', ...
%          'LineWidth',2.0,'Color',[0.5 0 0]), hold on
% end

% Data Graphene + OH1
L = length(x6)/Nsplit; % Nilainya beda dengan L sebelumnya
for ni = 1:L
    plot(x6((ni-1)*Nsplit+1:ni*Nsplit), ...
         y6((ni-1)*Nsplit+1:ni*Nsplit)-(-1.796),'-', ...
         'LineWidth',2.0,'Color',[0 0 0.5]), hold on
end

% Data Graphene + OH2
L = length(x7)/Nsplit; % Nilainya beda dengan L sebelumnya
for ni = 1:L
    plot(x7((ni-1)*Nsplit+1:ni*Nsplit), ...
         y7((ni-1)*Nsplit+1:ni*Nsplit)-(-1.796),'-', ...
         'LineWidth',2.0,'Color',[0 1 0]), hold on
end

% Data Graphene + OH3
L = length(x8)/Nsplit; % Nilainya beda dengan L sebelumnya
for ni = 1:L
    plot(x8((ni-1)*Nsplit+1:ni*Nsplit), ...
         y8((ni-1)*Nsplit+1:ni*Nsplit)-(-1.724),'-', ...
         'LineWidth',2.0,'Color',[0 0.5 0]), hold on
end

% Data Graphene + OH4
L = length(x5)/Nsplit; % Nilainya beda dengan L sebelumnya
for ni = 1:L
    plot(x9((ni-1)*Nsplit+1:ni*Nsplit), ...
         y9((ni-1)*Nsplit+1:ni*Nsplit)-(-1.806),'-', ...
         'LineWidth',2.0,'Color',[1 0 0]), hold on
end

% Data Graphene + OH5
L = length(x5)/Nsplit; % Nilainya beda dengan L sebelumnya
for ni = 1:L
    plot(x10((ni-1)*Nsplit+1:ni*Nsplit), ...
         y10((ni-1)*Nsplit+1:ni*Nsplit)-(-1.826),'-', ...
         'LineWidth',2.0,'Color',[0.5 0 0]), hold on
end


set(gca,'FontSize',16,'LineWidth',2.0,'Xtick',[0;x0(20);x0(40);x0(60);x0(80);x0(100);x0(120);x0(140);x0(160)],'XTickLabel',{'?','M','K','?','A','L','H','A'})

xlabel('')
ylabel('Energy/ eV')

% Kalau full bagian axis diabaikan saja
title('Struktur Pita Energi')
hold on
% axis([0 x0(140) -5 5])
axis([0 x0(140) -1.8 1.8])
% axis([0 x0(60) -1 1])
