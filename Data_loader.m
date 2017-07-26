
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
EMG = rms(EMG);
EMGtrans = EMG';

[coeff,score,latent,~,explained] = pca(EMGtrans);

cd test_folder;
save(strcat(files(i).name,'.rms','.mat'),'EMG','coeff','score','latent','explained');
cd ..;
end



%lda classifier 3:2 or 4:1, hodgkin set
%plot features in space
%observe matrix as singular average value
%nmf or statistical factorisation, probabilistic latent variable model