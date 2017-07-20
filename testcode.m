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


