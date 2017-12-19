
d = uigetdir(pwd, 'Select a folder');
files = dir(fullfile(d, '*.sig'));

no_of_files = size(files);

for i = 1:no_of_files
    file_to_open = strcat(d,'\',files(i).name);
     hh=fopen(file_to_open);    
    EMG = fread(hh,[200, inf],'short');
    
    
       
[BE,AE] = butter(3,[20,500]*2/2048,'bandpass');
EMG = filtfilt(BE,AE,EMG')';

EMG = abs(EMG);
rmsA = rms(EMG(1:64,:));
rmsB = rms(EMG(65:128,:));
rmsC = rms(EMG(129:192,:));
rms_channel_split = [rmsA; rmsB; rmsC];
EMGtrans = EMG';

[coeff,score,latent,~,explained] = pca(EMGtrans);


cd test_folder_2;
saveName = strcat(files(i).name,'_v2','.mat');
save(saveName,'EMG','coeff','latent','explained','rms_channel_split');
cd ..;
end




%open file, rename pca and rms and resave;
%lda classifier 3:2 or 4:1, hodgkin set
%plot features in space
%observe matrix as singular average value
%nmf or statistical factorisation, probabilistic latent variable model