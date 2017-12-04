function result = multi_purpose_data_loader(no_of_channels,no_sensors)

d = uigetdir(pwd, 'Select a folder');
files = dir(fullfile(d, '*.sig'));
no_channels = no_of_channels;

no_of_files = size(files);

for i = 1:no_of_files
    file_to_open = strcat(d,'\',files(i).name);
     hh=fopen(file_to_open);    
    EMG = fread(hh,[no_channels, inf],'short');
    
    
       
[BE,AE] = butter(3,[20,500]*2/2048,'bandpass');
EMG = filtfilt(BE,AE,EMG')';

EMG = mean_adjust(EMG);


for j = 1:no_sensors
   sensors(j) = EMG(j * (no_channels/no_sensors): (j+1) * (no_channels/no_sensors) -1,:);
    %create structure with component for each sensor readout, then can
    %separate contractions for each sensor and add to test structures
    
end
cd 'C:\Users\Cathy\Documents\MSc Computer Science\MSc Project - man machine interfaces\Lab software\sandbox\Stage_3_Filtered_EMG_matlab';
saveName = strcat(files(i).name,'.mat');
save(saveName,'EMG','sensors');
cd ..;
end


%today - get system working for hd sensors - variability in generic code
% recap on 2d control pairings, pca on 9 channels to remove channels - see
% effect of removing each channel on pca, regression and classifier?