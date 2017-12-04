%graph in direction - each direction is a dimension - 
%plot regression route - step function over 5 seconds


total_steps = length(rms_1(:,1))/5;

y = zeros((total_steps),1);

y(5:total_steps) = 1;

for i = 2:5
    y(i,1) = y(i-1,1) + (1/5);
    
end

% for i = cut_off:total_steps -2
%     y(i,1) = y(i-1,1) - (5/45);
% end
y_size = length(y);
zero_row = zeros(length(y),1);
x_row = y;


full_distance_x = [x_row; x_row; x_row; x_row; x_row]; 

%need to match to calc windows of features - this gives y in a specified
%direction - other axes are zero - know the controls here - determining
%linear combination of the muscles to give a given y - each y is a series
%of position coordinates - use each window and y to generate line of
%weighting matrix
k1 = var_1;
k2 = var_2;
k3 = var_3;
k4 = var_4;
k5 = var_5;
k6 = var_6;

% k1 = [vec_1.test1 vec_1.test2 vec_1.test3 vec_1.test4 vec_1.test5]';
% k2 = [vec_2.test1 vec_2.test2 vec_2.test3 vec_2.test4 vec_2.test5]';
% k3 = [vec_3.test1 vec_3.test2 vec_3.test3 vec_3.test4 vec_3.test5]'; 
% k4 = [vec_4.test1 vec_4.test2 vec_4.test3 vec_4.test4 vec_4.test5]';
% k5 = [vec_5.test1 vec_5.test2 vec_5.test3 vec_5.test4 vec_5.test5]';
% k6 = [vec_6.test1 vec_6.test2 vec_6.test3 vec_6.test4 vec_6.test5]';

%see resultant force on other weightings



row_1 = find_weightings([full_distance_x; -full_distance_x],[k1;k2]);
row_2 = find_weightings([full_distance_x; -full_distance_x],[k3;k4]);
row_3 = find_weightings([full_distance_x; -full_distance_x],[k5;k6]);
% row_4 = find_weightings(full_distance_x,k4);
% row_5 = find_weightings(full_distance_x,k5);
% row_6 = find_weightings(full_distance_x,k6);



% figure()
% bar(row_1);
% 
% figure()
% bar(row_2);
% 
% figure()
% bar(row_3);

% figure()
% bar(row_4);
% 
% figure()
% bar(row_5);
% 
% figure()
% bar(row_6);


figure()
plot([k1;k2]*row_1);
% hold on;
% plot([k1;k2]*row_2);
% plot([k1;k2]*row_3);


figure()
plot([k3;k4]*row_2);
% hold on;
% plot([k3;k4]*row_1);
% plot([k3;k4]*row_3);

figure()
plot([k5;k6]*row_3);
% hold on;
% plot([k5;k6]*row_1);
% plot([k5;k6]*row_2);

figure()
plot([k1;k2;k3;k4;k5;k6]*row_1);
hold on;
plot([k1;k2;k3;k4;k5;k6]*row_2);
plot([k1;k2;k3;k4;k5;k6]*row_3);


% figure()
% plot(k4*row_4);
% 
% figure()
% plot(k5*row_5);
% 
% figure()
% plot(k6*row_6);


%pairwise weightings and stack to see resultants - stack motions and
%multiply with weighting matrix

%try with log var

