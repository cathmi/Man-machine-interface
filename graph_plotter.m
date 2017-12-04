%rms, var, wl, mav, zc


figure('Name','rms vs var')
scatter(full_vec1(:,1),full_vec1(:,2),1,'red');
hold on
scatter(full_vec2(:,1),full_vec2(:,2),1,'green');
scatter(full_vec3(:,1),full_vec3(:,2),1,'blue');
scatter(full_vec4(:,1),full_vec4(:,2),1,'yellow');
scatter(full_vec5(:,1),full_vec5(:,2),1,'cyan');
scatter(full_vec6(:,1),full_vec6(:,2),1,'magenta');


figure('Name','rms vs wl')
scatter(full_vec1(:,1),full_vec1(:,3),1,'red');
hold on
scatter(full_vec2(:,1),full_vec2(:,3),1,'green');
scatter(full_vec3(:,1),full_vec3(:,3),1,'blue');
scatter(full_vec4(:,1),full_vec4(:,3),1,'yellow');
scatter(full_vec5(:,1),full_vec5(:,3),1,'cyan');
scatter(full_vec6(:,1),full_vec6(:,3),1,'magenta');

figure('Name','rms vs mav')
scatter(full_vec1(:,1),full_vec1(:,4),1,'red');
hold on
scatter(full_vec2(:,1),full_vec2(:,4),1,'green');
scatter(full_vec3(:,1),full_vec3(:,4),1,'blue');
scatter(full_vec4(:,1),full_vec4(:,4),1,'yellow');
scatter(full_vec5(:,1),full_vec5(:,4),1,'cyan');
scatter(full_vec6(:,1),full_vec6(:,4),1,'magenta');

figure('Name','rms vs zc')
scatter(full_vec1(:,1),full_vec1(:,5),1,'red');
hold on
scatter(full_vec2(:,1),full_vec2(:,5),1,'green');
scatter(full_vec3(:,1),full_vec3(:,5),1,'blue');
scatter(full_vec4(:,1),full_vec4(:,5),1,'yellow');
scatter(full_vec5(:,1),full_vec5(:,5),1,'cyan');
scatter(full_vec6(:,1),full_vec6(:,5),1,'magenta');

figure('Name','var vs wl')
scatter(full_vec1(:,2),full_vec1(:,3),1,'red');
hold on
scatter(full_vec2(:,2),full_vec2(:,3),1,'green');
scatter(full_vec3(:,2),full_vec3(:,3),1,'blue');
scatter(full_vec4(:,2),full_vec4(:,3),1,'yellow');
scatter(full_vec5(:,2),full_vec5(:,3),1,'cyan');
scatter(full_vec6(:,2),full_vec6(:,3),1,'magenta');

figure('Name','var vs mav')
scatter(full_vec1(:,2),full_vec1(:,4),1,'red');
hold on
scatter(full_vec2(:,2),full_vec2(:,4),1,'green');
scatter(full_vec3(:,2),full_vec3(:,4),1,'blue');
scatter(full_vec4(:,2),full_vec4(:,4),1,'yellow');
scatter(full_vec5(:,2),full_vec5(:,4),1,'cyan');
scatter(full_vec6(:,2),full_vec6(:,4),1,'magenta');

figure('Name','var vs zc')
scatter(full_vec1(:,2),full_vec1(:,5),1,'red');
hold on
scatter(full_vec2(:,2),full_vec2(:,5),1,'green');
scatter(full_vec3(:,2),full_vec3(:,5),1,'blue');
scatter(full_vec4(:,2),full_vec4(:,5),1,'yellow');
scatter(full_vec5(:,2),full_vec5(:,5),1,'cyan');
scatter(full_vec6(:,2),full_vec6(:,5),1,'magenta');

figure('Name','wl vs mav')
scatter(full_vec1(:,3),full_vec1(:,4),1,'red');
hold on
scatter(full_vec2(:,3),full_vec2(:,4),1,'green');
scatter(full_vec3(:,3),full_vec3(:,4),1,'blue');
scatter(full_vec4(:,3),full_vec4(:,4),1,'yellow');
scatter(full_vec5(:,3),full_vec5(:,4),1,'cyan');
scatter(full_vec6(:,3),full_vec6(:,4),1,'magenta');

figure('Name','wl vs zc')
scatter(full_vec1(:,2),full_vec1(:,5),1,'red');
hold on
scatter(full_vec2(:,3),full_vec2(:,5),1,'green');
scatter(full_vec3(:,3),full_vec3(:,5),1,'blue');
scatter(full_vec4(:,3),full_vec4(:,5),1,'yellow');
scatter(full_vec5(:,3),full_vec5(:,5),1,'cyan');
scatter(full_vec6(:,3),full_vec6(:,5),1,'magenta');

figure('Name','mav vs zc')
scatter(full_vec1(:,4),full_vec1(:,5),1,'red');
hold on
scatter(full_vec2(:,4),full_vec2(:,5),1,'green');
scatter(full_vec3(:,4),full_vec3(:,5),1,'blue');
scatter(full_vec4(:,4),full_vec4(:,5),1,'yellow');
scatter(full_vec5(:,4),full_vec5(:,5),1,'cyan');
scatter(full_vec6(:,4),full_vec6(:,5),1,'magenta');





