%current code 18/10/17
clear;
d = uigetdir(pwd, 'Select a folder');
files = dir(fullfile(d,'*.mat'));
no_of_files = length(files);
k = 1;
spacing = 3000;

for i = 1:no_of_files
file_to_open = strcat(d,'\',files(i).name);
     hh=load(file_to_open);
     channels = (hh.EMG);
     channels1 = remove_bad_channels(channels(1:64,:));
     channels2 = remove_bad_channels(channels(65:128,:));
     channels3 = remove_bad_channels(channels(129:192,:));
       %take mean and std of each channel
  channel_mean_matrix1 = mean(channels1');
  channel_stv_matrix1 = std(channels1');
  channel_mean_matrix2 = mean(channels2');
  channel_stv_matrix2 = std(channels2');
  channel_mean_matrix3 = mean(channels3');
  channel_stv_matrix3 = std(channels3');
  % (1x64 matrices -  3 sensors)
  
  [val1, idx1] = max(channel_stv_matrix1);
  [val2, idx2] = max(channel_stv_matrix2);
  [val3, idx3] = max(channel_stv_matrix3);
  
  lead_channel1 = idx1;
  lead1 = channels1(idx1,:);
  
  lead_channel2 = idx2;
  lead2 = channels2(idx2,:);
  
  lead_channel3 = idx3;
  lead3 = channels1(idx3,:);
  
  threshold1 = channel_mean_matrix1(lead_channel1) + 4*val1;
  threshold2 = channel_mean_matrix2(lead_channel2) + 4*val2;
  threshold3 = channel_mean_matrix3(lead_channel3) + 4*val3;
  
  
test_indices1 = zeros(6,2); %matrix references for start and end of each contraction
test_indices1(1,2) = -spacing;

test_indices2 = zeros(6,2); %matrix references for start and end of each contraction
test_indices2(1,2) = -spacing;

test_indices3 = zeros(6,2); %matrix references for start and end of each contraction
test_indices3(1,2) = -spacing;


%to determine indices of contractions
tester1 = lead1;
tester2 = lead2;
tester3 = lead3;

for j1 = 2:6
  index1 = find(tester1 > threshold1,1);
test_indices1(j1,1) = index1 + test_indices1(j1-1,2)+ spacing;
test_indices1(j1,2) = test_indices1(j1,1) + 10240;
if test_indices1(j1,2) > length(channels1)
    test_indices1(j1,2) = length(channels1);
end
tester1 = lead1(test_indices1(j1,2)+ spacing:end);
end

for j2 = 2:6
  index2 = find(tester2 > threshold2,1);
test_indices2(j2,1) = index2 + test_indices2(j2-1,2)+ spacing;
test_indices2(j2,2) = test_indices2(j2,1) + 10240;
if test_indices2(j2,2) > length(channels2)
    test_indices2(j2,2) = length(channels2);
end
tester2 = lead2(test_indices2(j2,2)+ spacing:end);
end

for j3 = 2:6
  index3 = find(tester3 > threshold3,1);
test_indices3(j3,1) = index1 + test_indices3(j3-1,2)+ spacing;
test_indices3(j3,2) = test_indices3(j3,1) + 10240;
if test_indices3(j3,2) > length(channels3)
    test_indices3(j3,2) = length(channels3);
end
tester3 = lead3(test_indices3(j3,2)+ spacing:end);


    
end

    %separating out contractions
test1a = channels1(:,test_indices1(2,1):test_indices1(2,2));
test1b = channels1(:,test_indices1(3,1):test_indices1(3,2));
test1c = channels1(:,test_indices1(4,1):test_indices1(4,2));
test1d = channels1(:,test_indices1(5,1):test_indices1(5,2));
test1e = channels1(:,test_indices1(6,1):test_indices1(6,2));

tests1 = [test1a ; test1b ; test1c ; test1d ; test1e];

test2a = channels2(:,test_indices2(2,1):test_indices2(2,2));
test2b = channels2(:,test_indices2(3,1):test_indices2(3,2));
test2c = channels2(:,test_indices2(4,1):test_indices2(4,2));
test2d = channels2(:,test_indices2(5,1):test_indices2(5,2));
test2e = channels2(:,test_indices2(6,1):test_indices2(6,2));

tests2 = [test2a ; test2b ; test2c ; test2d ; test2e];

test3a = channels3(:,test_indices3(2,1):test_indices3(2,2));
test3b = channels3(:,test_indices3(3,1):test_indices3(3,2));
test3c = channels3(:,test_indices3(4,1):test_indices3(4,2));
test3d = channels3(:,test_indices3(5,1):test_indices3(5,2));
test3e = channels3(:,test_indices3(6,1):test_indices3(6,2));

tests3 = [test3a ; test3b ; test3c ; test3d ; test3e];

name  = strcat('figure',num2str(k));
k = k + 1;

figure('name', name )

plot(lead1)
hold on
y = -(threshold1 * 3): 0.1: (threshold1 * 3);
plot(test_indices1(2,1)*ones(size(y)), y, 'LineWidth', 2)
plot(test_indices1(2,2)*ones(size(y)), y, 'LineWidth', 2)
plot(test_indices1(3,1)*ones(size(y)), y, 'LineWidth', 2)
plot(test_indices1(3,2)*ones(size(y)), y, 'LineWidth', 2)
plot(test_indices1(4,1)*ones(size(y)), y, 'LineWidth', 2)
plot(test_indices1(4,2)*ones(size(y)), y, 'LineWidth', 2)
plot(test_indices1(5,1)*ones(size(y)), y, 'LineWidth', 2)
plot(test_indices1(5,2)*ones(size(y)), y, 'LineWidth', 2)
plot(test_indices1(6,1)*ones(size(y)), y, 'LineWidth', 2)
plot(test_indices1(6,2)*ones(size(y)), y, 'LineWidth', 2)

figure('name', name )

plot(lead2)
hold on
y = -(threshold2 * 3): 0.1: (threshold2 * 3);
plot(test_indices2(2,1)*ones(size(y)), y, 'LineWidth', 2)
plot(test_indices2(2,2)*ones(size(y)), y, 'LineWidth', 2)
plot(test_indices2(3,1)*ones(size(y)), y, 'LineWidth', 2)
plot(test_indices2(3,2)*ones(size(y)), y, 'LineWidth', 2)
plot(test_indices2(4,1)*ones(size(y)), y, 'LineWidth', 2)
plot(test_indices2(4,2)*ones(size(y)), y, 'LineWidth', 2)
plot(test_indices2(5,1)*ones(size(y)), y, 'LineWidth', 2)
plot(test_indices2(5,2)*ones(size(y)), y, 'LineWidth', 2)
plot(test_indices2(6,1)*ones(size(y)), y, 'LineWidth', 2)
plot(test_indices2(6,2)*ones(size(y)), y, 'LineWidth', 2)

figure('name', name )

plot(lead3)
hold on
y = -(threshold3 * 3): 0.1: (threshold3 * 3);
plot(test_indices3(2,1)*ones(size(y)), y, 'LineWidth', 2)
plot(test_indices3(2,2)*ones(size(y)), y, 'LineWidth', 2)
plot(test_indices3(3,1)*ones(size(y)), y, 'LineWidth', 2)
plot(test_indices3(3,2)*ones(size(y)), y, 'LineWidth', 2)
plot(test_indices3(4,1)*ones(size(y)), y, 'LineWidth', 2)
plot(test_indices3(4,2)*ones(size(y)), y, 'LineWidth', 2)
plot(test_indices3(5,1)*ones(size(y)), y, 'LineWidth', 2)
plot(test_indices3(5,2)*ones(size(y)), y, 'LineWidth', 2)
plot(test_indices3(6,1)*ones(size(y)), y, 'LineWidth', 2)
plot(test_indices3(6,2)*ones(size(y)), y, 'LineWidth', 2)


cd 'C:\Users\Cathy\Documents\MSc Computer Science\MSc Project - man machine interfaces\Lab software\sandbox\Stage_4_contractions_separated';
saveName = strcat(files(i).name,'_contr.mat');
save(saveName,'tests1','tests2','tests3','test1a','test1b','test1c','test1d','test1e','test2a','test2b','test2c','test2d','test2e','test3a','test3b','test3c','test3d','test3e');
cd 'C:\Users\Cathy\Documents\MSc Computer Science\MSc Project - man machine interfaces\Lab software\sandbox\';

end







