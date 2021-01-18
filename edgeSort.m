function graphs2 = edgeSort(graphs,sAcell)

% function graphs2 = edgeSort(graphs,sAcell)
%
% graphs = array of graph numbers 
% sAcell = cell array where sAcell{i} is sA matrix for graph i
% graphs2 = reordered graphs according to increasing number of edges

if nargin < 2
    load('n5_attClasses','sAcell2')
    sAcell = sAcell2;
end

% first find edge number for all graphs
for i=1:length(graphs)
    E(i) = sum(sAcell2{graphs(i)}(:));
end
[E2,idx] = sort(E,'ascend');
graphs2 = graphs(idx);