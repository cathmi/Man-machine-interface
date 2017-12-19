% Unzip and save sig files


[file_name, file_path] = uigetfile('*.otb','Select the Signal file to extract'); 
OTBfilename = [file_path file_name];

unzip(OTBfilename,'C:\Users\Cathy\Documents\MSc Computer Science\MSc Project - man machine interfaces\Lab software\sandbox\Raw data');
