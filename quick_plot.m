function [X0, proj] = quick_plot(graph,X0rows,T,e,d,proj);

% function [X0, proj] = quick_plot(graph,X0rows,T,e,d,proj);
%
% graph = array of graph numbers in n5_digraphs.mat 
%         OR an sA adjacency matrix
% 
% optional inputs:
% X0rows = k x n matrix of k <= 4 initial conditions, each one is a row
%          if k>4, remaining X0rows will be ignored
% T = length of time to plot solution (in units of the leak time constant)
% e = epsilon parameter for the CTLN
% d = delta parameter for the CTLN
% proj = choice of nx2 projection matrix (default chooses: proj = rand(n,2))
%
% outputs: X0 and proj, in case they were randomly generated (by default)
% 
% plots graph, rate curves, gray scale for a corresponding CTLN
%
% created by Carina Aug 6, 2020 for n5 graph classification
% updated Aug 7, 2020 to input sA matrices and multiple X0's.
% updated Aug 11, 2020 by Carina to make y-axis on ratecurves larger


% check if input graph is an adjacency matrix sA
if size(graph,1) > 1 && size(graph,2) > 1
    n = size(graph,1);
    sAcell{1} = graph; % use sA matrix that was input
    sA_label{1} = 'custom graph';
    graph = 1;
else
% load graph cell arrays: sAcell and sA_label
    if exist('n5_digraphs.mat', 'file')
        load('n5_digraphs.mat','sAcell','sA_label')
    else
        make_n5_digraphs
    end
    n=5;
end


% defaults
if nargin < 2 || isempty(X0rows)
    X0 = .001*rand(n,1)'; % pick random initial condition near origin
    X0rows = X0;
else
    X0 = []; % don't return init conditions if user input X0rows
end;

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

colors = [0 .5 .7; .15 .6 0; .5 .5 .5; .8 .55 0; .8 0 0];
if n > 5
    colors = lines(n);
end;

parstr = ['(e = ' num2str(e) ', d = ' num2str(d) ')'];

% make a plot for each graph in "graph" array
for i=graph
    sA = sAcell{i};
    % loop through up to 4 initial conditions in X0rows
    k = min(size(X0rows,1),4);
    for j=1:k
        soln = sA2soln(sA,T,X0rows(j,:)',e,d);
        subplot(2*k,3,1+6*(j-1))
        plot_graph(sA,colors);
        title(['graph ' int2str(i)]);
        subplot(2*k,3,4+6*(j-1))
        plot_projection(soln.X,proj);
        hold on;
        plot_projection(soln.X,proj,[.5,1],[.7 0 0]);
        hold off;
        title('projection (red is last half)')
        subplot(2*k,3,[2:3]+6*(j-1))
        plot_ratecurves(soln.X,soln.time,colors);
        xlabel('time'); 
        hold on;
        plot(soln.time,sum(soln.X,2),'-k'); % total pop activity
        if i == graph(1)
            ylim0{j} = [0, max(max(sum(soln.X,2))+.1,1.2)];
        end;
        ylim(ylim0{j})
        title(sA_label{i})
        hold off;
        subplot(2*k,3,[5:6]+6*(j-1))
        plot_grayscale(soln.X);
        xlabel('time'); 
        title(['X0 = [' num2str(round(X0rows(j,:),4)) ']']);
    end;
    if i ~= graph(end)
        pause
    end;
end;