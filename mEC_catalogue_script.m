% mEC_catalogue_script.m
% created Aug 13, 2020 to generate plots for all mEC attractors

% load initial conditions previously found to yield
% dynamic attractors for mEC reps (on default e, d parameters)
load n5_digraphs
load n5_mECs
load n5_X0_eps0_51_delta1_76

% CTLN parameters and a "good" projection:
T = 80; e = .51; d = 1.76;  
proj = [.30 .04 .19 .72 .72; .88 .58 .07 .92 .80]';

for i=1:length(X0_mEC)
    X0rows = X0_mEC{i};
    for j=2:size(X0rows,1)
        quick_plot(mEC_start(i),X0rows(j,:),T,e,d,proj);
        subplot(2,3,2:3)
        title(['mEC ' int2str(i) ' (graph ' int2str(mEC_start(i))...
            '): attractor ' int2str(j-1)])
        pause
        save_figure(['mEC' int2str(i) '_att' int2str(j-1)]);
    end
end