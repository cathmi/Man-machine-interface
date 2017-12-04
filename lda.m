%current code 18/10/17
dimensions = 6;
channel_const = length(feat_trial_1a(:,1));

Mdla = fitcdiscr(ta,'direction');
Mdlb = fitcdiscr(tb,'direction');
Mdlc = fitcdiscr(tc,'direction');
Mdld = fitcdiscr(td,'direction');
Mdle = fitcdiscr(te,'direction');

Xa = trial_vector_input_a;
Xb = trial_vector_input_b;
Xc = trial_vector_input_c;
Xd = trial_vector_input_d;
Xe = trial_vector_input_e;

[labela,scorea,costa] = predict(Mdla,Xa);
[labelb,scoreb,costb] = predict(Mdlb,Xb);
[labelc,scorec,costc] = predict(Mdlc,Xc);
[labeld,scored,costd] = predict(Mdld,Xd);
[labele,scoree,coste] = predict(Mdle,Xe);

actual = [repmat(1,channel_const,1) ; repmat(2,channel_const,1) ; repmat(3,channel_const,1) ; repmat(4,channel_const,1)];

if dimensions == 6
   actual = [actual; repmat(5,channel_const,1); repmat(6,channel_const,1)]; 
end 

accuracya= 1-((nnz(labela - actual))/(dimensions * channel_const));
accuracyb= 1-((nnz(labelb - actual))/(dimensions * channel_const));
accuracyc= 1-((nnz(labelc - actual))/(dimensions * channel_const));
accuracyd= 1-((nnz(labeld - actual))/(dimensions * channel_const));
accuracye= 1-((nnz(labele - actual))/(dimensions * channel_const));




