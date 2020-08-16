function [fixpts supports stability] = sA2fixpts(sA,e,d,theta,print_flag)

% function [fixpts supports stability] = sA2fixpts(sA,e,d,theta,print_flag)
%
% theta can be either a scalar or an n x 1 vector
%
% finds fixed points of a CTLN model network with graph adj mtx sA
%
% fixpts = matrix whose rows are the fixed points
%          fixpts(i,:) is the i-th fixed point
% supports = cell array of fixed points supports
%            supports{i} = supp(fixpts(i,:))
% stability = column vector with 0 for unstable, 1 for stable
%             stability(i) refers to fixpts(i,:)
%
% this is a wrapper for "check_fixedpt"; also calls num2sigma.m and
% graph2net.m
%
% created Mar 23, 2016
%%%% last modified on June 3, 2017 to compute sum sgn det(I-W_sig) formula
%
% last modified on Oct 29, 2018 to allow for a vector of theta inputs
%
% last modified on June 11, 2020 to check fixed points grouped by the
% size of their supports
% last modified on June 17, 2020 to include a print_flag of whether or not
% to print out the fixed point supports

if nargin<2 || isempty(e)
    e = []; % use default of graph2net
end;

if nargin<3 || isempty(d)
    d = []; % use default of graph2net
end;

if nargin<4 || isempty(theta)
    theta = 1;
end;

if nargin<5 || isempty(print_flag)
    print_flag = 1;
end;

%...................................
n = size(sA,1);
W = graph2net(sA,e,d);
if length(theta)==1
    b = theta*ones(n,1);
else
    b=theta;
end

fixpts = [];
stability = [];
j = 0;

for k=1:n
    sets=nchoosek(1:n,k); % create all the subsets of 1..n of size k
    for i=1:size(sets,1)
        sig = sets(i,:);
        [TF x_fp] = check_fixedpt(W,sig,b);
        if TF
            fixpts = [fixpts; x_fp'];
            j = j+1;
            supports(j) = {sig};
            sgn(j) = sign(det(eye(length(sig))-W(sig,sig)));
            if print_flag
                fprintf(['sgn = ' int2str(sgn(j)) ', supp = ' int2str(sig) '\n']);
            end
            if nargout > 2
                s = check_stability(W,sig);
                stability = [stability; s];
            end;
        end;
    end;
end;

if print_flag
    fprintf(['num of fixed points = ' int2str(length(sgn)) '\n']);
    fprintf(['sum of sgn(I-W_sigma)=' int2str(sum(sgn)) '\n']);
end