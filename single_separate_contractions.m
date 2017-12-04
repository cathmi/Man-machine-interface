%current code 18/10/17
clear;
d = uigetdir(pwd, 'Select a folder');
files = dir(fullfile(d,'*.mat'));
no_of_files = length(files);
k = 1;

for i = 1:no_of_files
file_to_open = strcat(d,'\',files(i).name);
     hh=load(file_to_open);
     channels = (hh.EMG);
     channels = [channels(1:8,:); channels(16,:)];
       %take mean and std of each channel
  channel_mean_matrix = mean(channels');
  channel_stv_matrix = std(channels');
  % (1x16 matrices)
  
  [val, idx] = max(channel_stv_matrix);
  
  lead_channel = idx;
  lead = channels(idx,:);
  
  threshold = channel_mean_matrix(lead_channel) + 3*val;
  
  
test_indices = zeros(6,2); %matrix references for start and end of each contraction
test_indices(1,2) = -5000;


%to determine indices of contractions
tester = lead;
for j = 2:6
  index = find(tester > threshold,1);
test_indices(j,1) = index + test_indices(j-1,2)+ 5000;
test_indices(j,2) = test_indices(j,1) + 10240;
if test_indices(j,2) > length(channels)
    test_indices(j,2) = length(channels);
end
tester = lead(test_indices(j,2)+ 5000:end);


    
end

    %separating out contractions
test1 = channels(:,test_indices(2,1):test_indices(2,2));
test2 = channels(:,test_indices(3,1):test_indices(3,2));
test3 = channels(:,test_indices(4,1):test_indices(4,2));
test4 = channels(:,test_indices(5,1):test_indices(5,2));
test5 = channels(:,test_indices(6,1):test_indices(6,2));

tests = [test1 ; test2 ; test3 ; test4 ; test5];

name  = strcat('figure',num2str(k));
k = k + 1;

figure('name', name )

plot(lead)
hold on
y = -(threshold * 3): 0.1: (threshold * 3);
plot(test_indices(2,1)*ones(size(y)), y, 'LineWidth', 2)
plot(test_indices(2,2)*ones(size(y)), y, 'LineWidth', 2)
plot(test_indices(3,1)*ones(size(y)), y, 'LineWidth', 2)
plot(test_indices(3,2)*ones(size(y)), y, 'LineWidth', 2)
plot(test_indices(4,1)*ones(size(y)), y, 'LineWidth', 2)
plot(test_indices(4,2)*ones(size(y)), y, 'LineWidth', 2)
plot(test_indices(5,1)*ones(size(y)), y, 'LineWidth', 2)
plot(test_indices(5,2)*ones(size(y)), y, 'LineWidth', 2)
plot(test_indices(6,1)*ones(size(y)), y, 'LineWidth', 2)
plot(test_indices(6,2)*ones(size(y)), y, 'LineWidth', 2)


cd 'C:\Users\Cathy\Documents\MSc Computer Science\MSc Project - man machine interfaces\Lab software\sandbox\Stage_4_contractions_separated';
saveName = strcat(files(i).name,'_contr.mat');
save(saveName,'tests','test_indices','test1','test2','test3','test4','test5');
cd 'C:\Users\Cathy\Documents\MSc Computer Science\MSc Project - man machine interfaces\Lab software\sandbox\';

end







