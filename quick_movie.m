function quick_movie(sAcell,movie_str,frame_str,T,X0,e,d,proj,ymax,prepause)

% function quick_movie(sAcell,movie_str,frame_str,T,X0,e,d,proj,ymax,prepause)
%
% sAcell = cell array of sA matrices (restricted to graphs for movie)
%   note: sA matrices can be generalized (entries b/w 0 and 1 for interp)
% movie_str = name of movie file
% frame_str = cell array of strings for title of each movie frame
% T = length of time for ode solution, in units of leak timescale tau
% X0 = 1xn row vector of initial conditions (default is random near all-zeros)
% e/d are epsilon/delta are the values for weights -1+e, -1-d in W
% proj = nx2 matrix, like rand(n,2), for projection
% ymax = max of ylim on ratecurves plot, default is 1.2
% prepause = 1 to pause and allow user to resize movie, 0 to skip
%    note: this is 1 by default
%
% saves a movie with a quick_plot for each graph in sAcell
% calls quick_plot2.m
%
% created Dec 30, 2020, based on make_graphClass_movie.m
% updated Jan 16, 2020 to add ymax option for fixing ylim on ratecurves
%   and to add frame_str for labeling individual movie frames

if nargin < 2 || isempty(movie_str)
    movie_str = 'mymovie';
end

if nargin < 3 || isempty(frame_str)
    frame_str = movie_str;
end

if nargin < 4 || isempty(T)
    T = 70;
end;

if nargin < 5 || isempty(X0)
    n = size(sAcell{1},1);
    X0 = zeros(1,n) + .01*rand(1,n); % break symmetry on init conds
end;

if nargin < 6 || isempty(e)
    e = .51;
end;

if nargin < 7 || isempty(d)
    d = 1.76; 
end;

% default projection for all movies
if nargin < 8 || isempty(proj)
    proj1 = [.06 .68 .04 .07 .52]';
    proj2 = [.09 .82 .82 .72 .15]';
    proj = [proj1 proj2];
end

if nargin < 9 || isempty(ymax)
    ymax = 1.2;
end

if nargin < 10 || isempty(prepause)
    prepause = 1;
end

% do quick_plot2 with nullchambers
null_flag = 1; 

% "VideoReader.getFileFormats()" at command line shows allowed formats
outputVideo = VideoWriter([movie_str],'MPEG-4');
outputVideo.Quality = 100;
outputVideo.FrameRate = .8; % How many frames per second.
open(outputVideo);

% size figure before starting movie
if prepause
    figure(1)
    fprintf('Pausing to allow sizing of the figure. Hit space bar to continue.\n')
    pause
end

% loop through graphs, use same initial condition X0 for all
for i=1:length(sAcell)
    quick_plot2(sAcell{i},X0,T,e,d,proj,null_flag,[],ymax);
    sgtitle([frame_str{i} ' : frame ' int2str(i) '/' ...
        int2str(length(sAcell))]);
    pause(.0001)
    writeVideo(outputVideo, getframe(gcf));
end;

close(outputVideo);