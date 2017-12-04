close all
clear all

fsamp = 2048;          % Sample frequency in Hz

cd 'Raw data';
[file_name, file_path] = uigetfile('*.sig','Select the signal file to plot'); 
Sigfilename = [file_path file_name];

cd ..;

    hh=fopen(Sigfilename);    
    EMG = fread(hh,[200, inf],'short');
    
    
       
[BE,AE] = butter(3,[20,500]*2/2048,'bandpass');
EMG = filtfilt(BE,AE,EMG')';

EMG = abs(EMG);


% figure('Name','Sensor Grid 1')
% plot(EMG(25:30,:))
% 
% figure('Name','Sensor Grid 2')
% plot(EMG(101:106,:))
% 
% 
% figure('Name','Sensor Grid 3')
% plot(EMG(152:157,:))

rmsA = rms(EMG(1:64,:));
rmsB = rms(EMG(65:128,:));
rmsC = rms(EMG(129:192,:));

% figure('Name','Sensor 1')
% plot(rmsA)
% 
% figure('Name','Sensor 2')
% plot(rmsB)
% 
% figure('Name','Sensor 3')
% plot(rmsC)

%save each matrix, load all and consider classification. dimensional
%reduction?

EMGtrans = EMG';

[coeff,score,latent,~,explained] = pca(EMGtrans);

