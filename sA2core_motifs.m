function [core_motifs sAcore mask] = sA2core_motifs(sA,e,d,theta)

% function [core_motifs sAcore mask] = sA2core_motifs(sA,e,d,theta)
%
% this uses sA2fixpts.m and check_core_motif.m to return core motifs
%
% core_motifs = cell array of core motif fixed point supports
% sAcore = "decorated" adjacency matrix marking core motifs
%   note: mod(sAcore,2) = sA, since we've just added uniform blocks of 2s 
%   for each core motif
% mask = binary matrix with blocks of 1s on each induced core subgraph
%   note: mask = (sAcore>1), as this picks out where 2-blocks were added
%   this can be used as the mask in the function "align_graph"
%
% created by Carina July 31, 2020
% updated Aug 1, 2020

if nargin<2 || isempty(e)
    e = []; % use default of graph2net
end;

if nargin<3 || isempty(d)
    d = []; % use default of graph2net
end;

if nargin<4 || isempty(theta)
    theta = 1;
end;

print_flag = 0; % don't print fixed points
[fixpts supports] = sA2fixpts(sA,e,d,theta,print_flag);

j = 0;
core_motifs = [];
for i=1:length(supports)
    sig = supports{i};
    TF = check_core_motif(sA(sig,sig),e,d,theta);
    if TF 
        j = j+1;
        core_motifs{j} = sig;
    end;
end;

% create decorated adjacency matrix adding blocks of 2s for each core motif
sAcore = sA;
for j=1:length(core_motifs)
    sig = core_motifs{j};
    sAcore(sig,sig) = sAcore(sig,sig)+2; % add a 2-block to core submatrix
end;

% this binary "mask" matrix has 1s on each core motif block
mask = (sAcore>1);