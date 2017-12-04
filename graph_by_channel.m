%plot by channel per movement - split into 16, discard unused channels

toPlotx = 3; % 1 = rms, 2 = var, 3 = wl, 4 = mav, 5 = zc 6=channel
toPloty = 1;
toPlotz = 6;

plot_by_movement = false;
plot_by_channel = true;

% 1 arm curl
% 2 arm squeeze to side
% 3 back raise elbow lead
% 4 back raise straight
% 5 front raise
% 6 shoulder back
% 7 shoulder forward
% 8 shoulder raise
% 9 side raise

%3d plot of directions - opposing directions, plot of features etc. plot
%training space for lda
% linear regressor - weighting matrix

channel1a = [calc_features(vec_1.test1(1,:),.2,.5); calc_features(vec_1.test2(1,:),.2,.5); calc_features(vec_1.test3(1,:),.2,.5); calc_features(vec_1.test4(1,:),.2,.5); calc_features(vec_1.test5(1,:),.2,.5)];
channel2a = [calc_features(vec_1.test1(2,:),.2,.5); calc_features(vec_1.test2(2,:),.2,.5); calc_features(vec_1.test3(2,:),.2,.5); calc_features(vec_1.test4(2,:),.2,.5); calc_features(vec_1.test5(2,:),.2,.5)];
channel3a = [calc_features(vec_1.test1(3,:),.2,.5); calc_features(vec_1.test2(3,:),.2,.5); calc_features(vec_1.test3(3,:),.2,.5); calc_features(vec_1.test4(3,:),.2,.5); calc_features(vec_1.test5(3,:),.2,.5)];
channel4a = [calc_features(vec_1.test1(4,:),.2,.5); calc_features(vec_1.test2(4,:),.2,.5); calc_features(vec_1.test3(4,:),.2,.5); calc_features(vec_1.test4(4,:),.2,.5); calc_features(vec_1.test5(4,:),.2,.5)];
channel5a = [calc_features(vec_1.test1(5,:),.2,.5); calc_features(vec_1.test2(5,:),.2,.5); calc_features(vec_1.test3(5,:),.2,.5); calc_features(vec_1.test4(5,:),.2,.5); calc_features(vec_1.test5(5,:),.2,.5)];
channel6a = [calc_features(vec_1.test1(6,:),.2,.5); calc_features(vec_1.test2(6,:),.2,.5); calc_features(vec_1.test3(6,:),.2,.5); calc_features(vec_1.test4(6,:),.2,.5); calc_features(vec_1.test5(6,:),.2,.5)];
channel7a = [calc_features(vec_1.test1(7,:),.2,.5); calc_features(vec_1.test2(7,:),.2,.5); calc_features(vec_1.test3(7,:),.2,.5); calc_features(vec_1.test4(7,:),.2,.5); calc_features(vec_1.test5(7,:),.2,.5)];
channel8a = [calc_features(vec_1.test1(8,:),.2,.5); calc_features(vec_1.test2(8,:),.2,.5); calc_features(vec_1.test3(8,:),.2,.5); calc_features(vec_1.test4(8,:),.2,.5); calc_features(vec_1.test5(8,:),.2,.5)];
channel9a = [calc_features(vec_1.test1(9,:),.2,.5); calc_features(vec_1.test2(9,:),.2,.5); calc_features(vec_1.test3(9,:),.2,.5); calc_features(vec_1.test4(9,:),.2,.5); calc_features(vec_1.test5(9,:),.2,.5)];

channel1b = [calc_features(vec_2.test1(1,:),.2,.5); calc_features(vec_2.test2(1,:),.2,.5); calc_features(vec_2.test3(1,:),.2,.5); calc_features(vec_2.test4(1,:),.2,.5); calc_features(vec_2.test5(1,:),.2,.5)];
channel2b = [calc_features(vec_2.test1(2,:),.2,.5); calc_features(vec_2.test2(2,:),.2,.5); calc_features(vec_2.test3(2,:),.2,.5); calc_features(vec_2.test4(2,:),.2,.5); calc_features(vec_2.test5(2,:),.2,.5)];
channel3b = [calc_features(vec_2.test1(3,:),.2,.5); calc_features(vec_2.test2(3,:),.2,.5); calc_features(vec_2.test3(3,:),.2,.5); calc_features(vec_2.test4(3,:),.2,.5); calc_features(vec_2.test5(3,:),.2,.5)];
channel4b = [calc_features(vec_2.test1(4,:),.2,.5); calc_features(vec_2.test2(4,:),.2,.5); calc_features(vec_2.test3(4,:),.2,.5); calc_features(vec_2.test4(4,:),.2,.5); calc_features(vec_2.test5(4,:),.2,.5)];
channel5b = [calc_features(vec_2.test1(5,:),.2,.5); calc_features(vec_2.test2(5,:),.2,.5); calc_features(vec_2.test3(5,:),.2,.5); calc_features(vec_2.test4(5,:),.2,.5); calc_features(vec_2.test5(5,:),.2,.5)];
channel6b = [calc_features(vec_2.test1(6,:),.2,.5); calc_features(vec_2.test2(6,:),.2,.5); calc_features(vec_2.test3(6,:),.2,.5); calc_features(vec_2.test4(6,:),.2,.5); calc_features(vec_2.test5(6,:),.2,.5)];
channel7b = [calc_features(vec_2.test1(7,:),.2,.5); calc_features(vec_2.test2(7,:),.2,.5); calc_features(vec_2.test3(7,:),.2,.5); calc_features(vec_2.test4(7,:),.2,.5); calc_features(vec_2.test5(7,:),.2,.5)];
channel8b = [calc_features(vec_2.test1(8,:),.2,.5); calc_features(vec_2.test2(8,:),.2,.5); calc_features(vec_2.test3(8,:),.2,.5); calc_features(vec_2.test4(8,:),.2,.5); calc_features(vec_2.test5(8,:),.2,.5)];
channel9b = [calc_features(vec_2.test1(9,:),.2,.5); calc_features(vec_2.test2(9,:),.2,.5); calc_features(vec_2.test3(9,:),.2,.5); calc_features(vec_2.test4(9,:),.2,.5); calc_features(vec_2.test5(9,:),.2,.5)];

channel1c = [calc_features(vec_3.test1(1,:),.2,.5); calc_features(vec_3.test2(1,:),.2,.5); calc_features(vec_3.test3(1,:),.2,.5); calc_features(vec_3.test4(1,:),.2,.5); calc_features(vec_3.test5(1,:),.2,.5)];
channel2c = [calc_features(vec_3.test1(2,:),.2,.5); calc_features(vec_3.test2(2,:),.2,.5); calc_features(vec_3.test3(2,:),.2,.5); calc_features(vec_3.test4(2,:),.2,.5); calc_features(vec_3.test5(2,:),.2,.5)];
channel3c = [calc_features(vec_3.test1(3,:),.2,.5); calc_features(vec_3.test2(3,:),.2,.5); calc_features(vec_3.test3(3,:),.2,.5); calc_features(vec_3.test4(3,:),.2,.5); calc_features(vec_3.test5(3,:),.2,.5)];
channel4c = [calc_features(vec_3.test1(4,:),.2,.5); calc_features(vec_3.test2(4,:),.2,.5); calc_features(vec_3.test3(4,:),.2,.5); calc_features(vec_3.test4(4,:),.2,.5); calc_features(vec_3.test5(4,:),.2,.5)];
channel5c = [calc_features(vec_3.test1(5,:),.2,.5); calc_features(vec_3.test2(5,:),.2,.5); calc_features(vec_3.test3(5,:),.2,.5); calc_features(vec_3.test4(5,:),.2,.5); calc_features(vec_3.test5(5,:),.2,.5)];
channel6c = [calc_features(vec_3.test1(6,:),.2,.5); calc_features(vec_3.test2(6,:),.2,.5); calc_features(vec_3.test3(6,:),.2,.5); calc_features(vec_3.test4(6,:),.2,.5); calc_features(vec_3.test5(6,:),.2,.5)];
channel7c = [calc_features(vec_3.test1(7,:),.2,.5); calc_features(vec_3.test2(7,:),.2,.5); calc_features(vec_3.test3(7,:),.2,.5); calc_features(vec_3.test4(7,:),.2,.5); calc_features(vec_3.test5(7,:),.2,.5)];
channel8c = [calc_features(vec_3.test1(8,:),.2,.5); calc_features(vec_3.test2(8,:),.2,.5); calc_features(vec_3.test3(8,:),.2,.5); calc_features(vec_3.test4(8,:),.2,.5); calc_features(vec_3.test5(8,:),.2,.5)];
channel9c = [calc_features(vec_3.test1(9,:),.2,.5); calc_features(vec_3.test2(9,:),.2,.5); calc_features(vec_3.test3(9,:),.2,.5); calc_features(vec_3.test4(9,:),.2,.5); calc_features(vec_3.test5(9,:),.2,.5)];

channel1d = [calc_features(vec_4.test1(1,:),.2,.5); calc_features(vec_4.test2(1,:),.2,.5); calc_features(vec_4.test3(1,:),.2,.5); calc_features(vec_4.test4(1,:),.2,.5); calc_features(vec_4.test5(1,:),.2,.5)];
channel2d = [calc_features(vec_4.test1(2,:),.2,.5); calc_features(vec_4.test2(2,:),.2,.5); calc_features(vec_4.test3(2,:),.2,.5); calc_features(vec_4.test4(2,:),.2,.5); calc_features(vec_4.test5(2,:),.2,.5)];
channel3d = [calc_features(vec_4.test1(3,:),.2,.5); calc_features(vec_4.test2(3,:),.2,.5); calc_features(vec_4.test3(3,:),.2,.5); calc_features(vec_4.test4(3,:),.2,.5); calc_features(vec_4.test5(3,:),.2,.5)];
channel4d = [calc_features(vec_4.test1(4,:),.2,.5); calc_features(vec_4.test2(4,:),.2,.5); calc_features(vec_4.test3(4,:),.2,.5); calc_features(vec_4.test4(4,:),.2,.5); calc_features(vec_4.test5(4,:),.2,.5)];
channel5d = [calc_features(vec_4.test1(5,:),.2,.5); calc_features(vec_4.test2(5,:),.2,.5); calc_features(vec_4.test3(5,:),.2,.5); calc_features(vec_4.test4(5,:),.2,.5); calc_features(vec_4.test5(5,:),.2,.5)];
channel6d = [calc_features(vec_4.test1(6,:),.2,.5); calc_features(vec_4.test2(6,:),.2,.5); calc_features(vec_4.test3(6,:),.2,.5); calc_features(vec_4.test4(6,:),.2,.5); calc_features(vec_4.test5(6,:),.2,.5)];
channel7d = [calc_features(vec_4.test1(7,:),.2,.5); calc_features(vec_4.test2(7,:),.2,.5); calc_features(vec_4.test3(7,:),.2,.5); calc_features(vec_4.test4(7,:),.2,.5); calc_features(vec_4.test5(7,:),.2,.5)];
channel8d = [calc_features(vec_4.test1(8,:),.2,.5); calc_features(vec_4.test2(8,:),.2,.5); calc_features(vec_4.test3(8,:),.2,.5); calc_features(vec_4.test4(8,:),.2,.5); calc_features(vec_4.test5(8,:),.2,.5)];
channel9d = [calc_features(vec_4.test1(9,:),.2,.5); calc_features(vec_4.test2(9,:),.2,.5); calc_features(vec_4.test3(9,:),.2,.5); calc_features(vec_4.test4(9,:),.2,.5); calc_features(vec_4.test5(9,:),.2,.5)];

channel1e = [calc_features(vec_5.test1(1,:),.2,.5); calc_features(vec_5.test2(1,:),.2,.5); calc_features(vec_5.test3(1,:),.2,.5); calc_features(vec_5.test4(1,:),.2,.5); calc_features(vec_5.test5(1,:),.2,.5)];
channel2e = [calc_features(vec_5.test1(2,:),.2,.5); calc_features(vec_5.test2(2,:),.2,.5); calc_features(vec_5.test3(2,:),.2,.5); calc_features(vec_5.test4(2,:),.2,.5); calc_features(vec_5.test5(2,:),.2,.5)];
channel3e = [calc_features(vec_5.test1(3,:),.2,.5); calc_features(vec_5.test2(3,:),.2,.5); calc_features(vec_5.test3(3,:),.2,.5); calc_features(vec_5.test4(3,:),.2,.5); calc_features(vec_5.test5(3,:),.2,.5)];
channel4e = [calc_features(vec_5.test1(4,:),.2,.5); calc_features(vec_5.test2(4,:),.2,.5); calc_features(vec_5.test3(4,:),.2,.5); calc_features(vec_5.test4(4,:),.2,.5); calc_features(vec_5.test5(4,:),.2,.5)];
channel5e = [calc_features(vec_5.test1(5,:),.2,.5); calc_features(vec_5.test2(5,:),.2,.5); calc_features(vec_5.test3(5,:),.2,.5); calc_features(vec_5.test4(5,:),.2,.5); calc_features(vec_5.test5(5,:),.2,.5)];
channel6e = [calc_features(vec_5.test1(6,:),.2,.5); calc_features(vec_5.test2(6,:),.2,.5); calc_features(vec_5.test3(6,:),.2,.5); calc_features(vec_5.test4(6,:),.2,.5); calc_features(vec_5.test5(6,:),.2,.5)];
channel7e = [calc_features(vec_5.test1(7,:),.2,.5); calc_features(vec_5.test2(7,:),.2,.5); calc_features(vec_5.test3(7,:),.2,.5); calc_features(vec_5.test4(7,:),.2,.5); calc_features(vec_5.test5(7,:),.2,.5)];
channel8e = [calc_features(vec_5.test1(8,:),.2,.5); calc_features(vec_5.test2(8,:),.2,.5); calc_features(vec_5.test3(8,:),.2,.5); calc_features(vec_5.test4(8,:),.2,.5); calc_features(vec_5.test5(8,:),.2,.5)];
channel9e = [calc_features(vec_5.test1(9,:),.2,.5); calc_features(vec_5.test2(9,:),.2,.5); calc_features(vec_5.test3(9,:),.2,.5); calc_features(vec_5.test4(9,:),.2,.5); calc_features(vec_5.test5(9,:),.2,.5)];

channel1f = [calc_features(vec_6.test1(1,:),.2,.5); calc_features(vec_6.test2(1,:),.2,.5); calc_features(vec_6.test3(1,:),.2,.5); calc_features(vec_6.test4(1,:),.2,.5); calc_features(vec_6.test5(1,:),.2,.5)];
channel2f = [calc_features(vec_6.test1(2,:),.2,.5); calc_features(vec_6.test2(2,:),.2,.5); calc_features(vec_6.test3(2,:),.2,.5); calc_features(vec_6.test4(2,:),.2,.5); calc_features(vec_6.test5(2,:),.2,.5)];
channel3f = [calc_features(vec_6.test1(3,:),.2,.5); calc_features(vec_6.test2(3,:),.2,.5); calc_features(vec_6.test3(3,:),.2,.5); calc_features(vec_6.test4(3,:),.2,.5); calc_features(vec_6.test5(3,:),.2,.5)];
channel4f = [calc_features(vec_6.test1(4,:),.2,.5); calc_features(vec_6.test2(4,:),.2,.5); calc_features(vec_6.test3(4,:),.2,.5); calc_features(vec_6.test4(4,:),.2,.5); calc_features(vec_6.test5(4,:),.2,.5)];
channel5f = [calc_features(vec_6.test1(5,:),.2,.5); calc_features(vec_6.test2(5,:),.2,.5); calc_features(vec_6.test3(5,:),.2,.5); calc_features(vec_6.test4(5,:),.2,.5); calc_features(vec_6.test5(5,:),.2,.5)];
channel6f = [calc_features(vec_6.test1(6,:),.2,.5); calc_features(vec_6.test2(6,:),.2,.5); calc_features(vec_6.test3(6,:),.2,.5); calc_features(vec_6.test4(6,:),.2,.5); calc_features(vec_6.test5(6,:),.2,.5)];
channel7f = [calc_features(vec_6.test1(7,:),.2,.5); calc_features(vec_6.test2(7,:),.2,.5); calc_features(vec_6.test3(7,:),.2,.5); calc_features(vec_6.test4(7,:),.2,.5); calc_features(vec_6.test5(7,:),.2,.5)];
channel8f = [calc_features(vec_6.test1(8,:),.2,.5); calc_features(vec_6.test2(8,:),.2,.5); calc_features(vec_6.test3(8,:),.2,.5); calc_features(vec_6.test4(8,:),.2,.5); calc_features(vec_6.test5(8,:),.2,.5)];
channel9f = [calc_features(vec_6.test1(9,:),.2,.5); calc_features(vec_6.test2(9,:),.2,.5); calc_features(vec_6.test3(9,:),.2,.5); calc_features(vec_6.test4(9,:),.2,.5); calc_features(vec_6.test5(9,:),.2,.5)];



if plot_by_movement
    
    figure('name','movement 1')
    scatter3(channel1a(:,toPlotx),channel1a(:,toPloty),channel1a(:,toPlotz),1,'red');
    hold on
    scatter3(channel2a(:,toPlotx),channel2a(:,toPloty),channel2a(:,toPlotz),1,'black');
    scatter3(channel3a(:,toPlotx),channel3a(:,toPloty),channel3a(:,toPlotz),1,'cyan');
    scatter3(channel4a(:,toPlotx),channel4a(:,toPloty),channel4a(:,toPlotz),1,'magenta');
    scatter3(channel5a(:,toPlotx),channel5a(:,toPloty),channel5a(:,toPlotz),1,'yellow');
    scatter3(channel6a(:,toPlotx),channel6a(:,toPloty),channel6a(:,toPlotz),1,'green');
    
    figure('name','movement 2')
    scatter(channel1b(:,toPlotx),channel1b(:,toPloty),1,'red');
    hold on
    scatter(channel2b(:,toPlotx),channel2b(:,toPloty),1,'white');
    scatter(channel3b(:,toPlotx),channel3b(:,toPloty),1,'blue');
    scatter(channel4b(:,toPlotx),channel4b(:,toPloty),1,'black');
    scatter(channel5b(:,toPlotx),channel5b(:,toPloty),1,'magenta');
    scatter(channel6b(:,toPlotx),channel6b(:,toPloty),1,'cyan');
    scatter(channel7b(:,toPlotx),channel7b(:,toPloty),1,'green');
    scatter(channel8b(:,toPlotx),channel8b(:,toPloty),1,'yellow');
    scatter(channel9b(:,toPlotx),channel9b(:,toPloty),1,'white');
    
    figure('name','movement 3')
    scatter(channel1c(:,toPlotx),channel1c(:,toPloty),1,'red');
    hold on
    scatter(channel2c(:,toPlotx),channel2c(:,toPloty),1,'white');
    scatter(channel3c(:,toPlotx),channel3c(:,toPloty),1,'blue');
    scatter(channel4c(:,toPlotx),channel4c(:,toPloty),1,'black');
    scatter(channel5c(:,toPlotx),channel5c(:,toPloty),1,'magenta');
    scatter(channel6c(:,toPlotx),channel6c(:,toPloty),1,'cyan');
    scatter(channel7c(:,toPlotx),channel7c(:,toPloty),1,'green');
    scatter(channel8c(:,toPlotx),channel8c(:,toPloty),1,'yellow');
    scatter(channel9c(:,toPlotx),channel9c(:,toPloty),1,'white');
    
    figure('name','movement 4')
    scatter(channel1d(:,toPlotx),channel1d(:,toPloty),1,'red');
    hold on
    scatter(channel2d(:,toPlotx),channel2d(:,toPloty),1,'white');
    scatter(channel3d(:,toPlotx),channel3d(:,toPloty),1,'blue');
    scatter(channel4d(:,toPlotx),channel4d(:,toPloty),1,'black');
    scatter(channel5d(:,toPlotx),channel5d(:,toPloty),1,'magenta');
    scatter(channel6d(:,toPlotx),channel6d(:,toPloty),1,'cyan');
    scatter(channel7d(:,toPlotx),channel7d(:,toPloty),1,'green');
    scatter(channel8d(:,toPlotx),channel8d(:,toPloty),1,'yellow');
    scatter(channel9d(:,toPlotx),channel9d(:,toPloty),1,'white');
    
    figure('name','movement 5')
    scatter(channel1e(:,toPlotx),channel1e(:,toPloty),1,'red');
    hold on
    scatter(channel2e(:,toPlotx),channel2e(:,toPloty),1,'white');
    scatter(channel3e(:,toPlotx),channel3e(:,toPloty),1,'blue');
    scatter(channel4e(:,toPlotx),channel4e(:,toPloty),1,'black');
    scatter(channel5e(:,toPlotx),channel5e(:,toPloty),1,'magenta');
    scatter(channel6e(:,toPlotx),channel6e(:,toPloty),1,'cyan');
    scatter(channel7e(:,toPlotx),channel7e(:,toPloty),1,'green');
    scatter(channel8e(:,toPlotx),channel8e(:,toPloty),1,'yellow');
    scatter(channel9e(:,toPlotx),channel9e(:,toPloty),1,'white');
    
    figure('name','movement 6')
    scatter(channel1f(:,toPlotx),channel1b(:,toPloty),1,'red');
    hold on
    scatter(channel2f(:,toPlotx),channel2f(:,toPloty),1,'white');
    scatter(channel3f(:,toPlotx),channel3f(:,toPloty),1,'blue');
    scatter(channel4f(:,toPlotx),channel4f(:,toPloty),1,'black');
    scatter(channel5f(:,toPlotx),channel5f(:,toPloty),1,'magenta');
    scatter(channel6f(:,toPlotx),channel6f(:,toPloty),1,'cyan');
    scatter(channel7f(:,toPlotx),channel7f(:,toPloty),1,'green');
    scatter(channel8f(:,toPlotx),channel8f(:,toPloty),1,'yellow');
    scatter(channel9f(:,toPlotx),channel9f(:,toPloty),1,'white');
    
end



if plot_by_channel
    figure('name','channel 1')
    scatter3(channel1a(:,toPlotx),channel1a(:,toPloty),channel1a(:,toPlotz),1,[1 0 0]);
    hold on
    scatter3(channel1b(:,toPlotx),channel1b(:,toPloty),channel1b(:,toPlotz),1,[0.9 0.1 0]);
    scatter3(channel1c(:,toPlotx),channel1c(:,toPloty),channel1c(:,toPlotz),1,[0.8 0.2 0]);
    scatter3(channel1d(:,toPlotx),channel1d(:,toPloty),channel1d(:,toPlotz),1,[0.7 0.3 0]);
    scatter3(channel1e(:,toPlotx),channel1e(:,toPloty),channel1e(:,toPlotz),1,[0.6 0.4 0]);
    scatter3(channel1f(:,toPlotx),channel1f(:,toPloty),channel1f(:,toPlotz),1,[0.5 0.5 0]);
    
    scatter3(channel2a(:,toPlotx),channel2a(:,toPloty),channel2a(:,toPlotz),1,[0 1 0]);
    scatter3(channel2b(:,toPlotx),channel2b(:,toPloty),channel2b(:,toPlotz),1,[0 0.9 0.1]);
    scatter3(channel2c(:,toPlotx),channel2c(:,toPloty),channel2c(:,toPlotz),1,[0 0.8 0.2]);
    scatter3(channel2d(:,toPlotx),channel2d(:,toPloty),channel2d(:,toPlotz),1,[0 0.7 0.3]);
    scatter3(channel2e(:,toPlotx),channel2e(:,toPloty),channel2e(:,toPlotz),1,[0 0.6 0.4]);
    scatter3(channel2f(:,toPlotx),channel2f(:,toPloty),channel2f(:,toPlotz),1,[0 0.5 0.5]);
    
      figure('name','channel 3')
    scatter(channel3a(:,toPlotx),channel3a(:,toPloty),1,'red');
    hold on
    scatter(channel3b(:,toPlotx),channel3b(:,toPloty),1,'green');
    scatter(channel3c(:,toPlotx),channel3c(:,toPloty),1,'blue');
    scatter(channel3d(:,toPlotx),channel3d(:,toPloty),1,'yellow');
    scatter(channel3e(:,toPlotx),channel3e(:,toPloty),1,'magenta');
    scatter(channel3f(:,toPlotx),channel3f(:,toPloty),1,'cyan');
    
      figure('name','channel 4')
    scatter(channel4a(:,toPlotx),channel4a(:,toPloty),1,'red');
    hold on
    scatter(channel4b(:,toPlotx),channel4b(:,toPloty),1,'green');
    scatter(channel4c(:,toPlotx),channel4c(:,toPloty),1,'blue');
    scatter(channel4d(:,toPlotx),channel4d(:,toPloty),1,'yellow');
    scatter(channel4e(:,toPlotx),channel4e(:,toPloty),1,'magenta');
    scatter(channel4f(:,toPlotx),channel4f(:,toPloty),1,'cyan');
    
      figure('name','channel 5')
    scatter(channel5a(:,toPlotx),channel5a(:,toPloty),1,'red');
    hold on
    scatter(channel5b(:,toPlotx),channel5b(:,toPloty),1,'green');
    scatter(channel5c(:,toPlotx),channel5c(:,toPloty),1,'blue');
    scatter(channel5d(:,toPlotx),channel5d(:,toPloty),1,'yellow');
    scatter(channel5e(:,toPlotx),channel5e(:,toPloty),1,'magenta');
    scatter(channel5f(:,toPlotx),channel5f(:,toPloty),1,'cyan');
    
      figure('name','channel 6')
    scatter(channel6a(:,toPlotx),channel6a(:,toPloty),1,'red');
    hold on
    scatter(channel6b(:,toPlotx),channel6b(:,toPloty),1,'green');
    scatter(channel6c(:,toPlotx),channel6c(:,toPloty),1,'blue');
    scatter(channel6d(:,toPlotx),channel6d(:,toPloty),1,'yellow');
    scatter(channel6e(:,toPlotx),channel6e(:,toPloty),1,'magenta');
    scatter(channel6f(:,toPlotx),channel6f(:,toPloty),1,'cyan');
    
      figure('name','channel 7')
    scatter(channel7a(:,toPlotx),channel7a(:,toPloty),1,'red');
    hold on
    scatter(channel7b(:,toPlotx),channel7b(:,toPloty),1,'green');
    scatter(channel7c(:,toPlotx),channel7c(:,toPloty),1,'blue');
    scatter(channel7d(:,toPlotx),channel7d(:,toPloty),1,'yellow');
    scatter(channel7e(:,toPlotx),channel7e(:,toPloty),1,'magenta');
    scatter(channel7f(:,toPlotx),channel7f(:,toPloty),1,'cyan');
    
    
      figure('name','channel 8')
    scatter(channel8a(:,toPlotx),channel8a(:,toPloty),1,'red');
    hold on
    scatter(channel8b(:,toPlotx),channel8b(:,toPloty),1,'green');
    scatter(channel8c(:,toPlotx),channel8c(:,toPloty),1,'blue');
    scatter(channel8d(:,toPlotx),channel8d(:,toPloty),1,'yellow');
    scatter(channel8e(:,toPlotx),channel8e(:,toPloty),1,'magenta');
    scatter(channel8f(:,toPlotx),channel8f(:,toPloty),1,'cyan');
    
      figure('name','channel 9')
    scatter(channel9a(:,toPlotx),channel9a(:,toPloty),1,'red');
    hold on
    scatter(channel9b(:,toPlotx),channel9b(:,toPloty),1,'green');
    scatter(channel9c(:,toPlotx),channel9c(:,toPloty),1,'blue');
    scatter(channel9d(:,toPlotx),channel9d(:,toPloty),1,'yellow');
    scatter(channel9e(:,toPlotx),channel9e(:,toPloty),1,'magenta');
    scatter(channel9f(:,toPlotx),channel9f(:,toPloty),1,'cyan');
end
