%LDA results plotter - plot actual movement as colour on axes of predicted direction,
%small random number in other 2 planes to prevent points on top of one
%another
%% 

%rms only


test_rms_1 = table();
test_rms_1.direction = ta.direction;
test_rms_1.rms = ta.rms;
test_rms_1.channel = ta.channel;
input_rms_1 = [trial_vector_input_a(:,1) trial_vector_input_a(:,6)];
Mdla = fitcdiscr(test_rms_1,'direction');
[labela,scorea,costa] = predict(Mdla,input_rms_1);



set = length(labela)/6;
figure('name','rms_1')
hold on;
for i = 1:set
    if(labela(i) == 1)
        colour = 'red';
    elseif (labela(i) == 2)
        colour = 'yellow';
        elseif (labela(i) == 3)
        colour = 'blue';
        elseif (labela(i) == 4)
        colour = 'cyan';
        elseif (labela(i) == 5)
        colour = 'magenta';
        elseif (labela(i) == 6)
        colour = 'green';
    else colour = 'black';
    end
    scatter3(3,rand(1,1),rand(1,1),2,colour);
end

for i = set+1:(2*set)
    if(labela(i) == 1)
        colour = 'red';
    elseif (labela(i) == 2)
        colour = 'yellow';
        elseif (labela(i) == 3)
        colour = 'blue';
        elseif (labela(i) == 4)
        colour = 'cyan';
        elseif (labela(i) == 5)
        colour = 'magenta';
        elseif (labela(i) == 6)
        colour = 'green';
    else colour = 'black';
    end
    scatter3(rand(1,1),3,rand(1,1),2,colour);
end

for i = (2*set)+1:(3*set)
    if(labela(i) == 1)
        colour = 'red';
    elseif (labela(i) == 2)
        colour = 'yellow';
        elseif (labela(i) == 3)
        colour = 'blue';
        elseif (labela(i) == 4)
        colour = 'cyan';
        elseif (labela(i) == 5)
        colour = 'magenta';
        elseif (labela(i) == 6)
        colour = 'green';
    else colour = 'black';
    end
    scatter3(rand(1,1),rand(1,1),3,2,colour);
end

for i = (3*set)+1:4*set
    if(labela(i) == 1)
        colour = 'red';
    elseif (labela(i) == 2)
        colour = 'yellow';
        elseif (labela(i) == 3)
        colour = 'blue';
        elseif (labela(i) == 4)
        colour = 'cyan';
        elseif (labela(i) == 5)
        colour = 'magenta';
        elseif (labela(i) == 6)
        colour = 'green';
    else colour = 'black';
    end
    scatter3(-3,rand(1,1),rand(1,1),2,colour);
end

for i = (4*set)+1:(5*set)
    if(labela(i) == 1)
        colour = 'red';
    elseif (labela(i) == 2)
        colour = 'yellow';
        elseif (labela(i) == 3)
        colour = 'blue';
        elseif (labela(i) == 4)
        colour = 'cyan';
        elseif (labela(i) == 5)
        colour = 'magenta';
        elseif (labela(i) == 6)
        colour = 'green';
    else colour = 'black';
    end
    scatter3(rand(1,1),-3,rand(1,1),2,colour);
end

for i = (5*set)+1:6*set
    if(labela(i) == 1)
        colour = 'red';
    elseif (labela(i) == 2)
        colour = 'yellow';
        elseif (labela(i) == 3)
        colour = 'blue';
        elseif (labela(i) == 4)
        colour = 'cyan';
        elseif (labela(i) == 5)
        colour = 'magenta';
        elseif (labela(i) == 6)
        colour = 'green';
    else colour = 'black';
    end
    scatter3(rand(1,1),rand(1,1),-3,2,colour);
end
%% 

%% 

%var only


test_var_1 = table();
test_var_1.direction = ta.direction;
test_var_1.var = ta.var;
test_var_1.channel = ta.channel;
input_var_1 = [trial_vector_input_a(:,2) trial_vector_input_a(:,6)];
Mdla = fitcdiscr(test_var_1,'direction');
[labela,scorea,costa] = predict(Mdla,input_var_1);



set = length(labela)/6;
figure('name','var_1')
hold on;
for i = 1:set
    if(labela(i) == 1)
        colour = 'red';
    elseif (labela(i) == 2)
        colour = 'yellow';
        elseif (labela(i) == 3)
        colour = 'blue';
        elseif (labela(i) == 4)
        colour = 'cyan';
        elseif (labela(i) == 5)
        colour = 'magenta';
        elseif (labela(i) == 6)
        colour = 'green';
    else colour = 'black';
    end
    scatter3(3,rand(1,1),rand(1,1),2,colour);
end

for i = set+1:(2*set)
    if(labela(i) == 1)
        colour = 'red';
    elseif (labela(i) == 2)
        colour = 'yellow';
        elseif (labela(i) == 3)
        colour = 'blue';
        elseif (labela(i) == 4)
        colour = 'cyan';
        elseif (labela(i) == 5)
        colour = 'magenta';
        elseif (labela(i) == 6)
        colour = 'green';
    else colour = 'black';
    end
    scatter3(rand(1,1),3,rand(1,1),2,colour);
end

for i = (2*set)+1:(3*set)
    if(labela(i) == 1)
        colour = 'red';
    elseif (labela(i) == 2)
        colour = 'yellow';
        elseif (labela(i) == 3)
        colour = 'blue';
        elseif (labela(i) == 4)
        colour = 'cyan';
        elseif (labela(i) == 5)
        colour = 'magenta';
        elseif (labela(i) == 6)
        colour = 'green';
    else colour = 'black';
    end
    scatter3(rand(1,1),rand(1,1),3,2,colour);
end

for i = (3*set)+1:4*set
    if(labela(i) == 1)
        colour = 'red';
    elseif (labela(i) == 2)
        colour = 'yellow';
        elseif (labela(i) == 3)
        colour = 'blue';
        elseif (labela(i) == 4)
        colour = 'cyan';
        elseif (labela(i) == 5)
        colour = 'magenta';
        elseif (labela(i) == 6)
        colour = 'green';
    else colour = 'black';
    end
    scatter3(-3,rand(1,1),rand(1,1),2,colour);
end

for i = (4*set)+1:(5*set)
    if(labela(i) == 1)
        colour = 'red';
    elseif (labela(i) == 2)
        colour = 'yellow';
        elseif (labela(i) == 3)
        colour = 'blue';
        elseif (labela(i) == 4)
        colour = 'cyan';
        elseif (labela(i) == 5)
        colour = 'magenta';
        elseif (labela(i) == 6)
        colour = 'green';
    else colour = 'black';
    end
    scatter3(rand(1,1),-3,rand(1,1),2,colour);
end

for i = (5*set)+1:6*set
    if(labela(i) == 1)
        colour = 'red';
    elseif (labela(i) == 2)
        colour = 'yellow';
        elseif (labela(i) == 3)
        colour = 'blue';
        elseif (labela(i) == 4)
        colour = 'cyan';
        elseif (labela(i) == 5)
        colour = 'magenta';
        elseif (labela(i) == 6)
        colour = 'green';
    else colour = 'black';
    end
    scatter3(rand(1,1),rand(1,1),-3,2,colour);
end

%% 

test_wl_1 = table();
test_wl_1.direction = ta.direction;
test_wl_1.wl = ta.wl;
test_wl_1.channel = ta.channel;
input_wl_1 = [trial_vector_input_a(:,3) trial_vector_input_a(:,6)];
Mdla = fitcdiscr(test_wl_1,'direction');
[labela,scorea,costa] = predict(Mdla,input_wl_1);



set = length(labela)/6;
figure('name','wl_1')
hold on;
for i = 1:set
    if(labela(i) == 1)
        colour = 'red';
    elseif (labela(i) == 2)
        colour = 'yellow';
        elseif (labela(i) == 3)
        colour = 'blue';
        elseif (labela(i) == 4)
        colour = 'cyan';
        elseif (labela(i) == 5)
        colour = 'magenta';
        elseif (labela(i) == 6)
        colour = 'green';
    else colour = 'black';
    end
    scatter3(3,rand(1,1),rand(1,1),2,colour);
end

for i = set+1:(2*set)
    if(labela(i) == 1)
        colour = 'red';
    elseif (labela(i) == 2)
        colour = 'yellow';
        elseif (labela(i) == 3)
        colour = 'blue';
        elseif (labela(i) == 4)
        colour = 'cyan';
        elseif (labela(i) == 5)
        colour = 'magenta';
        elseif (labela(i) == 6)
        colour = 'green';
    else colour = 'black';
    end
    scatter3(rand(1,1),3,rand(1,1),2,colour);
end

for i = (2*set)+1:(3*set)
    if(labela(i) == 1)
        colour = 'red';
    elseif (labela(i) == 2)
        colour = 'yellow';
        elseif (labela(i) == 3)
        colour = 'blue';
        elseif (labela(i) == 4)
        colour = 'cyan';
        elseif (labela(i) == 5)
        colour = 'magenta';
        elseif (labela(i) == 6)
        colour = 'green';
    else colour = 'black';
    end
    scatter3(rand(1,1),rand(1,1),3,2,colour);
end

for i = (3*set)+1:4*set
    if(labela(i) == 1)
        colour = 'red';
    elseif (labela(i) == 2)
        colour = 'yellow';
        elseif (labela(i) == 3)
        colour = 'blue';
        elseif (labela(i) == 4)
        colour = 'cyan';
        elseif (labela(i) == 5)
        colour = 'magenta';
        elseif (labela(i) == 6)
        colour = 'green';
    else colour = 'black';
    end
    scatter3(-3,rand(1,1),rand(1,1),2,colour);
end

for i = (4*set)+1:(5*set)
    if(labela(i) == 1)
        colour = 'red';
    elseif (labela(i) == 2)
        colour = 'yellow';
        elseif (labela(i) == 3)
        colour = 'blue';
        elseif (labela(i) == 4)
        colour = 'cyan';
        elseif (labela(i) == 5)
        colour = 'magenta';
        elseif (labela(i) == 6)
        colour = 'green';
    else colour = 'black';
    end
    scatter3(rand(1,1),-3,rand(1,1),2,colour);
end

for i = (5*set)+1:6*set
    if(labela(i) == 1)
        colour = 'red';
    elseif (labela(i) == 2)
        colour = 'yellow';
        elseif (labela(i) == 3)
        colour = 'blue';
        elseif (labela(i) == 4)
        colour = 'cyan';
        elseif (labela(i) == 5)
        colour = 'magenta';
        elseif (labela(i) == 6)
        colour = 'green';
    else colour = 'black';
    end
    scatter3(rand(1,1),rand(1,1),-3,2,colour);
end

%% 

test_zc_1 = table();
test_zc_1.direction = ta.direction;
test_zc_1.zc = ta.zc;
test_zc_1.channel = ta.channel;
input_zc_1 = [trial_vector_input_a(:,5) trial_vector_input_a(:,6)];
Mdla = fitcdiscr(test_zc_1,'direction');
[labela,scorea,costa] = predict(Mdla,input_zc_1);



set = length(labela)/6;
figure('name','zc_1')
hold on;
for i = 1:set
    if(labela(i) == 1)
        colour = 'red';
    elseif (labela(i) == 2)
        colour = 'yellow';
        elseif (labela(i) == 3)
        colour = 'blue';
        elseif (labela(i) == 4)
        colour = 'cyan';
        elseif (labela(i) == 5)
        colour = 'magenta';
        elseif (labela(i) == 6)
        colour = 'green';
    else colour = 'black';
    end
    scatter3(3,rand(1,1),rand(1,1),2,colour);
end

for i = set+1:(2*set)
    if(labela(i) == 1)
        colour = 'red';
    elseif (labela(i) == 2)
        colour = 'yellow';
        elseif (labela(i) == 3)
        colour = 'blue';
        elseif (labela(i) == 4)
        colour = 'cyan';
        elseif (labela(i) == 5)
        colour = 'magenta';
        elseif (labela(i) == 6)
        colour = 'green';
    else colour = 'black';
    end
    scatter3(rand(1,1),3,rand(1,1),2,colour);
end

for i = (2*set)+1:(3*set)
    if(labela(i) == 1)
        colour = 'red';
    elseif (labela(i) == 2)
        colour = 'yellow';
        elseif (labela(i) == 3)
        colour = 'blue';
        elseif (labela(i) == 4)
        colour = 'cyan';
        elseif (labela(i) == 5)
        colour = 'magenta';
        elseif (labela(i) == 6)
        colour = 'green';
    else colour = 'black';
    end
    scatter3(rand(1,1),rand(1,1),3,2,colour);
end

for i = (3*set)+1:4*set
    if(labela(i) == 1)
        colour = 'red';
    elseif (labela(i) == 2)
        colour = 'yellow';
        elseif (labela(i) == 3)
        colour = 'blue';
        elseif (labela(i) == 4)
        colour = 'cyan';
        elseif (labela(i) == 5)
        colour = 'magenta';
        elseif (labela(i) == 6)
        colour = 'green';
    else colour = 'black';
    end
    scatter3(-3,rand(1,1),rand(1,1),2,colour);
end

for i = (4*set)+1:(5*set)
    if(labela(i) == 1)
        colour = 'red';
    elseif (labela(i) == 2)
        colour = 'yellow';
        elseif (labela(i) == 3)
        colour = 'blue';
        elseif (labela(i) == 4)
        colour = 'cyan';
        elseif (labela(i) == 5)
        colour = 'magenta';
        elseif (labela(i) == 6)
        colour = 'green';
    else colour = 'black';
    end
    scatter3(rand(1,1),-3,rand(1,1),2,colour);
end

for i = (5*set)+1:6*set
    if(labela(i) == 1)
        colour = 'red';
    elseif (labela(i) == 2)
        colour = 'yellow';
        elseif (labela(i) == 3)
        colour = 'blue';
        elseif (labela(i) == 4)
        colour = 'cyan';
        elseif (labela(i) == 5)
        colour = 'magenta';
        elseif (labela(i) == 6)
        colour = 'green';
    else colour = 'black';
    end
    scatter3(rand(1,1),rand(1,1),-3,2,colour);
end


%% All features



Mdla = fitcdiscr(ta,'direction');
[labela,scorea,costa] = predict(Mdla,trial_vector_input_a);



set = length(labela)/6;
figure('name','all_1')
hold on;
for i = 1:set
    if(labela(i) == 1)
        colour = 'red';
    elseif (labela(i) == 2)
        colour = 'yellow';
        elseif (labela(i) == 3)
        colour = 'blue';
        elseif (labela(i) == 4)
        colour = 'cyan';
        elseif (labela(i) == 5)
        colour = 'magenta';
        elseif (labela(i) == 6)
        colour = 'green';
    else colour = 'black';
    end
    scatter3(3,rand(1,1),rand(1,1),2,colour);
end

for i = set+1:(2*set)
    if(labela(i) == 1)
        colour = 'red';
    elseif (labela(i) == 2)
        colour = 'yellow';
        elseif (labela(i) == 3)
        colour = 'blue';
        elseif (labela(i) == 4)
        colour = 'cyan';
        elseif (labela(i) == 5)
        colour = 'magenta';
        elseif (labela(i) == 6)
        colour = 'green';
    else colour = 'black';
    end
    scatter3(rand(1,1),3,rand(1,1),2,colour);
end

for i = (2*set)+1:(3*set)
    if(labela(i) == 1)
        colour = 'red';
    elseif (labela(i) == 2)
        colour = 'yellow';
        elseif (labela(i) == 3)
        colour = 'blue';
        elseif (labela(i) == 4)
        colour = 'cyan';
        elseif (labela(i) == 5)
        colour = 'magenta';
        elseif (labela(i) == 6)
        colour = 'green';
    else colour = 'black';
    end
    scatter3(rand(1,1),rand(1,1),3,2,colour);
end

for i = (3*set)+1:4*set
    if(labela(i) == 1)
        colour = 'red';
    elseif (labela(i) == 2)
        colour = 'yellow';
        elseif (labela(i) == 3)
        colour = 'blue';
        elseif (labela(i) == 4)
        colour = 'cyan';
        elseif (labela(i) == 5)
        colour = 'magenta';
        elseif (labela(i) == 6)
        colour = 'green';
    else colour = 'black';
    end
    scatter3(-3,rand(1,1),rand(1,1),2,colour);
end

for i = (4*set)+1:(5*set)
    if(labela(i) == 1)
        colour = 'red';
    elseif (labela(i) == 2)
        colour = 'yellow';
        elseif (labela(i) == 3)
        colour = 'blue';
        elseif (labela(i) == 4)
        colour = 'cyan';
        elseif (labela(i) == 5)
        colour = 'magenta';
        elseif (labela(i) == 6)
        colour = 'green';
    else colour = 'black';
    end
    scatter3(rand(1,1),-3,rand(1,1),2,colour);
end

for i = (5*set)+1:6*set
    if(labela(i) == 1)
        colour = 'red';
    elseif (labela(i) == 2)
        colour = 'yellow';
        elseif (labela(i) == 3)
        colour = 'blue';
        elseif (labela(i) == 4)
        colour = 'cyan';
        elseif (labela(i) == 5)
        colour = 'magenta';
        elseif (labela(i) == 6)
        colour = 'green';
    else colour = 'black';
    end
    scatter3(rand(1,1),rand(1,1),-3,2,colour);
end
