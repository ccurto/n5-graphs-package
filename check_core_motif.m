function [TF_core, TF_perm] = check_core_motif(sA,e,d,theta)

% function [TF_core, TF_perm] = check_core_motif(sA,e,d,theta)
%
% determines whether the CTLN model network with graph adj mtx sA is a core
% motif (i.e. the full support is the unique fixed point of the CTLN defined by the graph).
%
% TF_core is true if the full support is the unique fixed point
%
% TF_perm is true if the full support is a fixed point
%
% this is a wrapper for "check_fixedpt"; also calls num2sigma.m and graph2net.m
%
% created May 28, 2018
% updated June 10, 2020 to change to core motif vocab instead of min_perm


if nargin<2 || isempty(e)
    e = []; % use default of graph2net
end;

if nargin<3 || isempty(d)
    d = []; % use default of graph2net
end;

if nargin<4 || isempty(theta)
    theta = 1;
end;

%...................................
n = size(sA,1);
W = graph2net(sA,e,d);
b = theta*ones(n,1);

TF_core=0;
TF_perm=0;

sig = num2sigma(2^n-1,n);  % This should correspond to full support

TF_perm = check_fixedpt(W,sig,b);

if TF_perm==1
    i=1;
    sub_fp=0;  % this is a boolean that becomes 1 if we ever find a subnetwork that
    % supports a fixed point
    while (i<= 2^n-2) && (sub_fp == 0)  % note that the full support happens at 2^n-1
        sig = num2sigma(i,n);
        sub_fp = check_fixedpt(W,sig,b);
        i=i+1;
    end
    if sub_fp == 0
        TF_core=1;
    end
end



