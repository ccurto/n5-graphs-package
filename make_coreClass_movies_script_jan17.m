% make_coreClass_movies_script_jan17.m
clear all

load('n5_coreClasses','coreClass','attClass','sAcell2','X0cell2',...
    'attLabel','classRule','doubled_graphs','attPerms');

e = .25; 
d = .5;
%e = .1;
%d = .12;
% e = .51;
% d = 1.76;
T = 120;
ymax = 1.25;
parstr = ['-e' num2str(e) '-d' num2str(d)];
proj = []; % use default projection in quick_movie

tic
prepause = 1;
for i=1:length(coreClass)
    graphs = coreClass{i};
    sAcell = sAcell2(graphs);
    movie_str = ['coreClass' int2str(i) parstr];
    fprintf(['Making movie ' movie_str ' ... \n']);
    % get X0 for movie using first graph
    sA = sAcell{1};
    sigma = [1:3];
    [X0 TF] = graph2X0(sA,e,d,sigma);
    if ~TF
        sigma = [1:4];
        [X0 TF] = graph2X0(sA,e,d,sigma);
    end
    if ~TF
        sigma = [1:5];
        [X0 TF] = graph2X0(sA,e,d,sigma);
    end
    % make frame_str
    for j=1:length(graphs)
        frame_str{j} = ['attClass ' int2str(i) ', graph ' int2str(graphs(j))];
    end
    % make movie
    quick_movie(sAcell,movie_str,frame_str,T,X0,e,d,proj,ymax,prepause);
    prepause = 0; % don't pause after first movie
end
toc