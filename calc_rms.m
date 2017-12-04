%output column vector of rms for each channel

function calc = calc_rms(x)
numchannels = length(x(:,1));

% allocate memory
calc = zeros(numchannels,1);



for i = 1:numchannels
   

   calc(i,1) = rms(x(i,:));
   
end
end