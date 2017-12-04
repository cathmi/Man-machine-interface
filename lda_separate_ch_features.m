%lda separate channels rms

dir ='C:\Users\Cathy\Documents\MSc Computer Science\MSc Project - man machine interfaces\Lab software\sandbox\Stage_4_contractions_separated\';
file1 = '5-2-1.sig.mat_contr.mat'; %red
file2 = '5-2-2.sig.mat_contr.mat'; %green
file3 = '5-2-3.sig.mat_contr.mat'; %blue
file4 = '5-2-5.sig.mat_contr.mat'; %cyan
file5 = '5-2-8.sig.mat_contr.mat'; %magenta
file6 = '5-2-9.sig.mat_contr.mat'; %yellow

vec_1 = load(strcat(dir,file1));
vec_2 = load(strcat(dir,file2));
vec_3 = load(strcat(dir,file3));
vec_4 = load(strcat(dir,file4));
vec_5 = load(strcat(dir,file5));
vec_6 = load(strcat(dir,file6));

window = 0.2;
overlap = 0.5;

full_vec1 = [calc_features_separate(vec_1.test1,window,overlap) ; calc_features_separate(vec_1.test2,window,overlap) ; calc_features_separate(vec_1.test3,window,overlap) ; calc_features_separate(vec_1.test4,window,overlap)];
full_vec2 = [calc_features_separate(vec_2.test1,window,overlap) ; calc_features_separate(vec_2.test2,window,overlap) ; calc_features_separate(vec_2.test3,window,overlap) ; calc_features_separate(vec_2.test4,window,overlap)];
full_vec3 = [calc_features_separate(vec_3.test1,window,overlap) ; calc_features_separate(vec_3.test2,window,overlap) ; calc_features_separate(vec_3.test3,window,overlap) ; calc_features_separate(vec_3.test4,window,overlap)];
full_vec4 = [calc_features_separate(vec_4.test1,window,overlap) ; calc_features_separate(vec_4.test2,window,overlap) ; calc_features_separate(vec_4.test3,window,overlap) ; calc_features_separate(vec_4.test4,window,overlap)];
full_vec5 = [calc_features_separate(vec_5.test1,window,overlap) ; calc_features_separate(vec_5.test2,window,overlap) ; calc_features_separate(vec_5.test3,window,overlap) ; calc_features_separate(vec_5.test4,window,overlap)];
full_vec6 = [calc_features_separate(vec_6.test1,window,overlap) ; calc_features_separate(vec_6.test2,window,overlap) ; calc_features_separate(vec_6.test3,window,overlap) ; calc_features_separate(vec_6.test4,window,overlap)];

full_vec1 = [repmat(1,length(full_vec1(:,1)),1) full_vec1];
full_vec2 = [repmat(2,length(full_vec2(:,1)),1) full_vec2];
full_vec3 = [repmat(3,length(full_vec3(:,1)),1) full_vec3];
full_vec4 = [repmat(4,length(full_vec4(:,1)),1) full_vec4];
full_vec5 = [repmat(5,length(full_vec5(:,1)),1) full_vec5];
full_vec6 = [repmat(6,length(full_vec6(:,1)),1) full_vec6];


input = [full_vec1; full_vec2; full_vec3; full_vec4; full_vec5; full_vec6];


test_vec = [calc_features_separate(vec_1.test5,window,overlap); calc_features_separate(vec_2.test5,window,overlap); calc_features_separate(vec_3.test5,window,overlap); calc_features_separate(vec_4.test5,window,overlap); calc_features_separate(vec_5.test5,window,overlap); calc_features_separate(vec_6.test5,window,overlap)];


t = table();
t.direction = input(:,1);
t.one = input(:,2);
t.two = input(:,3);
t.three = input(:,4);
t.four = input(:,5);
t.five = input(:,6);
t.six = input(:,7);
t.seven = input(:,8);
t.eight = input(:,9);
t.nine = input(:,10);

lda_split_1 = fitcdiscr(t,'direction');

[labela,scorea,costa] = predict(lda_split_1,test_vec);
channel_const = length(labela)/6;
actual = [repmat(1,channel_const,1) ; repmat(2,channel_const,1) ; repmat(3,channel_const,1) ; repmat(4,channel_const,1); repmat(5,channel_const,1); repmat(6,channel_const,1)];
accuracya= 1-((nnz(labela - actual))/(6 * channel_const));
