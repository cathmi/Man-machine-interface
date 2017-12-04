function calc = calc_mav(x)

numchannels = length(x(:,1));

% allocate memory
calc = zeros(numchannels,1);

for i = 1:numchannels
    
   
    calc(i,:) = mean(abs(x(i,:)));
   
  
end


end