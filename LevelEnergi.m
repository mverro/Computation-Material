clc
clear all

%% Import the data
[~, ~, raw0_0] = xlsread('D:\Tugas\Tugas Akhir\Struktur\Graphene 5x5\Siklus energi.xlsx','Epoksil','G4:G4');
[~, ~, raw1_0] = xlsread('D:\Tugas\Tugas Akhir\Struktur\Graphene 5x5\Siklus energi.xlsx','Epoksil','G31:G31');
raw = [raw0_0;raw1_0;];

%% Create output variable
TotalEnergiRy1 = reshape([raw{:}],size(raw));

[~, ~, raw0_0] = xlsread('D:\Tugas\Tugas Akhir\Struktur\Graphene 5x5\Siklus energi.xlsx','Epoksil','K4:K4');
[~, ~, raw1_0] = xlsread('D:\Tugas\Tugas Akhir\Struktur\Graphene 5x5\Siklus energi.xlsx','Epoksil','K39:K39');
raw = [raw0_0;raw1_0;];

%% Create output variable
TotalEnergiRy2 = reshape([raw{:}],size(raw));


%% Import the data
[~, ~, raw0_0] = xlsread('D:\Tugas\Tugas Akhir\Struktur\Graphene 5x5\Siklus energi.xlsx','Epoksil','O4:O4');
[~, ~, raw1_0] = xlsread('D:\Tugas\Tugas Akhir\Struktur\Graphene 5x5\Siklus energi.xlsx','Epoksil','O35:O35');
raw = [raw0_0;raw1_0;];

%% Create output variable
TotalEnergiRy3 = reshape([raw{:}],size(raw));


%% Import the data
[~, ~, raw0_0] = xlsread('D:\Tugas\Tugas Akhir\Struktur\Graphene 5x5\Siklus energi.xlsx','Epoksil','S4:S4');
[~, ~, raw1_0] = xlsread('D:\Tugas\Tugas Akhir\Struktur\Graphene 5x5\Siklus energi.xlsx','Epoksil','S31:S31');
raw = [raw0_0;raw1_0;];

%% Create output variable
TotalEnergiRy4 = reshape([raw{:}],size(raw))


%% Import the data
[~, ~, raw0_0] = xlsread('D:\Tugas\Tugas Akhir\Struktur\Graphene 5x5\Siklus energi.xlsx','Epoksil','W4:W4');
[~, ~, raw1_0] = xlsread('D:\Tugas\Tugas Akhir\Struktur\Graphene 5x5\Siklus energi.xlsx','Epoksil','W40:W40');
raw = [raw0_0;raw1_0;];

%% Create output variable
TotalEnergiRy6 = reshape([raw{:}],size(raw));

%% Clear temporary variables
clearvars raw raw0_0 raw1_0;

y = [ TotalEnergiRy1 ]
%y = [ TotalEnergiRy1 ; TotalEnergiRy2;TotalEnergiRy3;TotalEnergiRy4;TotalEnergiRy6]
x = [1 ; 1]


