d = uigetdir(pwd, 'Select a folder');
files = dir(fullfile(d, '*.mat'));

no_of_files = size(files);
s = cell(no_of_files);


for i = 1:no_of_files
  load(strcat(d,'\',files(i).name));
 s(i) = tag;
end

cd test_folder_2;
save('collated.mat',s);