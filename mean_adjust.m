%mean adjust each channel (row) in matrix x

function result = mean_adjust(x)

noofchannels = 192;
result = zeros(size(x));
means = zeros(noofchannels,1);
for i = 1:noofchannels
    means(i) = mean(x(i,:));
    
    result(i,:) = x(i,:) - means(i);
    
    
    
end

end