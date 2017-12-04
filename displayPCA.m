function h = displayPCA(featureMatrix, classes, varargin)
%displayPCA(featureMatrix, numClasses) 
%calculates and shows 3D PCA clouds of feature matrix
%
%input: feature matrix (features x observations)
%       classes: number of different classes in feature matrix,
%       assuming there are equally many observations per class
%       OR
%       a vector containing the class labels for each data point
%       optional 3rd input: if omitted or 'newFig' a new figure will be
%       created, otherwise not
%
%output: handle to the figure;
if  nargin < 2 || isempty(featureMatrix)
    help displayPCA;
    return;
end
if nargin == 2 %only 2 inputargs => create new figure by default
    newFig = 1;
end
if nargin == 3
    if strcmpi(varargin{1}, 'newFig')
        newFig = 1;
    else
        newFig = 0;
    end
end

featureMatrix = bsxfun(@minus, featureMatrix', mean(featureMatrix'))'; %center

[coeff, ~] = princomp(featureMatrix');

%manual PCA
%featureMatrix = featureMatrix-repmat(mean(featureMatrix,2),1,size(featureMatrix,2));
%[coeff, ~] = svd(featureMatrix); WRONG must be svd(cov(featureMatrix')) 

projection = coeff' * featureMatrix;
nFeatureSpacePoints = size(projection,2);

if newFig
    figure;
end

if isscalar(classes)
    cs = repmat(1:classes, nFeatureSpacePoints/classes,1); %classes
    cs = cs(:);
else
    cs = classes;
end

hold on;
colors = {[0 0 1],[1 0 0.05], [0.55 0, 1], [1 0.55 0], [0 0.39 0], [1 0.35 0.64], [0.47 0.53 0.6], [0.67 0.47 0.31], 'c', 'k',};
for iClass=1:max(cs)
    h = plot3 (projection(1,cs==iClass), projection(2,cs==iClass), projection(3,cs==iClass));
    if iClass<=length(colors)
        color = colors{iClass};
    else
        color = 'k';
    end
    set (h, 'Color', color);
end
grid on;
hold off;


    
end


