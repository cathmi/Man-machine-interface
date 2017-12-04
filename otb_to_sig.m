%converts otb into .sig files
d = uigetdir(pwd, 'Select a folder');
files = dir(fullfile(d, '*.otb'));

no_of_files = size(files);
test = 1;
for i = 1:no_of_files


file_name = files(i).name;
file_path = [d '\'];

file_otb = [file_path file_name];
    
unzip(file_otb,'C:\Users\Cathy\Documents\MSc Computer Science\MSc Project - man machine interfaces\Lab software\sandbox\Stage_2_Raw data\single_store');

files1 = dir(fullfile('C:\Users\Cathy\Documents\MSc Computer Science\MSc Project - man machine interfaces\Lab software\sandbox\Stage_2_Raw data\single_store', '*.sig'));


file_rename = [files1(1).folder '\' files1(1).name];


rename_to = strcat('C:\Users\Cathy\Documents\MSc Computer Science\MSc Project - man machine interfaces\Lab software\sandbox\Stage_2_Raw data\single_electrode_data\5-2-',num2str(test,0),'.sig');

test = test+1;
movefile(file_rename,rename_to);


end

cd ..;