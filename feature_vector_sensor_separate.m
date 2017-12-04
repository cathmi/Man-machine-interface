%feature_vector_sensor_separate
%data files have contractions separated as tests 1-5 and each sensor
%readout saved separately if sensor split < no.of channels
dimensions_used = 6;
sensor_split = 3;
rms_used = true;
var_used = true;
wl_used = true;
zc_used = true;

window = 0.3;
overlap = 0.25;

% feature vector builder
dir ='C:\Users\Cathy\Documents\MSc Computer Science\MSc Project - man machine interfaces\Lab software\sandbox\Stage_4_contractions_separated\';
%% FILE LOAD

% 1 arm curl
% 2 arm squeeze to side
% 3 back raise elbow lead
% 4 back raise straight
% 5 front raise
% 6 shoulder back
% 7 shoulder forward
% 8 shoulder raise
% 9 side raise

%filenames to load here
file1 = '5-2-1.sig.mat_contr.mat'; %red
file2 = '5-2-8.sig.mat_contr.mat'; %green
file3 = '5-2-9.sig.mat_contr.mat'; %blue
file4 = '5-2-2.sig.mat_contr.mat'; %cyan
file5 = '5-2-3.sig.mat_contr.mat'; %magenta
file6 = '5-2-5.sig.mat_contr.mat'; %yellow