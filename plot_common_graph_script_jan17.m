% plot_common_graph_script_jan17.m
clear all

% load classes created by make_n5_coreClasses.m
load('n5_coreClasses','coreClass','attClass','sAcell2','X0cell2',...
    'attLabel','classRule','doubled_graphs','attPerms');

% find common graphs for each class
for i=1:length(attClass)
    graphs = attClass{i};
    [sAcom{i},sAopt{i},sAmiss{i}] = get_common_graph(graphs,[],sAcell2);
end

for i=1:length(coreClass)
    graphs = coreClass{i};
    [gCcom{i},gCopt{i},gCmiss{i}] = get_common_graph(graphs,[],sAcell2);
end

% plot common graph with common edges in black, and optional edges in blue
% pinkcolor = [1 .6 .6];
bluecolor = [.7 .7 1];
bluewidth = 2.5;

figure(2)
for i=1:length(coreClass)
    ngraphs = length(coreClass{i});
    subplot(5,5,i)
    plot_graph(gCopt{i},[],[],bluecolor,bluewidth);
    hold on
    plot_graph(gCcom{i});
    hold off
    title(['coreClass ' int2str(i) ' (' int2str(ngraphs) ')']);
end
sgtitle('All coreClasses, Jan 17, 2021')

figure(3)
for i=1:length(attClass)
    ngraphs = length(attClass{i});
    subplot(6,9,i)
    plot_graph(sAopt{i},[],[],bluecolor,bluewidth);
    hold on
    plot_graph(sAcom{i});
    hold off
    if ~isempty(classRule{i})
        rulestr = ['**' classRule{i}];
    else
        rulestr = [];
    end
    title(['attClass ' int2str(i) ' ' rulestr ' (' int2str(ngraphs) ')']);
end
sgtitle('All attClasses, Jan 17, 2021')