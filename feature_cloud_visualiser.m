%split by sensor for plotting - 1-64 is sensor 1, 65-128 is sensor 2, 129-192 is sensor
%3

dir ='C:\Users\Cathy\Documents\MSc Computer Science\MSc Project - man machine interfaces\Lab software\sandbox\contractions_separated\';

%filenames to load here
file1 = '3-1-1.sig-filtered.mat_contr.mat';
file2 = '3-1-2.sig-filtered.mat_contr.mat';
file3 = '3-1-3.sig-filtered.mat_contr.mat';
file4 = '3-1-4.sig-filtered.mat_contr.mat';

sensor_1 = load(strcat(dir,file1));
sens1_vec_1 = calc_features(sensor_1.sensor1,.2,.5);
sens1_vec_2 = calc_features(sensor_1.sensor2,.2,.5);
sens1_vec_3 = calc_features(sensor_1.sensor3,.2,.5);

sensor_2 = load(strcat(dir,file2));
sens2_vec_1 = calc_features(sensor_2.sensor1,.2,.5);
sens2_vec_2 = calc_features(sensor_2.sensor2,.2,.5);
sens2_vec_3 = calc_features(sensor_2.sensor3,.2,.5);

sensor_3 = load(strcat(dir,file3));
sens3_vec_1 = calc_features(sensor_3.sensor1,.2,.5);
sens3_vec_2 = calc_features(sensor_3.sensor2,.2,.5);
sens3_vec_3 = calc_features(sensor_3.sensor3,.2,.5);

sensor_4 = load(strcat(dir,file4));
sens4_vec_1 = calc_features(sensor_4.sensor1,.2,.5);
sens4_vec_2 = calc_features(sensor_4.sensor2,.2,.5);
sens4_vec_3 = calc_features(sensor_4.sensor3,.2,.5);



