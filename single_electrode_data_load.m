d = uigetdir(pwd, 'Select a folder');
files = dir(fullfile(d, '*.sig'));

no_of_files = size(files);

for i = 1:no_of_files
    file_to_open = strcat(d,'\',files(i).name);
     hh=fopen(file_to_open);    
    EMG = fread(hh,[16, inf],'short');
    
    
       
[BE,AE] = butter(3,[20,500]*2/2048,'bandpass');
EMG = filtfilt(BE,AE,EMG')';

EMG = abs(EMG);

cd single_electrode_1;
saveName = strcat(files(i).name,'_se1','.mat');
save(saveName,'EMG');
cd ..;
end