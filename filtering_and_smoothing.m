%create time series for signal analyser

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
        
       
[BE,AE] = butter(3,[10,400]*2/2048,'bandpass');
EMG = filtfilt(BE,AE,EMG')';








% EMG = abs(EMG);
%%% For each file loaded
tmax = tp * length(EMG);
t = 0:tp:tmax - tp;
n = [0 0 0];
a = [0 0 0];
window = 400;




%spacings is array of indices that are ends of sample windows
spacings = 1:window/2:length(EMG);
channel_smoothed = [200,length(spacings)];

for k = 1:200 % smooth each channel individually
%channel smoothing for feature windows
channel1 = EMG(k,:);

%for each window: 50% overlap, 150ms windows
    for j = 1:length(spacings) - 2
    window_start = spacings(j);
    window_end = spacings(j) + window;
    channel_smoothed(k,j) = rms(channel1(window_start:window_end));

    end
end

cd super_smoothed_data;
saveName = strcat(files(i).name,'_supersmoothed.mat');
save(saveName,'channel_smoothed','EMG');
cd ..;

end





 %for i = 1:3
%     channel = rms_channel_split(i,:);
%   n(i) = rms(channel); 
%   a(i) = std(channel);  
%   
% end

% 
% threshold =  n - 0.5* a;
% 
% test1start = [0 0 0];
% test1end = [0 0 0];
% test2start = [0 0 0];
% test2end = [0 0 0];
% test3start = [0 0 0];
% test3end = [0 0 0];
% test4start = [0 0 0];
% test4end = [0 0 0];
% test5start = [0 0 0];
% test5end = [0 0 0];
% 
% 
% for i = 1:3
%   %test1 indices  
% tester = channel_smoothed(i,:);
% test1start(i) = find(tester > threshold(i),1);
% tester = channel_smoothed(i,test1start(i) + 1:end);
% test1end(i) = find(tester < threshold(i),1) + test1start(i);
% 
% %test2 indices
% tester = channel_smoothed(i,test1end(i) + 1:end);
% test2start(i) = find(tester > threshold(i),1) + test1end(i);
% tester = channel_smoothed(i,test2start(i) + 1:end);
% test2end(i) = find(tester < threshold(i),1) + test2start(i);
% 
% %test3 indices
% tester = channel_smoothed(i,test2end(i) + 1:end);
% test3start(i) = find(tester > threshold(i),1) + test2end(i);
% tester = channel_smoothed(i,test3start(i) + 1:end);
% test3end(i) = find(tester < threshold(i),1) + test3start(i);
% 
% %test4 indices
% tester = channel_smoothed(i,test3end(i) + 1:end);
% test4start(i) = find(tester > threshold(i),1) + test3end(i);
% tester = channel_smoothed(i,test4start(i) + 1:end);
% test4end(i) = find(tester < threshold(i),1) + test4start(i);
% 
% %test5 indices
% tester = channel_smoothed(i,test4end(i) + 1:end);
% test5start(i) = find(tester > threshold(i),1) + test4end(i);
% tester = channel_smoothed(i,test5start(i) + 1:end);
% test5end(i) = find(tester < threshold(i),1) + test5start(i);
% 
% 
% end
% 
% test_timings = struct('test1s',test1start,'test1e',test1end,'test2s',test2start,'test2e',test2end,'test3s',test3start,'test3e',test3end,'test4s',test4start,'test4e',test4end,'test5s',test5start,'test5e',test5end);
% 
% % plot(channel_smoothed')
% % % refline(0,threshold(1));
% % % refline(0,threshold(2));
% % % refline(0,threshold(3));
% % hold on;
% % x1a=[test1start(1) test1start(1)];
% % x1b=[test1end(1) test1end(1)];
% % x2a=[test2start(1) test2start(1)];
% % x2b=[test2end(1) test2end(1)];
% % y = [0 800];
% % plot(x1a,y)
% % plot(x1b,y)
% % plot(x2a,y)
% % plot(x2b,y)

