function [sAcom,sAopt,sAmiss] = get_common_graph(graphs,graph_perms,sAcell)

% function [sAcom,sAopt,sAmiss] = get_common_graph(graphs,graph_perms,sAcell)
%
% updated Dec 17,2020 to allow use to input sAcell

if nargin<2 || isempty(graph_perms)
    graph_perms = zeros(length(graphs),5); % default to not permute
end

if nargin<3 || isempty(sAcell)
    load('n5_digraphs','sAcell');
end

% find common graph in all of them
sAcom = ones(5);
sAmiss = ones(5);
for i=1:length(graphs)
    sA = sAcell{graphs(i)};
    perm = graph_perms(i,:);
    if sum(perm,2)>0  % check if nontrivial perm was fed
        sA = sA(perm,perm);
    end;
    sAcom = sAcom.*sA; % common edges
    sAmiss = sAmiss.*(1-sA); % common non-edges
end;
sAopt = ones(5)-sAcom-sAmiss; % optional edges
