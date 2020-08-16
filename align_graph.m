function [G1,perm_mtx] = align_graph(G,H,M,fig,core_flag);

% function [G1,perm_mtx] = align_graph(G,H,M,fig,core_flag);
%
% G = graph whose vertices we want to reorder/align with H
% H = subgraph we want to match as much as possible
% M = binary mask matrix (default is induced edge graph from H)
% fig = figure number if you want to plot graph (if empty, no plot)
% core_flag = 0 (default) do do nothing, or 1 to check if core motifs
%    of G map to core motifs of H under the permutations
%
% perm_mtx = each row is a permutation that minimize difference to H on mask M
% G1 = G(perm_mtx(1,:),perm_mtx(1,:)) % G1 is for first "good" permutation
%
% created by Carina, July 31, 2020
% updated Aug 1, 2020
% updated Aug 4, 2020 to include core_flag, which requires running
% sA2core_motifs.m (and the files that this calls).
% updated Aug 5, 2020 by Katie to improve the core_flag check
% updated Aug 6, 2020 by Carina to deal with core_flag case
%   where cores don't actually align (so it doesn't crash)


if nargin < 3 || isempty(M)
    M = (H+H'>0); % require mask on induced edge graph of H
end;

if nargin < 4 || isempty(fig)
    plot_flag = 0;
else
    plot_flag = 1;
end;

if nargin < 5 || isempty(core_flag)
    core_flag = 0;
end;

% if subgraph for alignment H has fewer nodes, pad it with 0s
% do the same for the mask M
n = size(G,2);
m = size(H,2);
l = size(M,2);
if m < n
    HH = zeros(size(G));
    HH(1:m,1:m) = H;
    H = HH;
end;
if l < n
    MM = zeros(size(G));
    MM(1:l,1:l) = M;
    M = MM;
end;

all_perms = perms(1:n);

d=n^2*ones(1, size(all_perms,1)); % this will be a vector of distances between the permuted G and the original H on the entries of the mask

if core_flag
    [H_motifs Hcore mask] = sA2core_motifs(H);
    [G_motifs Gcore mask2] = sA2core_motifs(G);
    c=zeros(1, size(all_perms,1)); % this will be a boolean vector checking whether the core motifs of H match those of the permuted G
end


% compute Hamming distances to H for each permutation wrt mask M
for i=1:size(all_perms,1)
    p = all_perms(i,:);
    Gp = G(p,p);
    d(i) = sum(sum(abs(Gp.*M-H.*M))); % compare only mask entries
    
    % check if permutations map core motifs of G to core motifs of H
    if core_flag
        Gp_core = Gcore(p,p);
        if isempty(find(Gp_core.*mask - Hcore.*mask))
            c(i)=1;
            %            fprintf('cores align!\n')
        end;
    end;
end;

% find distance-minimizing perms (best G alignments)
if core_flag && ~isempty(find(c==1))
    dmin=min(d((c==1)));
    idx = intersect(find(d == dmin), find(c==1));
    core_str = '-- core motifs align';
else
    dmin = min(d);
    idx = find(d == dmin);
    core_str = [];
end
perm_mtx = all_perms(idx,:);
G1 = G(perm_mtx(1,:),perm_mtx(1,:)); % first "good" permutation of G


% make plots, if needed
if ~plot_flag
    return
end;

% set colors for plot
colors = [0 .5 .7; .15 .6 0; .5 .5 .5;1 .643 0; .8 0 0];
if n>5
    colors = [colors; lines(n)];
end;

figure(fig)
perm = perm_mtx(1,:);

subplot(2,2,1)
plot_graph(G)
title('graph G to align')

subplot(2,2,2)
plot_graph(H)
title('target subgraph H')

subplot(2,2,3)
plot_graph(G1,colors(perm,:)) % permute locations, keep original colors
title(['[ ' int2str(perm) ' ], dmin = ' int2str(dmin)])

subplot(2,2,4)
plot_graph(G1,colors) % have colors match H
title(['G1 = G(perm,perm) ' core_str])