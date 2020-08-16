% special_attractors_script.m
% created on Aug 8, 2020
% updated on Aug 16, 2020

load n5_digraphs

% plot gaudi attractor
figure(1)
graph = 2; % 5-star
X0 = [0.2735    0.1482    0.3723    0.0945    0.3434];
%X0 = .1*rand(1,5);
T = 400;
e = .095;
d = .11;
[X0,proj]=quick_plot(2,X0,T,e,d);
subplot(2,3,2:3)
title(['gaudi attractor for eps = ' num2str(e) ', delta = ' num2str(d)])

% pause to give user a chance to resize figure before saving
pause 
save_figure('mEC2_gaudi')


% now do quasiperiodic attractor for graph 980 (mEC 94)
T = 200;
e = .25;
d = .5;
[X0,proj]=quick_plot(980,X0,T,e,d);
subplot(2,3,1)
subplot(2,3,2:3)
title(['quasiperiodic attractor for eps = ' num2str(e) ', delta = ' num2str(d)])

% pause to give user a chance to resize figure before saving
pause 
save_figure('mEC94_quasiperiodic')

% finally, create baby chaos for graph 982 (mEC 96)
T = 200;
e = .25;
d = .5;
[X0,proj]=quick_plot(982,X0,T,e,d);
subplot(2,3,2:3)
title(['baby chaos attractor for eps = ' num2str(e) ', delta = ' num2str(d)])

% pause to give user a chance to resize figure before saving
pause 
save_figure('mEC96_babychaos')