function result = calc_features_separate(x, window, overlap,sensor_split)

sample_rate = 2048; %2048 readings per second
spacings = window * overlap; %spacing between the start of each window in s
recording_time = length(x(1,:)) /(sample_rate); 
no_of_windows = round(recording_time/spacings,0) - 4;
points_per_window = round(sample_rate * window,0);
result = [];
channels_size = length(x(:,1));
channels = ones(channels_size,1);

for i = 1:channels_size
    channels(i,1) = i;
    
end

for j = 0:no_of_windows - 1
    win_st = round(j * points_per_window * overlap,0) + 1; 
    win_end = win_st + points_per_window - 1;
   window_selected = x(:,win_st:win_end); 

   window_features = [calc_rms(window_selected)'];  %calc_var(window_selected)  calc_wl(window_selected)  calc_mav(window_selected) calc_zc(window_selected) channels]; %200 x 5 matrix
    
    result = [result ; window_features]; %long matrix of features by channel - each window features stacked on top of one another
end


end