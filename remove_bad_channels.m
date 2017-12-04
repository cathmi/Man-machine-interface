%remove bad channels, channels with max amplitude outside 3sd of mean max
%amplitude
%NEED TO SPLIT FOR SENSORS, ZERO CHANNELS REMOVE TOO
function result = remove_bad_channels(x)

size = length(x(:,1));
max_amp = max(abs(x),[],2);
result = [];
av_max = mean(max_amp);
stdev_max = std(max_amp);

for i = 1:size
    
    
    %test code
    
%     absolute = abs(x(i,:));
%     
%     mins = absolute < (0.5) * max(absolute);
%     count_mins = sum(mins);
%     
%     maxs = absolute > 0.5 * max(absolute);
%     count_maxs = sum(maxs);
%     
%     
%    if count_maxs < 0.75 * count_mins 
    
  if ((max(abs(x(i,:))) < av_max + 3 * stdev_max) || (max(abs(x(i,:))) > av_max - 3 * stdev_max))
       result = [result; x(i,:)];
   end
    
end


end