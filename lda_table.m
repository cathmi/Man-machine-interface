%table for lda

movement = {'forward'; 'backward'; 'up'; 'down'};
%fwd = 1, back = 2, up = 3, down = 4

fwd = load('C:\Users\Cathy\Documents\MSc Computer Science\MSc Project - man machine interfaces\Lab software\sandbox\contractions_separated\3-1-2.sig_supersmoothed.mat_contractions.mat');
 %forward
fwdfeaturevector1 = [calc_rms(fwd.test1)  calc_var(fwd.test1)  calc_wl(fwd.test1)  calc_mav(fwd.test1)];
fwdfeaturevector2 = [calc_rms(fwd.test2)  calc_var(fwd.test2)  calc_wl(fwd.test2)  calc_mav(fwd.test2)];
fwdfeaturevector3 = [calc_rms(fwd.test3)  calc_var(fwd.test3)  calc_wl(fwd.test3)  calc_mav(fwd.test3)];
fwdfeaturevector4 = [calc_rms(fwd.test4)  calc_var(fwd.test4)  calc_wl(fwd.test4)  calc_mav(fwd.test4)];
fwdfeaturevector5 = [calc_rms(fwd.test5)  calc_var(fwd.test5)  calc_wl(fwd.test5)  calc_mav(fwd.test5)];

fwdfeaturevector = [fwdfeaturevector1 ; fwdfeaturevector2  ; fwdfeaturevector4 ; fwdfeaturevector5];
direction_f = repmat(1, length(fwdfeaturevector),1);
fwdfull = [direction_f fwdfeaturevector];

 
up = load('C:\Users\Cathy\Documents\MSc Computer Science\MSc Project - man machine interfaces\Lab software\sandbox\contractions_separated\3-1-1.sig_supersmoothed.mat_contractions.mat');

upfeaturevector1 = [calc_rms(up.test1)  calc_var(up.test1)  calc_wl(up.test1)  calc_mav(up.test1)];
upfeaturevector2 = [calc_rms(up.test2)  calc_var(up.test2)  calc_wl(up.test2)  calc_mav(up.test2)];
upfeaturevector3 = [calc_rms(up.test3)  calc_var(up.test3)  calc_wl(up.test3)  calc_mav(up.test3)];
upfeaturevector4 = [calc_rms(up.test4)  calc_var(up.test4)  calc_wl(up.test4)  calc_mav(up.test4)];
upfeaturevector5 = [calc_rms(up.test5)  calc_var(up.test5)  calc_wl(up.test5)  calc_mav(up.test5)];

upfeaturevector = [upfeaturevector1 ; upfeaturevector2  ; upfeaturevector4 ; upfeaturevector5];
direction_u = repmat(3, length(upfeaturevector), 1);
upfull = [direction_u upfeaturevector];

 % shrug up
dwn = load('C:\Users\Cathy\Documents\MSc Computer Science\MSc Project - man machine interfaces\Lab software\sandbox\contractions_separated\3-1-4.sig_supersmoothed.mat_contractions.mat');

dwnfeaturevector1 = [calc_rms(dwn.test1)  calc_var(dwn.test1)  calc_wl(dwn.test1)  calc_mav(dwn.test1)];
dwnfeaturevector2 = [calc_rms(dwn.test2)  calc_var(dwn.test2)  calc_wl(dwn.test2)  calc_mav(dwn.test2)];
dwnfeaturevector3 = [calc_rms(dwn.test3)  calc_var(dwn.test3)  calc_wl(dwn.test3)  calc_mav(dwn.test3)];
dwnfeaturevector4 = [calc_rms(dwn.test4)  calc_var(dwn.test4)  calc_wl(dwn.test4)  calc_mav(dwn.test4)];
dwnfeaturevector5 = [calc_rms(dwn.test5)  calc_var(dwn.test5)  calc_wl(dwn.test5)  calc_mav(dwn.test5)];

dwnfeaturevector = [dwnfeaturevector1 ; dwnfeaturevector2  ; dwnfeaturevector4 ; dwnfeaturevector5];
direction_d = repmat(4, length(dwnfeaturevector), 1);
dwnfull = [direction_d dwnfeaturevector];



back = load('C:\Users\Cathy\Documents\MSc Computer Science\MSc Project - man machine interfaces\Lab software\sandbox\contractions_separated\3-1-3.sig_supersmoothed.mat_contractions.mat');

backfeaturevector1 = [calc_rms(back.test1)  calc_var(back.test1)  calc_wl(back.test1)  calc_mav(back.test1)];
backfeaturevector2 = [calc_rms(back.test2)  calc_var(back.test2)  calc_wl(back.test2)  calc_mav(back.test2)];
backfeaturevector3 = [calc_rms(back.test3)  calc_var(back.test3)  calc_wl(back.test3)  calc_mav(back.test3)];
backfeaturevector4 = [calc_rms(back.test4)  calc_var(back.test4)  calc_wl(back.test4)  calc_mav(back.test4)];
backfeaturevector5 = [calc_rms(back.test5)  calc_var(back.test5)  calc_wl(back.test5)  calc_mav(back.test5)];

backfeaturevector = [backfeaturevector1 ; backfeaturevector2  ; backfeaturevector4 ; backfeaturevector5];
direction_b = repmat(2, length(backfeaturevector), 1);
backfull = [direction_b backfeaturevector];

feature_vector = [fwdfull ; upfull ; dwnfull ; backfull];

t = table();
t.direction = feature_vector(:,1);
t.rms = feature_vector(:,2);
t.var = feature_vector(:,3);
t.wl = feature_vector(:,4);
t.mav = feature_vector(:,5);

Mdl = fitcdiscr(t,'direction');
X = [fwdfeaturevector3 ; upfeaturevector3 ; dwnfeaturevector3 ; backfeaturevector3];
[label,score,cost] = predict(Mdl,X);

actual = [repmat(1,200,1) ; repmat(2,200,1) ; repmat(3,200,1) ; repmat(4,200,1)];

accuracy = nnz(label - actual);


% feature to use - rms
% mav
%wl
%var