function calc = calc_wl(x)

numchannels = length(x(:,1));

% allocate memory
calc = zeros(numchannels,1);



for i = 1:numchannels
   

   calc(i,1) = sum(abs(diff(x(i,:),[],2)));
   
   
end
end


