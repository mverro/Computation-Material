%SCF

clc
clear all

%% Import the data
% [~, ~, raw] = xlsread('D:\Tugas\Tugas Akhir\Struktur\Graphene 5x5\Siklus energi.xlsx','Epoksil','F4:G31'); %o1

%[~, ~, raw] = xlsread('D:\Tugas\Tugas Akhir\Struktur\Graphene 5x5\Siklus energi.xlsx','Epoksil','J4:K39'); %o2
% 
%[~, ~, raw] = xlsread('D:\Tugas\Tugas Akhir\Struktur\Graphene 5x5\Siklus energi.xlsx','Epoksil','N4:O35'); %o3
% 
%[~, ~, raw] = xlsread('D:\Tugas\Tugas Akhir\Struktur\Graphene 5x5\Siklus energi.xlsx','Epoksil','R4:S31'); %o4
% 
%[~, ~, raw] = xlsread('D:\Tugas\Tugas Akhir\Struktur\Graphene 5x5\Siklus energi.xlsx','Epoksil','v4:w40'); %o5

% [~, ~, raw] = xlsread('D:\Tugas\Tugas Akhir\Struktur\Graphene 5x5\Siklus energi.xlsx','Hidroksil','B4:C63');
%[~, ~, raw] = xlsread('D:\Tugas\Tugas Akhir\Struktur\Graphene 5x5\Siklus energi.xlsx','Hidroksil','F4:G55');
%[~, ~, raw] = xlsread('D:\Tugas\Tugas Akhir\Struktur\Graphene 5x5\Siklus energi.xlsx','Hidroksil','J4:K62');
%[~, ~, raw] = xlsread('D:\Tugas\Tugas Akhir\Struktur\Graphene 5x5\Siklus energi.xlsx','Hidroksil','N4:O52');
[~, ~, raw] = xlsread('D:\Tugas\Tugas Akhir\Struktur\Graphene 5x5\Siklus energi.xlsx','Hidroksil','R4:S55');
%% Create output variable
data = reshape([raw{:}],size(raw));

%% Allocate imported array to column variable names
Sikluske5 = data(:,1);
TotalEnergiRy5 = data(:,2);
ev = 13.60569807

%% Clear temporary variables
clearvars data raw;


x = Sikluske5
y = TotalEnergiRy5*ev



figure,
set(gcf,'Color','w') 

plot(x,y,'LineWidth',5, 'color' ,'k')
xlabel('Siklus iterasi ke-')
ylabel('Total Energy/ eV')

% Kalau full bagian axis diabaikan saja
title('Konvergensi SCF Graphene + 1-hidroksil')
