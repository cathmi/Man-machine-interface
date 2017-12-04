%lda on raw data

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

total_vec1 = [vec_1.test1'; vec_1.test2' ; vec_1.test3'; vec_1.test4'];
total_vec1 = [repmat(1,length(total_vec1),1) total_vec1];

total_vec2 = [vec_2.test1'; vec_2.test2' ; vec_2.test3'; vec_2.test4'];
total_vec2 = [repmat(2,length(total_vec1),1) total_vec2];

total_vec3 = [vec_3.test1'; vec_3.test2' ; vec_3.test3'; vec_3.test4'];
total_vec3 = [repmat(3,length(total_vec1),1) total_vec3];

total_vec4 = [vec_4.test1'; vec_4.test2' ; vec_4.test3'; vec_4.test4'];
total_vec4 = [repmat(4,length(total_vec1),1) total_vec4];

total_vec5 = [vec_5.test1'; vec_5.test2' ; vec_5.test3'; vec_5.test4'];
total_vec5 = [repmat(5,length(total_vec1),1) total_vec5];

total_vec6 = [vec_6.test1'; vec_6.test2' ; vec_6.test3'; vec_6.test4'];
total_vec6 = [repmat(6,length(total_vec1),1) total_vec6];

input = [total_vec1; total_vec2; total_vec3; total_vec4; total_vec5; total_vec6];

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

testing1 = [vec_1.test5'; vec_2.test5'; vec_3.test5'; vec_4.test5'; vec_5.test5'; vec_6.test5'];

lda_raw_1 = fitcdiscr(t,'direction');

[labela,scorea,costa] = predict(lda_raw_1,testing1);
channel_const = length(labela)/6;
actual = [repmat(1,channel_const,1) ; repmat(2,channel_const,1) ; repmat(3,channel_const,1) ; repmat(4,channel_const,1); repmat(5,channel_const,1); repmat(6,channel_const,1)];
accuracya= 1-((nnz(labela - actual))/(6 * channel_const));



