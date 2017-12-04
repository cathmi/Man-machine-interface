%central control - links to gui run button - call for creation of feature
%vectors
% once data has been loaded into a matlab file (unzipped, opened and basic
% butterworth filter.

%files selected in gui
file1 = '';
file2 = '';
file3 = '';
file4 = '';
file5 = '';
file6 = '';



% section data for individual contractions - assume 5 each time?
%section off trial data from training for each test
% add number of repetitions of movements to gui to allow for sectioning out for lda



% mean adjust channels

% calculate full feature vector for each movement

if file1 ~= ''
   vec_1 = feature_vector(file1);
    vector_1 = repmat(1,length(feat_vec_1),1);
test_vector_1 = [vector_1 feat_vec_1];
end

if file2 ~= ''
   vec_2 = feature_vector(file2);
    
end

if file3 ~= ''
   vec_3 = feature_vector(file3);
    
end

if file4 ~= ''
   vec_4 = feature_vector(file4);
    
end

if file5 ~= ''
   vec_5 = feature_vector(file5);
    
end

if file6 ~= ''
   vec_6 = feature_vector(file6);
    
end

%create features vector for lda with associated movement

% run lda with features vector for each leave one out combination

for i = 1:5


t = table();
t.direction = feature_vector_input(:,1);
t.rms = feature_vector_input(:,2);
t.var = feature_vector_input(:,3);
t.wl = feature_vector_input(:,4);
t.mav = feature_vector_input(:,5);
t.zc = feature_vector_input(:,6);



end

% determine accuracy of results - return accuracy in gui - analyse
% contribution of components to determine best target muscles
% gain 200-500 for larger muscles, referenced monopolar method initially,
% bipolar with 2 electrodes per muscle if ref mono not good enough
