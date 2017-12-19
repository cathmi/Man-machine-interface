%create feature vector for input window x, calcs rms, variance, waveform
%length, mean amplitude and zero crossings rate for the given window of data
%window size given in s, overlap given as decimal fraction

%keep all processing per sensor (three or 4 per measurement)
%calc all features, decide which to use later, can rerun lda with different
%features etc

function result = calc_features(x, window, overlap)

sample_rate = 2048;
spacings = window * overlap;
recording_time = length(x(1,:)) /(sample_rate); 
no_of_windows = round(recording_time/spacings,0) - 3;
points_per_window = round(sample_rate * window,0);
result = [];



for i = 1:no_of_windows
    win_st = i * points_per_window * (1-overlap) + 1; 
    win_end = win_st + points_per_window - 1;
   window_selected = x(:,win_st:win_end); 

   window_features = [calc_rms(window_selected)  calc_var(window_selected)  calc_wl(window_selected)  calc_mav(window_selected) calc_zc(window_selected)]; %200 x 5 matrix
    
    result = [result ; window_features]; %long matrix of features - each window features stacked on top of one another
end

%sort out preallocation etc for matrix
end



