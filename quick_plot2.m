function [X0,proj] = quick_plot2(graph,X0,T,e,d,proj,null_flag,perm,ymax);

% function [X0,proj] = quick_plot2(graph,X0,T,e,d,proj,null_flag,perm,ymax);
%
% graph = graph number in sAcell2 from n5_coreClasses.mat 
%         OR an sA graph adjacency matrix
% note: unlike in quick_plot, here we want a *single* graph number
% 
% optional inputs:
% X0 = initial condition as a row vector
% T = length of time to plot solution (in units of the leak time constant)
% e = epsilon parameter for the CTLN
% d = delta parameter for the CTLN
% proj = choice of nx2 projection matrix (default chooses: proj = rand(n,2))
% null_flag = 0 or 1 (to plot nullchambers with rate curves)
% perm = permutation of the nodes, to use sA(perm,perm) instead of sA
%        e.g. perm = [2 3 1 4 5]
%
% outputs: X0 and proj, in case they were randomly generated (by default)
% 
% plots graph, rate curves, gray scale for a corresponding CTLN
%
% created Jan 4, 2021 by Carina to simplify quick_plot.m for use
% with the data in n5_coreClasses.mat.
% updated Jan 16, 2020 to add ymax option for fixing ylim on ratecurves


% load classes created by make_n5_coreClasses.m
% note: sAcell2 already the aligning permutations built in!
load('n5_coreClasses','sAcell2','X0cell2');

% check if input graph is an adjacency matrix sA
if size(graph,1) > 1 && size(graph,2) > 1
    n = size(graph,1);
    sA = graph;
    graph = [];
else
    sA = sAcell2{graph};
    n = 5;
end

% defaults
if nargin < 2 || isempty(X0)
    if isempty(graph)
        X0 = .001*rand(n,1)'; % pick random initial condition near origin
    else
        X0 = X0cell2{graph};
    end
end

if nargin < 3 || isempty(T)
    T = 70;
end;

if nargin < 4 || isempty(e)
    e = .51;
end;

if nargin < 5 || isempty(d)
    d = 1.76;
end;

if nargin < 6 || isempty(proj)
    proj = rand(n,2); % pick 2 random directions
end;

if nargin < 7 || isempty(null_flag)
    null_flag = 1; % plot null_chambers (use 0 not to)
end;

if nargin < 8 || isempty(perm)
    perm = [0 0 0 0 0]; % default not to permute anything
end;

if nargin < 9 || isempty(ymax)
    ymax = 1.2;
end

colors = [0 .5 .7; .15 .6 0; .5 .5 .5; .8 .55 0; .8 0 0];
if n > 5
    colors = lines(n);
end;

parstr = ['(e = ' num2str(e) ', d = ' num2str(d) ')'];
perm_str = [];

% check if nontrivial perm was fed
if sum(perm,2)>0  
   sA = sA(perm,perm);
   X0 = X0(:,perm);
   perm_str = [', perm = [' int2str(perm) ']'];
end

% get solution to ode
soln = sA2soln(sA,T,X0',e,d);

% make plot
subplot(2,3,1)
plot_graph(sA,colors);
title(['graph ' int2str(graph) perm_str]);
subplot(2,3,4)
plot_projection(soln.X,proj);
hold on;
[projn xlim0 ylim0] = plot_projection(soln.X,proj,[.5,1],[.7 0 0]); % last 1/2 in red
hold off;
title('projection (red is last half)')
subplot(2,3,[2:3])
plot(soln.time,sum(soln.X,2),'-k'); % total pop activity
if null_flag
   plot_nullchambers(soln,colors,ymax);
   hold on % to counter hold off in plot_nullchambers
else
   plot_ratecurves(soln.X,soln.time,colors);
   hold on % to counter hold off in plot_ratecurves
end
plot(soln.time,sum(soln.X,2),'-k','LineWidth',1.5); % total pop activity again
xlabel('time'); 
ylim([0,ymax]); % fix ylim on ratecurves plot
hold off
subplot(2,3,[5:6])
plot_grayscale(soln.X);
xlabel('time'); 
title(['X0 = [' num2str(round(X0,4)) ']']);