function [X0 TF] = graph2X0(sA,e,d,sigma)

% function [X0 TF] = graph2X0(sA,e,d,sigma)
%
% sA = binary adjacency matrix for a directed graph
% e = epsilon value to control synaptic strengths (default: e = .25)
% d = delta value for inhibitory weights (default: d = 2*e)
% sigma = desired fixed point support (default is [1:n])
% X0 = fixed point for sigma, as a row vector
% TF = 1 if sigma is a fixed point support, 0 otherwise
%
% Note: If sigma is not a fixed point support, x_fp will
% have negative entries but we return the positive part, 
% X0 = x_fp.*(x_fp>0).
%
% created Jan 16, 2020 by Carina

n = size(sA,1);

if nargin < 2 || isempty(e)
    e = .25;
end;

if nargin < 3 || isempty(d)
    d = .5;
end;

if nargin < 4 || isempty(sigma)
    sigma = [1:n];
end

% get X0 corresponding to a perturbation of the fixed point for sigma
W = graph2net(sA,e,d);
[TF,x_fp] = check_fixedpt(W,sigma);
x_fp = x_fp.*(x_fp>0); % keep only positive part, in case TF = 0
X0 = x_fp + .01*rand(size(x_fp));
X0 = X0'; % turn into row vector