% calculate zero-crossings rate for each window, assuming each channel is a
% row

function result = calc_zc(x)

size = length(x(:,1));
result = zeros(size,1);
for i = 1:size
result(i,1) = sum(abs(diff(x(i,:)>0)))/length(x(i,:));

end
end