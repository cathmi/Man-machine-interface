%central control - links to gui run button
% once data has been loaded into a matlab file (unzipped, opened and basic
% butterworth filter.

%files selected in gui
file1 = '';
file2 = '';
file3 = '';
file4 = '';
file5 = '';
file6 = '';

gui_features = [0 0 0 0 0 0];


% section data for individual contractions - assume 5 each time?
%section off trial data from training for each test
% add number of repetitions of movements to gui to allow for sectioning out for lda


%set from gui check boxes using a function here
features_to_use = feature_converter(gui_features);




% mean adjust channels

% calculate feature vector for each movement

if file1 ~= ''
   vec_1 = feature_vector(file1, features_to_use);
    vector_1 = repmat(1,length(feat_vec_1),1);
test_vector_1 = [vector_1 feat_vec_1];
end

if file2 ~= ''
   vec_2 = feature_vector(file2, features_to_use);
    
end

if file3 ~= ''
   vec_3 = feature_vector(file3, features_to_use);
    
end

if file4 ~= ''
   vec_4 = feature_vector(file4, features_to_use);
    
end

if file5 ~= ''
   vec_5 = feature_vector(file5, features_to_use);
    
end

if file6 ~= ''
   vec_6 = feature_vector(file6, features_to_use);
    
end

%create features vector for lda with associated movement

% run lda with features vector for each leave one out combination

% determine accuracy of results - return accuracy in gui - analyse
% contribution of components to determine best target muscles
% gain 200-500 for larger muscles, referenced monopolar method initially,
% bipolar with 2 electrodes per muscle if ref mono not good enough
