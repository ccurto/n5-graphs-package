function save_figure(savename,savefolder)

if nargin < 2
    savefolder = []; 
%    savefolder = 'figures/';
end;

fprintf(['Saving ' savename '...\n']);
set(gcf,'PaperPositionMode','auto');
% print('-depsc',[savefolder savename]);  %save as .eps
print('-djpeg',[savefolder savename]);  %save as .jpg (smaller!)