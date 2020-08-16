% quick_plot_script.m
% to be used with the list of mECs in n5_mECs_README.txt
% created on Aug 8, 2020
% last updated Aug 13, 2020

% the main function is "quick_plot.m":
%
% function [X0, proj] = quick_plot(graph,X0rows,T,e,d,proj);
%
% defaults: T = 70, e = .51, d = 1.76, X0 and proj are random
% (type "help quick_plot" at the command line for full description)

% first, make a few simple plots using quick_plot using defaults
graph = 20;
quick_plot(graph);
pause % press space bar to continue

% to plot several graphs in a row, give a vector of graphs
graphs = [147:153];
quick_plot(graphs);
pause

% second, to specify initial conditions (up to 4), input X0rows
X0rows = .1*rand(3,5); % each X0rows(i,:) is an init cond
quick_plot(981:982,X0rows);
pause

% third, to change length or parameters, input T,e,d
T = 150;
e = .25;
d = .5;
quick_plot(982,X0rows,T,e,d);
pause

% load initial conditions previously found to yield
% dynamic attractors for mEC reps (on default e, d parameters)
load n5_X0_eps0_51_delta1_76

% X0_mEC{52} = init conds matrix for mEC 52 (graphs 149:150)
[X0, proj] = quick_plot(149:150,X0_mEC{52});
