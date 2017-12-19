
d = uigetdir(pwd, 'Select a folder');
files = dir(fullfile(d,'*.mat'));
no_of_files = length(files);


for i = 1:no_of_files
file_to_open = strcat(d,'\',files(i).name);
     hh=load(file_to_open);
     channels = hh.mean_adj_EMG;
  rms_channel = mean(channels);
  thresholdmean = rms(rms_channel);
  thresholdstv = std(rms_channel);
  threshold = thresholdmean + 3*thresholdstv;
  
test_indices = zeros(6,2);
test_indices(1,1) = -500;

tester = rms_channel;
for j = 2:6
  index = find(tester > threshold,1);
test_indices(j,1) = index + test_indices(j-1,2) + 500;
test_indices(j,2) = test_indices(j,1) + 10240;
if test_indices(j,2) > length(channels)
    test_indices(j,2) = length(channels);
end
tester = rms_channel(test_indices(j,2)+ 500:end);


    
end

    
test1 = channels(:,test_indices(2,1):test_indices(2,2));
test2 = channels(:,test_indices(3,1):test_indices(3,2));
test3 = channels(:,test_indices(4,1):test_indices(4,2));
test4 = channels(:,test_indices(5,1):test_indices(5,2));
test5 = channels(:,test_indices(6,1):test_indices(6,2));

tests = [test1 ; test2 ; test3 ; test4];
trial = test5;

sensor1 = [test1(1:64,:) ; test2(1:64,:);test3(1:64,:) ; test4(1:64,:); test5(1:64,:)];
sensor2 = [test1(65:128,:) ; test2(65:128,:);test3(1:64,:) ; test4(65:128,:); test5(65:128,:)];
sensor3 = [test1(129:192,:) ; test2(129:192,:);test3(129:192,:) ; test4(129:192,:); test5(129:192,:)];


cd contractions_separated;
saveName = strcat(files(i).name,'_contr.mat');
save(saveName,'tests','trial','test_indices','sensor1','sensor2','sensor3');
cd ..;

end



