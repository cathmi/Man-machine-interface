function calc = calc_var(x)
numchannels = length(x(:,1));

% allocate memory
calc = zeros(numchannels,1);


for i = 1:numchannels
   
   calc(i,1) = var(x(i,:));
   
end
end