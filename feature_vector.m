% feature vector builder
dir ='C:\Users\Cathy\Documents\MSc Computer Science\MSc Project - man machine interfaces\Lab software\sandbox\contractions_separated\';

%filenames to load here
file1 = '3-1-1.sig-filtered.mat_contr.mat';
file2 = '3-1-2.sig-filtered.mat_contr.mat';
file3 = '3-1-3.sig-filtered.mat_contr.mat';
file4 = '3-1-4.sig-filtered.mat_contr.mat';
%Direction 1a
vec_1 = load(strcat(dir,file1));
feat_vec_1 = calc_features(vec_1.tests,.2,.5);
feat_trial_1 = calc_features(vec_1.trial,.2,.5);
vector_1 = repmat(1,length(feat_vec_1),1);
test_vector_1 = [vector_1 feat_vec_1];

%Direction 2
vec_2 = load(strcat(dir,file2));
feat_vec_2 = calc_features(vec_2.tests,.2,.5);
feat_trial_2 = calc_features(vec_2.trial,.2,.5);
vector_2 = repmat(2,length(feat_vec_2),1);
test_vector_2 = [vector_2 feat_vec_2];

%Direction 3

vec_3 = load(strcat(dir,file3));
feat_vec_3 = calc_features(vec_3.tests,.2,.5);
feat_trial_3 = calc_features(vec_3.trial,.2,.5);
vector_3 = repmat(3,length(feat_vec_3),1);
test_vector_3 = [vector_3 feat_vec_3];

%Direction 4
vec_4 = load(strcat(dir,file4));
feat_vec_4 = calc_features(vec_4.tests,.2,.5);
feat_trial_4 = calc_features(vec_4.trial,.2,.5);
vector_4 = repmat(4,length(feat_vec_4),1);
test_vector_4 = [vector_4 feat_vec_4];


feature_vector_input = [test_vector_1; test_vector_2; test_vector_3; test_vector_4];


t = table();
t.direction = feature_vector_input(:,1);
t.rms = feature_vector_input(:,2);
t.var = feature_vector_input(:,3);
t.wl = feature_vector_input(:,4);
t.mav = feature_vector_input(:,5);
t.zc = feature_vector_input(:,6);