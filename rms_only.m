ta = table();
ta.direction = feature_vector_input_a(:,1);
% ta.rms = feature_vector_input_a(:,2);
ta.rms = feature_vector_input_a(:,2);

ta.channel = feature_vector_input_a(:,7);

dimensions = 6;
channel_const = 423;

Mdla = fitcdiscr(ta,'direction');

rows = [4 6];
Xa = trial_vector_input_a(:,rows);


[labela,scorea,costa] = predict(Mdla,Xa);


actual = [repmat(1,channel_const,1) ; repmat(2,channel_const,1) ; repmat(3,channel_const,1) ; repmat(4,channel_const,1)];

if dimensions == 6
   actual = [actual; repmat(5,channel_const,1); repmat(6,channel_const,1)]; 
end 

accuracya= 1-((nnz(labela - actual))/(dimensions * channel_const));
