%filter raw data with 10-400hz butterworth filter, applied forwards and
%backwards to prevent phase lag. each channel also mean adjusted

%sample frequency
fs = 2048;
tp = 1/fs;

%Select directory to read files from
d = uigetdir(pwd, 'Select a folder');
files = dir(fullfile(d, '*.sig'));
no_of_files = size(files);

%%%%Load files in turn

for i = 1:no_of_files
    file_to_open = strcat(d,'\',files(i).name);
     hh=fopen(file_to_open);    
    EMG = fread(hh,[200, inf],'short');
        
       
[BE,AE] = butter(3,[10,400]*2/fs,'bandpass');
EMG = filtfilt(BE,AE,EMG')';
mean_adj_EMG = mean_adjust(EMG);

sensor1 = remove_bad_channels(mean_adj_EMG(1:64,:));
sensor2 = remove_bad_channels(mean_adj_EMG(65:128,:));
sensor3 = remove_bad_channels(mean_adj_EMG(129:192,:));
%remove bad channels here, store each sensor record separately
cd filtered_data;
save(strcat(files(i).name,'-filtered.mat'),'EMG','mean_adj_EMG','sensor1','sensor2','sensor3');
cd ..;
end