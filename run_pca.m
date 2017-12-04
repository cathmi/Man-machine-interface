

%run and display pca

classes = 6;

vector_1 = repmat(1,length(rms_1(:,1)),1);
vector_2 = repmat(2,length(rms_2(:,1)),1);
vector_3 = repmat(3,length(rms_3(:,1)),1);
vector_4 = repmat(4,length(rms_4(:,1)),1);
vector_5 = repmat(5,length(rms_5(:,1)),1);
vector_6 = repmat(6,length(rms_6(:,1)),1);
pca_a = [rms_1 var_1 wl_1 mav_1 zc_1];
pca_b = [rms_2 var_2 wl_2 mav_2 zc_2];
pca_c = [rms_3 var_3 wl_3 mav_3 zc_3];
pca_d = [rms_4 var_4 wl_4 mav_4 zc_4];
pca_e = [rms_5 var_5 wl_5 mav_5 zc_5];
pca_f = [rms_6 var_6 wl_6 mav_6 zc_6];
 
    
test_vector = [pca_a; pca_b; pca_c; pca_d; pca_e; pca_f];



[coeffa, ~, latenta] = pca(test_vector);


projectiona = coeffa' * test_vector' ;



nFeatureSpacePoints = size(projectiona,2);

cs = repmat(1:classes, nFeatureSpacePoints/classes,1);
cs = cs(:);
figure('name','pca1')
colors = {[0 0 1],[1 0 0.05], [0.55 0, 1], [1 0.55 0], [0 0.39 0], [1 0.35 0.64], [0.47 0.53 0.6], [0.67 0.47 0.31], 'c', 'k',};
hold on
for iClass=1:max(cs)
    h = scatter3 (projectiona(1,cs==iClass), projectiona(2,cs==iClass), projectiona(3,cs==iClass),2);
    if iClass<=length(colors)
        color = colors{iClass};
    else
        color = 'k';
    end
   
end
hold off;

