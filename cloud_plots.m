figure('Name', 'RMS vs WL vs ZC')
scatter3(sens1_vec_1(:,1),sens1_vec_1(:,3),sens1_vec_1(:,5),1,'red');
hold on;
scatter3(sens1_vec_2(:,1),sens1_vec_2(:,3),sens1_vec_2(:,5),1,'red','x');
scatter3(sens1_vec_3(:,1),sens1_vec_3(:,3),sens1_vec_3(:,5),1,'red','+');
scatter3(sens2_vec_1(:,1),sens2_vec_1(:,3),sens2_vec_1(:,5),1,'yellow');
scatter3(sens2_vec_2(:,1),sens2_vec_2(:,3),sens2_vec_2(:,5),1,'yellow','x');
scatter3(sens2_vec_3(:,1),sens2_vec_3(:,3),sens2_vec_3(:,5),1,'yellow','+');
scatter3(sens3_vec_1(:,1),sens3_vec_1(:,3),sens3_vec_1(:,5),1,'blue');
scatter3(sens3_vec_2(:,1),sens3_vec_2(:,3),sens3_vec_2(:,5),1,'blue','x');
scatter3(sens3_vec_3(:,1),sens3_vec_3(:,3),sens3_vec_3(:,5),1,'blue','+');
scatter3(sens4_vec_1(:,1),sens4_vec_1(:,3),sens4_vec_1(:,5),1,'green');
scatter3(sens4_vec_2(:,1),sens4_vec_2(:,3),sens4_vec_2(:,5),1,'green','x');
scatter3(sens4_vec_3(:,1),sens4_vec_3(:,3),sens4_vec_3(:,5),1,'green','+');

figure('Name', 'MAV vs WL vs ZC')
scatter3(sens1_vec_1(:,4),sens1_vec_1(:,3),sens1_vec_1(:,5),1,'red');
hold on;
scatter3(sens1_vec_2(:,4),sens1_vec_2(:,3),sens1_vec_2(:,5),1,'red','x');
scatter3(sens1_vec_3(:,4),sens1_vec_3(:,3),sens1_vec_3(:,5),1,'red','+');
scatter3(sens2_vec_1(:,4),sens2_vec_1(:,3),sens2_vec_1(:,5),1,'yellow');
scatter3(sens2_vec_2(:,4),sens2_vec_2(:,3),sens2_vec_2(:,5),1,'yellow','x');
scatter3(sens2_vec_3(:,4),sens2_vec_3(:,3),sens2_vec_3(:,5),1,'yellow','+');
scatter3(sens3_vec_1(:,4),sens3_vec_1(:,3),sens3_vec_1(:,5),1,'blue');
scatter3(sens3_vec_2(:,4),sens3_vec_2(:,3),sens3_vec_2(:,5),1,'blue','x');
scatter3(sens3_vec_3(:,4),sens3_vec_3(:,3),sens3_vec_3(:,5),1,'blue','+');
scatter3(sens4_vec_1(:,4),sens4_vec_1(:,3),sens4_vec_1(:,5),1,'green');
scatter3(sens4_vec_2(:,4),sens4_vec_2(:,3),sens4_vec_2(:,5),1,'green','x');
scatter3(sens4_vec_3(:,4),sens4_vec_3(:,3),sens4_vec_3(:,5),1,'green','+');

figure('Name', 'MAV vs WL vs Var')
scatter3(sens1_vec_1(:,4),sens1_vec_1(:,3),sens1_vec_1(:,2),1,'red');
hold on;
scatter3(sens1_vec_2(:,4),sens1_vec_2(:,3),sens1_vec_2(:,2),1,'red','x');
scatter3(sens1_vec_3(:,4),sens1_vec_3(:,3),sens1_vec_3(:,2),1,'red','+');
scatter3(sens2_vec_1(:,4),sens2_vec_1(:,3),sens2_vec_1(:,2),1,'yellow');
scatter3(sens2_vec_2(:,4),sens2_vec_2(:,3),sens2_vec_2(:,2),1,'yellow','x');
scatter3(sens2_vec_3(:,4),sens2_vec_3(:,3),sens2_vec_3(:,2),1,'yellow','+');
scatter3(sens3_vec_1(:,4),sens3_vec_1(:,3),sens3_vec_1(:,2),1,'blue');
scatter3(sens3_vec_2(:,4),sens3_vec_2(:,3),sens3_vec_2(:,2),1,'blue','x');
scatter3(sens3_vec_3(:,4),sens3_vec_3(:,3),sens3_vec_3(:,2),1,'blue','+');
scatter3(sens4_vec_1(:,4),sens4_vec_1(:,3),sens4_vec_1(:,2),1,'green');
scatter3(sens4_vec_2(:,4),sens4_vec_2(:,3),sens4_vec_2(:,2),1,'green','x');
scatter3(sens4_vec_3(:,4),sens4_vec_3(:,3),sens4_vec_3(:,2),1,'green','+');

