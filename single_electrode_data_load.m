%runs butterworth filter on each .sig file and saves as matlab file with
%EMG matrix stored as variabl
d = uigetdir(pwd, 'Select a folder');
files = dir(fullfile(d, '*.sig'));
no_channels = 200;

no_of_files = size(files);

for i = 1:no_of_files
    file_to_open = strcat(d,'\',files(i).name);
     hh=fopen(file_to_open);    
    EMG = fread(hh,[no_channels, inf],'short');
    
    
       
[BE,AE] = butter(3,[20,500]*2/2048,'bandpass');
EMG = filtfilt(BE,AE,EMG')';

EMG = mean_adjust(EMG);
cd 'C:\Users\Cathy\Documents\MSc Computer Science\MSc Project - man machine interfaces\Lab software\sandbox\Stage_3_Filtered_EMG_matlab';
saveName = strcat(files(i).name,'.mat');
save(saveName,'EMG');
cd ..;
end