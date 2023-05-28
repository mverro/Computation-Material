clc, clear, close all
% Load Band Structure
% B_

% ==============================================
% LOAD DATA

% di file espresso.band1.gnu ada baris yg kosong
% itu batasan satu garis kurva band. Posisi baris yg kosong itu yg akan
% digunakan untuk plot garis band (Nsplit).
Nsplit = 183; 

folderName = 'GrapheneOH5';
fileName = 'espresso.band1.gnu';

data = load([folderName '\' fileName]);
x0 = data(:,1);
y0 = data(:,2);


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
plot([x0(20) x0(20)],[-27 10],'--k','LineWidth',1.0) % Posisi M
plot([x0(40) x0(40)],[-27 10],'--k','LineWidth',1.0) % Posisi K
plot([x0(60) x0(60)],[-27 10],'--k','LineWidth',1.0) % Posisi \Gamma
plot([x0(80) x0(80)],[-27 10],'--k','LineWidth',1.0) % Posisi 
plot([x0(100) x0(100)],[-27 10],'--k','LineWidth',1.0) % Posisi 
plot([x0(120) x0(120)],[-27 10],'--k','LineWidth',1.0) % Posisi 
plot([x0(140) x0(140)],[-27 10],'--k','LineWidth',1.0) % Posisi 
plot([x0(160) x0(160)],[-27 10],'--k','LineWidth',1.0) % Posisi 
plot([x0(180) x0(180)],[-27 10],'--k','LineWidth',1.0) % Posisi 
plot([-100 100],[0 0],'--k','LineWidth',1.0)

% Data Graphene 5x5
L = length(x0)/Nsplit;
for ni = 1:L
    % Maksud di bawah ini load data 1-183,184-2*183,(2*183+1)-3*183, ...
    plot(x0((ni-1)*Nsplit+1:ni*Nsplit), ...
         y0((ni-1)*Nsplit+1:ni*Nsplit)-(-1.5137),'-', ...
         'LineWidth',2.0,'Color',[0 0 1]), hold on
end


set(gca,'FontSize',16,'LineWidth',2.0,'Xtick',[0;x0(20);x0(40);x0(60);x0(80);x0(100);x0(120);x0(140);x0(160)],'XTickLabel',{'?','M','K','?','A','L','H','A'})

xlabel('')
ylabel('Energy/ eV')

% Kalau full bagian axis diabaikan saja
title('Graphene + 5OH')
axis([0 x0(140) -1.8 1.8])

