%mean adjust each channel (row) in matrix x

function result = mean_adjust(x)

noofchannels = size(x(:,1));
result = zeros(size(x));
means = zeros(noofchannels);
for i = 1:noofchannels
    means(i,1) = mean(x(i,:));
    
    result(i,:) = x(i,:) - means(i);
    
    
    
end

end