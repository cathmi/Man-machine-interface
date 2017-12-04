
%plots of the features of each movement by channel


for i = 1:9
channel_splitter(i,:) = i:9:length(full_vec1(:,1)); 

rms_1(:,i) = full_vec1(channel_splitter(i,:),1);
rms_2(:,i) = full_vec2(channel_splitter(i,:),1);
rms_3(:,i) = full_vec3(channel_splitter(i,:),1);
rms_4(:,i) = full_vec4(channel_splitter(i,:),1);
rms_5(:,i) = full_vec5(channel_splitter(i,:),1);
rms_6(:,i) = full_vec6(channel_splitter(i,:),1);

var_1(:,i) = full_vec1(channel_splitter(i,:),2);
var_2(:,i) = full_vec2(channel_splitter(i,:),2);
var_3(:,i) = full_vec3(channel_splitter(i,:),2);
var_4(:,i) = full_vec4(channel_splitter(i,:),2);
var_5(:,i) = full_vec5(channel_splitter(i,:),2);
var_6(:,i) = full_vec6(channel_splitter(i,:),2);

wl_1(:,i) = full_vec1(channel_splitter(i,:),3);
wl_2(:,i) = full_vec2(channel_splitter(i,:),3);
wl_3(:,i) = full_vec3(channel_splitter(i,:),3);
wl_4(:,i) = full_vec4(channel_splitter(i,:),3);
wl_5(:,i) = full_vec5(channel_splitter(i,:),3);
wl_6(:,i) = full_vec6(channel_splitter(i,:),3);

mav_1(:,i) = full_vec1(channel_splitter(i,:),4);
mav_2(:,i) = full_vec2(channel_splitter(i,:),4);
mav_3(:,i) = full_vec3(channel_splitter(i,:),4);
mav_4(:,i) = full_vec4(channel_splitter(i,:),4);
mav_5(:,i) = full_vec5(channel_splitter(i,:),4);
mav_6(:,i) = full_vec6(channel_splitter(i,:),4);

zc_1(:,i) = full_vec1(channel_splitter(i,:),5);
zc_2(:,i) = full_vec2(channel_splitter(i,:),5);
zc_3(:,i) = full_vec3(channel_splitter(i,:),5);
zc_4(:,i) = full_vec4(channel_splitter(i,:),5);
zc_5(:,i) = full_vec5(channel_splitter(i,:),5);
zc_6(:,i) = full_vec6(channel_splitter(i,:),5);
end


% figure()
% hold on;
% for int = 1:9
% scatter3(rms_1(:,int),var_1(:,int),wl_1(:,int),2,[int/10 0 0]);
% scatter3(rms_2(:,int),var_2(:,int),wl_2(:,int),2,[0 int/10 0]);
% scatter3(rms_3(:,int),var_3(:,int),wl_3(:,int),2,[0 0 int/10]);
% scatter3(rms_4(:,int),var_4(:,int),wl_4(:,int),2,[int/10 0 int/10]);
% scatter3(rms_5(:,int),var_5(:,int),wl_5(:,int),2,[0 int/10 int/10]);
% scatter3(rms_6(:,int),var_6(:,int),wl_6(:,int),2,[int/10 int/10 0]);
% 
% end

% figure('name','movement1-rms')
% plot(rms_1);
% 
% figure('name','movement2-rms')
% plot(rms_2)
% 
% figure('name','movement3-rms')
% plot(rms_3)
% 
% figure('name','movement4-rms')
% plot(rms_4)
% 
% figure('name','movement5-rms')
% plot(rms_5)
% 
% figure('name','movement6-rms')
% plot(rms_6)

% figure('name','movement1-var')
% plot(var_1);
% 
% figure('name','movement2-var')
% plot(var_2)
% 
% figure('name','movement3-var')
% plot(var_3)
% 
% figure('name','movement4-var')
% plot(var_4)
% 
% figure('name','movement5-var')
% plot(var_5)
% 
% figure('name','movement6-var')
% plot(var_6)
% 
% figure('name','movement1-wl')
% plot(wl_1);
% 
% figure('name','movement2-wl')
% plot(wl_2)
% 
% figure('name','movement3-wl')
% plot(wl_3)
% 
% figure('name','movement4-wl')
% plot(wl_4)
% 
% figure('name','movement5-wl')
% plot(wl_5)
% 
% figure('name','movement6-wl')
% plot(wl_6)
% 
% % figure('name','movement1-mav')
% % plot(mav_1);
% % 
% % figure('name','movement2-mav')
% % plot(mav_2)
% % 
% % figure('name','movement3-mav')
% % plot(mav_3)
% % 
% % figure('name','movement4-mav')
% % plot(mav_4)
% % 
% % figure('name','movement5-mav')
% % plot(mav_5)
% % 
% % figure('name','movement6-mav')
% % plot(mav_6)
% % 
% % figure('name','movement1-zc')
% % plot(zc_1);
% % 
% % figure('name','movement2-zc')
% % plot(zc_2)
% % 
% % figure('name','movement3-zc')
% % plot(zc_3)
% % 
% % figure('name','movement4-zc')
% % plot(zc_4)
% % 
% % figure('name','movement5-zc')
% % plot(zc_5)
% % 
% % figure('name','movement6-zc')
% % plot(zc_6)

