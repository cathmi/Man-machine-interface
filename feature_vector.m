

%% SETTINGS
%current code 18/10/17

dimensions_used = 6;
rms_used = true;
var_used = true;
mav_used = true;
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



%% VECTOR INITIALISATION



%Direction 1
vec_1 = load(strcat(dir,file1));

full_vec1 = [calc_features(vec_1.test1,window,overlap) ; calc_features(vec_1.test2,window,overlap) ; calc_features(vec_1.test3,window,overlap) ; calc_features(vec_1.test4,window,overlap); calc_features(vec_1.test5,window,overlap)];
vec_size = length(full_vec1(:,1)) /5;

test_vec1a = full_vec1(1:(vec_size * 4 ),:);
test_vec1b = [full_vec1((1:vec_size *3 ),:);full_vec1((vec_size *4 +1 :end),:)];
test_vec1c = [full_vec1((1:vec_size *2 ),:);full_vec1((vec_size *3 +1 :end),:)];
test_vec1d = [full_vec1((1:vec_size *1 ),:);full_vec1((vec_size *2 +1 :end),:)];
test_vec1e = full_vec1((vec_size *1 + 1 :end),:);

feat_trial_1a = full_vec1((vec_size * 4) + 1 : (vec_size * 5) , : );
feat_trial_1b = full_vec1((vec_size * 3) + 1: (vec_size * 4) , : );
feat_trial_1c = full_vec1((vec_size * 2) + 1: (vec_size * 3) , : );
feat_trial_1d = full_vec1((vec_size * 1) + 1: (vec_size * 2) , : );
feat_trial_1e = full_vec1(1 : (vec_size * 1), : );


vector_1 = repmat(1,length(test_vec1a),1);

test_vector_1a = [vector_1 test_vec1a];
test_vector_1b = [vector_1 test_vec1b];
test_vector_1c = [vector_1 test_vec1c];
test_vector_1d = [vector_1 test_vec1d];
test_vector_1e = [vector_1 test_vec1e];

%Direction 2
vec_2 = load(strcat(dir,file2));
full_vec2 = [calc_features(vec_2.test1,window,overlap) ; calc_features(vec_2.test2,window,overlap) ; calc_features(vec_2.test3,window,overlap) ; calc_features(vec_2.test4,window,overlap); calc_features(vec_2.test5,window,overlap)];
vec_size = length(full_vec2(:,1)) /5;

% Create the 5 vector permutations for cross validation
test_vec2a = full_vec2(1:(vec_size * 4 ),:);
test_vec2b = [full_vec2((1:vec_size *3 ),:);full_vec2((vec_size *4 +1 :end),:)];
test_vec2c = [full_vec2((1:vec_size *2 ),:);full_vec2((vec_size *3 +1 :end),:)];
test_vec2d = [full_vec2((1:vec_size *1 ),:);full_vec2((vec_size *2 +1 :end),:)];
test_vec2e = full_vec2((vec_size *1 + 1 :end),:);
feat_trial_2a = full_vec2((vec_size * 4) + 1 : (vec_size * 5) , : );
feat_trial_2b = full_vec2((vec_size * 3) + 1: (vec_size * 4) , : );
feat_trial_2c = full_vec2((vec_size * 2) + 1: (vec_size * 3) , : );
feat_trial_2d = full_vec2((vec_size * 1) + 1: (vec_size * 2) , : );
feat_trial_2e = full_vec2(1 : (vec_size * 1), : );



vector_2 = repmat(2,length(test_vec2a),1);

test_vector_2a = [vector_2 test_vec2a];
test_vector_2b = [vector_2 test_vec2b];
test_vector_2c = [vector_2 test_vec2c];
test_vector_2d = [vector_2 test_vec2d];
test_vector_2e = [vector_2 test_vec2e];

%Direction 3

vec_3 = load(strcat(dir,file3));
full_vec3 = [calc_features(vec_3.test1,window,overlap) ; calc_features(vec_3.test2,window,overlap) ; calc_features(vec_3.test3,window,overlap) ; calc_features(vec_3.test4,window,overlap); calc_features(vec_3.test5,window,overlap)];
vec_size = length(full_vec3(:,1)) /5;

% Create the 5 vector permutations for cross validation
test_vec3a = full_vec3(1:(vec_size * 4 ),:);
test_vec3b = [full_vec3((1:vec_size *3 ),:);full_vec3((vec_size *4 +1 :end),:)];
test_vec3c = [full_vec3((1:vec_size *2 ),:);full_vec3((vec_size *3 +1 :end),:)];
test_vec3d = [full_vec3((1:vec_size *1 ),:);full_vec3((vec_size *2 +1 :end),:)];
test_vec3e = full_vec3((vec_size *1 + 1 :end),:);
feat_trial_3a = full_vec3((vec_size * 4) + 1 : (vec_size * 5) , : );
feat_trial_3b = full_vec3((vec_size * 3) + 1: (vec_size * 4) , : );
feat_trial_3c = full_vec3((vec_size * 2) + 1: (vec_size * 3) , : );
feat_trial_3d = full_vec3((vec_size * 1) + 1: (vec_size * 2) , : );
feat_trial_3e = full_vec3(1 : (vec_size * 1), : );


vector_3 = repmat(3,length(test_vec3a),1);

test_vector_3a = [vector_3 test_vec3a];
test_vector_3b = [vector_3 test_vec3b];
test_vector_3c = [vector_3 test_vec3c];
test_vector_3d = [vector_3 test_vec3d];
test_vector_3e = [vector_3 test_vec3e];

%Direction 4
vec_4 = load(strcat(dir,file4));
full_vec4 = [calc_features(vec_4.test1,window,overlap) ; calc_features(vec_4.test2,window,overlap) ; calc_features(vec_4.test3,window,overlap) ; calc_features(vec_4.test4,window,overlap); calc_features(vec_4.test5,window,overlap)];
vec_size = length(full_vec4(:,1)) /5;

% Create the 5 vector permutations for cross validation
test_vec4a = full_vec4(1:(vec_size * 4 ),:);
test_vec4b = [full_vec4((1:vec_size *3 ),:);full_vec4((vec_size *4 +1 :end),:)];
test_vec4c = [full_vec4((1:vec_size *2 ),:);full_vec4((vec_size *3 +1 :end),:)];
test_vec4d = [full_vec4((1:vec_size *1 ),:);full_vec4((vec_size *2 +1 :end),:)];
test_vec4e = full_vec4((vec_size *1 + 1 :end),:);
feat_trial_4a = full_vec4((vec_size * 4) + 1 : (vec_size * 5) , : );
feat_trial_4b = full_vec4((vec_size * 3) + 1: (vec_size * 4) , : );
feat_trial_4c = full_vec4((vec_size * 2) + 1: (vec_size * 3) , : );
feat_trial_4d = full_vec4((vec_size * 1) + 1: (vec_size * 2) , : );
feat_trial_4e = full_vec4(1 : (vec_size * 1), : );


vector_4 = repmat(4,length(test_vec4a),1);

test_vector_4a = [vector_4 test_vec4a];
test_vector_4b = [vector_4 test_vec4b];
test_vector_4c = [vector_4 test_vec4c];
test_vector_4d = [vector_4 test_vec4d];
test_vector_4e = [vector_4 test_vec4e];


if dimensions_used == 6
    
    %Direction 5
    vec_5 = load(strcat(dir,file5));
    full_vec5 = [calc_features(vec_5.test1,window,overlap) ; calc_features(vec_5.test2,window,overlap) ; calc_features(vec_5.test3,window,overlap) ; calc_features(vec_5.test4,window,overlap); calc_features(vec_5.test5,window,overlap)];
    vec_size = length(full_vec5(:,1)) /5;
    
    % Create the 5 vector permutations for cross validation
    test_vec5a = full_vec5(1:(vec_size * 4 ),:);
    test_vec5b = [full_vec5((1:vec_size *3 ),:);full_vec5((vec_size *4 +1 :end),:)];
    test_vec5c = [full_vec5((1:vec_size *2 ),:);full_vec5((vec_size *3 +1 :end),:)];
    test_vec5d = [full_vec5((1:vec_size *1 ),:);full_vec5((vec_size *2 +1 :end),:)];
    test_vec5e = full_vec5((vec_size *1 + 1 :end),:);
    feat_trial_5a = full_vec5((vec_size * 4) + 1 : (vec_size * 5) , : );
    feat_trial_5b = full_vec5((vec_size * 3) + 1: (vec_size * 4) , : );
    feat_trial_5c = full_vec5((vec_size * 2) + 1: (vec_size * 3) , : );
    feat_trial_5d = full_vec5((vec_size * 1) + 1: (vec_size * 2) , : );
    feat_trial_5e = full_vec5(1 : (vec_size * 1), : );
    
    
    vector_5 = repmat(5,length(test_vec5a),1);
    
    test_vector_5a = [vector_5 test_vec5a];
    test_vector_5b = [vector_5 test_vec5b];
    test_vector_5c = [vector_5 test_vec5c];
    test_vector_5d = [vector_5 test_vec5d];
    test_vector_5e = [vector_5 test_vec5e];
    
    
    %Direction 6
    vec_6 = load(strcat(dir,file6));
    full_vec6 = [calc_features(vec_6.test1,window,overlap) ; calc_features(vec_6.test2,window,overlap) ; calc_features(vec_6.test3,window,overlap) ; calc_features(vec_6.test4,window,overlap); calc_features(vec_6.test5,window,overlap)];
    vec_size = length(full_vec6(:,1)) /5;
    %% CROSS VALIDATION
    
    % Create the 5 vector permutations for cross validation
    test_vec6a = full_vec6(1:(vec_size * 4 ),:);
    test_vec6b = [full_vec6((1:vec_size *3 ),:);full_vec6((vec_size *4 +1 :end),:)];
    test_vec6c = [full_vec6((1:vec_size *2 ),:);full_vec6((vec_size *3 +1 :end),:)];
    test_vec6d = [full_vec6((1:vec_size *1 ),:);full_vec6((vec_size *2 +1 :end),:)];
    test_vec6e = full_vec6((vec_size *1 + 1 :end),:);
    feat_trial_6a = full_vec6((vec_size * 4) + 1 : (vec_size * 5) , : );
    feat_trial_6b = full_vec6((vec_size * 3) + 1: (vec_size * 4) , : );
    feat_trial_6c = full_vec6((vec_size * 2) + 1: (vec_size * 3) , : );
    feat_trial_6d = full_vec6((vec_size * 1) + 1: (vec_size * 2) , : );
    feat_trial_6e = full_vec6(1 : (vec_size * 1), : );
    
    
    vector_6 = repmat(6,length(test_vec6a),1);
    
    test_vector_6a = [vector_6 test_vec6a];
    test_vector_6b = [vector_6 test_vec6b];
    test_vector_6c = [vector_6 test_vec6c];
    test_vector_6d = [vector_6 test_vec6d];
    test_vector_6e = [vector_6 test_vec6e];
    
end


feature_vector_input_a = [test_vector_1a; test_vector_2a; test_vector_3a; test_vector_4a];
feature_vector_input_b = [test_vector_1b; test_vector_2b; test_vector_3b; test_vector_4b];
feature_vector_input_c = [test_vector_1c; test_vector_2c; test_vector_3c; test_vector_4c];
feature_vector_input_d = [test_vector_1d; test_vector_2d; test_vector_3d; test_vector_4d];
feature_vector_input_e = [test_vector_1e; test_vector_2e; test_vector_3e; test_vector_4e];

if dimensions_used == 6
    
    feature_vector_input_a = [feature_vector_input_a; test_vector_5a; test_vector_6a];
    feature_vector_input_b = [feature_vector_input_b; test_vector_5b; test_vector_6b];
    feature_vector_input_c = [feature_vector_input_c; test_vector_5c; test_vector_6c];
    feature_vector_input_d = [feature_vector_input_d; test_vector_5d; test_vector_6d];
    feature_vector_input_e = [feature_vector_input_e; test_vector_5e; test_vector_6e];
    
end

trial_vector_input_a = [feat_trial_1a ; feat_trial_2a ; feat_trial_3a; feat_trial_4a];
trial_vector_input_b = [feat_trial_1b ; feat_trial_2b ; feat_trial_3b; feat_trial_4b];
trial_vector_input_c = [feat_trial_1c ; feat_trial_2c ; feat_trial_3c; feat_trial_4c];
trial_vector_input_d = [feat_trial_1d ; feat_trial_2d ; feat_trial_3d; feat_trial_4d];
trial_vector_input_e = [feat_trial_1e ; feat_trial_2e ; feat_trial_3e; feat_trial_4e];

if dimensions_used == 6
    
    trial_vector_input_a = [trial_vector_input_a; feat_trial_5a; feat_trial_6a];
    trial_vector_input_b = [trial_vector_input_b; feat_trial_5b; feat_trial_6b];
    trial_vector_input_c = [trial_vector_input_c; feat_trial_5c; feat_trial_6c];
    trial_vector_input_d = [trial_vector_input_d; feat_trial_5d; feat_trial_6d];
    trial_vector_input_e = [trial_vector_input_e; feat_trial_5e; feat_trial_6e];
    
end


% create tables for each trial
ta = table();
ta.direction = feature_vector_input_a(:,1);
if rms_used
    ta.rms = feature_vector_input_a(:,2);
end
if var_used
    ta.var = feature_vector_input_a(:,3);
end
if wl_used
    ta.wl = feature_vector_input_a(:,4);
end
if mav_used
    ta.mav = feature_vector_input_a(:,5);
end
if zc_used
    ta.zc = feature_vector_input_a(:,6);
end
ta.channel = feature_vector_input_a(:,7);

tb = table();
tb.direction = feature_vector_input_b(:,1);
if rms_used
    tb.rms = feature_vector_input_b(:,2);
end
if var_used
    tb.var = feature_vector_input_b(:,3);
end
if wl_used
    tb.wl = feature_vector_input_b(:,4);
end
if mav_used
    tb.mav = feature_vector_input_b(:,5);
end
if zc_used
    tb.zc = feature_vector_input_b(:,6);
end
tb.channel = feature_vector_input_b(:,7);

tc = table();
tc.direction = feature_vector_input_c(:,1);
if rms_used
    tc.rms = feature_vector_input_c(:,2);
end
if var_used
    tc.var = feature_vector_input_c(:,3);
end
if wl_used
    tc.wl = feature_vector_input_c(:,4);
end
if mav_used
    tc.mav = feature_vector_input_c(:,5);
end
if zc_used
    tc.zc = feature_vector_input_c(:,6);
end
tc.channel = feature_vector_input_c(:,7);

td = table();
td.direction = feature_vector_input_d(:,1);
if rms_used
    td.rms = feature_vector_input_d(:,2);
end
if var_used
    td.var = feature_vector_input_d(:,3);
end
if wl_used
    td.wl = feature_vector_input_d(:,4);
end
if mav_used
    td.mav = feature_vector_input_d(:,5);
end
if zc_used
    td.zc = feature_vector_input_d(:,6);
end
td.channel = feature_vector_input_d(:,7);

te = table();
te.direction = feature_vector_input_e(:,1);
if rms_used
    te.rms = feature_vector_input_e(:,2);
end
if var_used
    te.var = feature_vector_input_e(:,3);
end
if wl_used
    te.wl = feature_vector_input_e(:,4);
end
if mav_used
    te.mav = feature_vector_input_e(:,5);
end
if zc_used
    te.zc = feature_vector_input_e(:,6);
end
te.channel = feature_vector_input_e(:,7);



trial_vec_a(:) = rand(1);
trial_vec_a(:) = [];

%adapt trial vectors to match
if rms_used
    trial_vec_a =  trial_vector_input_a(:,1);
    trial_vec_b =  trial_vector_input_b(:,1);
    trial_vec_c =  trial_vector_input_c(:,1);
    trial_vec_d =  trial_vector_input_d(:,1);
    trial_vec_e =  trial_vector_input_e(:,1);
end
if var_used
    if isempty(trial_vec_a)
        trial_vec_a =  trial_vector_input_a(:,2);
        trial_vec_b =  trial_vector_input_b(:,2);
        trial_vec_c =  trial_vector_input_c(:,2);
        trial_vec_d =  trial_vector_input_d(:,2);
        trial_vec_e =  trial_vector_input_e(:,2);
    else
        trial_vec_a = [trial_vec_a trial_vector_input_a(:,2)];
        trial_vec_b = [trial_vec_b trial_vector_input_b(:,2)];
        trial_vec_c = [trial_vec_c trial_vector_input_c(:,2)];
        trial_vec_d = [trial_vec_d trial_vector_input_d(:,2)];
        trial_vec_e = [trial_vec_e trial_vector_input_e(:,2)];
    end
end

if wl_used
    if isempty(trial_vec_a)
        trial_vec_a =  trial_vector_input_a(:,3);
        trial_vec_b =  trial_vector_input_b(:,3);
        trial_vec_c =  trial_vector_input_c(:,3);
        trial_vec_d =  trial_vector_input_d(:,3);
        trial_vec_e =  trial_vector_input_e(:,3);
    else
        trial_vec_a = [trial_vec_a trial_vector_input_a(:,3)];
        trial_vec_b = [trial_vec_b trial_vector_input_b(:,3)];
        trial_vec_c = [trial_vec_c trial_vector_input_c(:,3)];
        trial_vec_d = [trial_vec_d trial_vector_input_d(:,3)];
        trial_vec_e = [trial_vec_e trial_vector_input_e(:,3)];
    end
end

if mav_used
    if isempty(trial_vec_a)
        trial_vec_a =  trial_vector_input_a(:,4);
        trial_vec_b =  trial_vector_input_b(:,4);
        trial_vec_c =  trial_vector_input_c(:,4);
        trial_vec_d =  trial_vector_input_d(:,4);
        trial_vec_e =  trial_vector_input_e(:,4);
    else
        trial_vec_a = [trial_vec_a trial_vector_input_a(:,4)];
        trial_vec_b = [trial_vec_b trial_vector_input_b(:,4)];
        trial_vec_c = [trial_vec_c trial_vector_input_c(:,4)];
        trial_vec_d = [trial_vec_d trial_vector_input_d(:,4)];
        trial_vec_e = [trial_vec_e trial_vector_input_e(:,4)];
    end
end

if zc_used
    if isempty(trial_vec_a)
        trial_vec_a =  trial_vector_input_a(:,5);
        trial_vec_b =  trial_vector_input_b(:,5);
        trial_vec_c =  trial_vector_input_c(:,5);
        trial_vec_d =  trial_vector_input_d(:,5);
        trial_vec_e =  trial_vector_input_e(:,5);
    else
        trial_vec_a = [trial_vec_a trial_vector_input_a(:,5)];
        trial_vec_b = [trial_vec_b trial_vector_input_b(:,5)];
        trial_vec_c = [trial_vec_c trial_vector_input_c(:,5)];
        trial_vec_d = [trial_vec_d trial_vector_input_d(:,5)];
        trial_vec_e = [trial_vec_e trial_vector_input_e(:,5)];
    end
end

trial_vec_a = [trial_vec_a trial_vector_input_a(:,6)];
trial_vec_b = [trial_vec_b trial_vector_input_b(:,6)];
trial_vec_c = [trial_vec_c trial_vector_input_c(:,6)];
trial_vec_d = [trial_vec_d trial_vector_input_d(:,6)];
trial_vec_e = [trial_vec_e trial_vector_input_e(:,6)];

