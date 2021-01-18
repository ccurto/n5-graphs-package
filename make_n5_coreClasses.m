% make_n5_coreClasses
% Jan 17, 2021
%
% organizes graphs with dynamic attractors into structural graph families 
% and permutes nodes to reveal the common core-periphery structure and 
% to align attractors
%
% coreClasses are based on core-periphery structure (for non-core graphs)
%   and group together similarly stuctured n=5 cores
% attClasses were determined by attractor dynamics for CTLN parameters 
%   eps = .51, delta = 1.76 (high inhibition regime)
%
% ends with: 
% save('n5_coreClasses','coreClass','attClass','sAcell2','X0cell2',...
%    'attLabel','classRule','doubled_graphs','attPerms');
%
% note: the sAcell2 saved here is augmented from the one in n5_digraphs 
%   to include permuted graphs for secondary attractors
%
% created Jan 17 by Carina


% Notes: 
%
%   1. doubled graphs have numbers 10000+graphnum, but different
%      permutations to align with the secondary attractor
%      (e.g., 10321 is 321 permuted)
%
%   2. graphs 980, 981, 982 are the only ones with 3+ dynamic 
%      attractors; in 980 (outer neuron on indep 3-set) and 
%      982 (baby chaos), the attractors are all identical,
%      but for 981 they are not. The secondary and tertiary
%      attractors for these graphs are:
%
%      10980,10981,10982 and 11980,11981,11982
%      
%      graph 982 (baby chaos) does have a fourth attractor,
%      identical to the first three, but we do not include it.
%
%   3. 4-cycu + 4-ufd graphs: 319, 320, 321, 322
%      two 4-ufd graphs in different classes: 328
%
%   4. counts have been verified on all 4-cycle classes,
%      4-cycu classes, 4-ufd classes, and fusion 3-cycle classes
%
%   5. classRule{i} tracks special optional edge rules on attClasses
%
%      (a) 4<->5 double edge or neither, symmetry-preserving
%      (b) if 1->5, neither 2->5 nor 3->5
%      (c) 5->2,3 both or neither, preserving 2-3 symmetry
%      (d) 5->2 XOR 5->3, symmetry-breaking
%      (e) no edges to 5 XOR 1->5 XOR 2->5 XOR 3->5 XOR 4->5
%          (i.e., in-deg(5)<=1)
%      (f) 2->5 XOR 3->5, symmetry-breaking
%      (g) in-deg(5)>=2 (at most one optional edge to 5 missing)
%
%   6. graph 24 has 2 attractors, but this isn't indicated here.
%
%   7. parameter-dependent core motifs: 12,32,33,86,93,97,113,117
%      12,32,33 have no proper core motifs in this par regime
%      86,93,97,113,117 have a parameter-dependent 4-cycu


clear all

% 3-cycle attractor classes____________________________________________

% pure 3-cycle (52 graphs)
attLabel{1} = 'pure 3-cycle';
attClass{1} = [329  330  331  332  333  334  335  337  338  339 ...
    344  347  350  351  352  353  355  363  367  368  371  377 ...
    380  386  388  395  405  420  423  431  446  456  457  472 ...
    495  500  513  565  599  600  601  604  609  615  626  661 ...
    665  666  668  672  681  685];
classRule{1} = [];

% core-periphery graph: pure 3-cycle
coreClass{1} = attClass{1};

% 3-cycle + node 4 bumps (265 graphs)
attLabel{2} = '3-cycle + node 4 bumps';
attClass{2} = [336  340  341  342  343  345  346  348  349  354 ...
    356  357  358  360  361  362  364  365  366  369  372  373 ...
    374  375  379  381  383  387  389  390  391  392  393  394 ...
    396  397  400  402  403  406  407  409  412  413  414  415 ...
    416  417  418  421  424  426  428  429  430  432  433  434 ...
    440  441  442  447  448  449  450  451  452  458  460  461 ...
    463  465  470  471  473  474  476  477  479  483  484  488 ...
    489  490  492  496  501  502  504  505  509  516  517  518 ...
    519  525  526  527  528  533  536  537  540  548  550  553 ...
    554  555  556  557  566  572  573  577  592  602  603  605 ...
    606  607  608  610  612  613  614  617  618  619  620  622 ...
    627  628  632  636  637  638  639  646  647  662  667  669 ...
    670  671  675  678  679  680  682  683  689  690  691  698 ...
    700  702  707  717  718  719  720  721  722  723  724  725 ...
    726  727  728  730  732  733  734  738  740  742  745  747 ...
    748  749  750  751  752  753  757  764  766  767  770  771 ...
    772  777  780  782  784  785  791  796  797  802  810  811 ...
    816  817  820  823  832  833  838  849  853  865  866  868 ...
    873  896  897  899  901  902  905  917  918  921  922  923 ...
    925  926  927  928  929  930  933  936  938  940  941  942 ...
    943  945  950  954  955  956  962  965  967  969  970  972 ...
    981  10921 10922 10923 10926 10927 10929 10930 10933 10936 ...
    10940 10945 10962 10917 10059];
classRule{2} = [];

% core-periphery graph: 3-cycle + 3->4
coreClass{2} = attClass{2};

% 3-cycle + synchronized node 4 & 5 bumps (77 graphs)
% rule (a): 4<->5 double edge or neither, symmetry-preserving
attLabel{3} = '3-cycle + synchronized node 4 & 5 bumps';
attClass{3} = [376  382  419  438  443  454  487  539  543 ...
    580  623  629  634  649  664  739  746  761  762  789  806 ...
    812  839  869  871  879  880  881  924  932  937  952  963 ...
    976  977  980  498  535  552  564  583  584  585  593 ...
    594  598  674  676  684  686  692  693  695  697  701  704 ...
    708  710  714  715  910  911  912  913  914  915  916 ...
    10963 10976 10977 10980 11980 10149 10150 10315 10316 10317];
classRule{3} = 'a';

% core-periphery graph: 3-cycle + 3->4,5 with 4-5 symmetry
coreClass{3} = attClass{3};

% 3-cycle + symmetry-broken node 4 & 5 bumps (68 graphs)
attLabel{4} = '3-cycle + symmetry-broken node 4 & 5 bumps';
attClass{4} = [370  378  385  399  422  427  435  436  439  453 ...
    464  468  469  491  493  494  503  507  508  511  514  521 ...
    523  524  530  531  560  562  563  567  569  587  625  630 ...
    642  644  652  653  655  659  737  741  755  769  775  778 ...
    779  783  787  794  814  822  824  826  830  851  944  947 ...
    953  958  10924 10932 10947 10958 10937 10944 10952 10953];
classRule{4} = [];

% core-periphery graph: 3-cycle + 3->4,5 with 4->5 (symmetry-breaking)
coreClass{4} = attClass{4};

% 3-cycle + sequential node 4 & 5 bumps (273 graphs)
attLabel{5} = '3-cycle + sequential node 4 & 5 bumps';
attClass{5} = [359  384  398  401  404  408  410  411  425  437 ...
    444  445  455  459  462  466  467  475  478  480  481  482 ...
    485  486  497  499  506  510  512  515  520  522  529  532 ...
    534  538  541  542  544  545  546  547  549  551  558  559 ...
    561  568  570  571  574  575  576  578  579  581  582  586 ...
    588  589  590  591  595  596  597  611  616  621  624  631 ...
    633  635  640  641  643  645  648  650  651  654  656  657 ...
    658  660  663  673  677  687  688  694  696  699  703  705 ...
    706  709  711  712  713  716  729  731  735  736  743  744 ...
    754  756  758  759  760  763  765  768  773  774  776  781 ...
    786  788  790  792  793  795  798  799  800  801  803  804 ...
    805  807  808  809  813  815  818  819  821  825  827  828 ...
    829  831  834  835  836  837  840  841  842  843  844  845 ...
    846  847  848  850  852  854  855  856  857  858  859  860 ...
    861  862  863  864  867  870  872  874  875  876  877  878 ...
    882  883  884  885  886  887  888  889  890  891  892  893 ...
    894  895  898  900  903  904  906  907  908  909  919  920 ...
    931  934  935  939  946  948  949  951  957  959  960  961 ...
    964  966  968  971  973  974  975  978  979  982  10982 ...
    10925 10961 10928 10934 10938 10941 10942 10943 10948 10949 ...
    10950 10954 10955 10956 10959 10960 10967 10968 10969 10970 ...
    10971 10972 10978 10979 10981 10965 10966 10931 10935 10939 ...
    10951 10957 10973 10974 10975 10946 10964 10918 10920 10919 ...
    11981 11982 10060 10147 10148 10312 10313 10314];
classRule{5} = [];

% core-periphery graph: 3-cycle + 3->4, 1->5 
coreClass{5} = attClass{5};


% 4-cycle attractor classes______________________________________

% pure 4-cycle (6 graphs)
attLabel{6} = 'pure 4-cycle';
attClass{6} = [40  41  43  44  48  53];
classRule{6} = [];

% core-periphery graph: pure 4-cycle
coreClass{6} = attClass{6};

% 4-cycle + big bump v1 (5 graphs)
attLabel{7} = '4-cycle + big bump v1';
attClass{7} = [54 59 60 61 10061];
classRule{7} = [];

% 4-cycle + big bump v2 (4 graphs)
attLabel{8} = '4-cycle + big bump v2';
attClass{8} = [55 56 57 58];
classRule{8} = [];

% 4-cycle + node 5 bump - uneven heights (4 graphs)
attLabel{9} = '4-cycle + node 5 bump - uneven heights';
attClass{9} = [42 45 47 50];
classRule{9} = [];

% 4-cycle + node 5 bump - even heights (4 graphs)
attLabel{10} = '4-cycle + node 5 bump - even heights';
attClass{10} = [46 49 51 52];
classRule{10} = [];

% core-periphery graph: 4-cycle + 4->5 edge
coreClass{7} = [attClass{7} attClass{8} attClass{9} attClass{10}];


% 4-cycu attractor classes___________________________________________

% pure 4-cycu (has 2-3 symmetry) (12 + 40 = 52 graphs, 53 w/ secondary)
% rule (b): if 1->5, neither 2->5 nor 3->5
attLabel{11} = 'pure 4-cycu (has 2-3 symmetry)';
attClass{11} = [71  74  87  89  91  96  103  110  120  126  127 ...
    149 62  63  64  65  66  67  68  69  70  73  75  76  ...
    78  79  81  82  83  85  88  90  95  98  99  101  104  105  108 ...
    112  115  116  119  122  125  130  131  134 135 145 146 153 ...
    10153];
classRule{11} = 'b';

% core-periphery graph: 4-cycu pure + 1->5 XOR (2->5 or 3->5)
coreClass{8} = attClass{11};

% 4-cycu + bump, no symmetry breaking v1 (9 graphs)
% rule (c): 5->2,3 both or neither, preserving 2-3 symmetry
attLabel{12} = '4-cycu + bump, no symmetry breaking v1';
attClass{12} = [72  77  121  138  100  107  141  151 10151];
classRule{12} = 'c';

% 4-cycu + bump, slight symmetry breaking (4 graphs)
attLabel{13} = '4-cycu + bump, slight symmetry breaking';
attClass{13} = [84  102  140  147];
classRule{13} = [];

% core-periphery graph: 4-cycu + 4->5
coreClass{9} = [attClass{12} attClass{13}];

% 4-cycu + bump, no symmetry breaking v2 (8 graphs)
% rule (c): 5->2,3 both or neither, preserving 2-3 symmetry
attLabel{14} = '4-cycu + bump, no symmetry breaking v2';
attClass{14} = [123  128  129  150 106  109  111  118];
classRule{14} = 'c';

% 4-cycu + bump, medium symmetry breaking (4 graphs)
attLabel{15} = '4-cycu + bump, medium symmetry breaking';
attClass{15} = [80   92   94  114];
classRule{15} = [];

% 4-cycu + bump, large symmetry breaking (5 graphs)
% note: 10321 is a perm of graph 321 (a 4-ufd class)
attLabel{16} = '4-cycu + bump, large symmetry breaking';
attClass{16} = [132  137  152  10321 10152]; 
classRule{16} = [];

% core-periphery graph: 4-cycu + 1,2->5
coreClass{10} = [attClass{14} attClass{15} attClass{16}];

% missing primary 4-cycu attractor (8 graphs)
% note: 136 also misses attractor, but structurally belongs to class 19
% graph 319 misses 4-cycu as a secondary attractor
attLabel{17} = 'missing 4-cycu attractor';
attClass{17} = [124 133 139 142 143 144 148 10319];
classRule{17} = [];

% 4-cycu + big bump, no symmetry breaking (4 graphs)
% rule (c): 5->2,3 both or neither, preserving 2-3 symmetry
% (not all identical, but same nullchamber sequence)
% (includes 10320, permuted so 4-cycu is primary)
attLabel{18} = '4-cycu + big bump, no symmetry breaking';
attClass{18} = [86 97 117 10320];
classRule{18} = 'c';

% 4-cycu + big bump, symmetry breaking (4 graphs)
% rule (d): 5->2 XOR 5->3, symmetry-breaking
% (not all identical, but same nullchamber sequence)
% note: 136 structurally fits here, but misses 4-cycu attractor
attLabel{19} = '4-cycu + big bump, symmetry breaking';
attClass{19} = [93 113 136 10322];
classRule{19} = 'd';

% core-periphery graph: 4-cycu + 4->5
coreClass{11} = [attClass{17} attClass{18} attClass{19}];

% NOTE: graphs 86, 97, 117, 93, 113 are all par-dependent cores
% Question: what about 136, 320, and 322?

% 4-ufd attractor classes_________________________________________

% pure 4-ufd (80 graphs)
% rule (e): no edges to 5 XOR 1->5 XOR 2->5 XOR 3->5 XOR 4->5 
%   (in-deg(5)<=1)
% (ordering reflects the five subclasses)
attLabel{20} = 'pure 4-ufd';
attClass{20} = [154  155  156  157  163  164  165  166  169 ...
    170  180  185  187  191  205  261  168  171  190  193  201 ...
    219  223  225  237  263  292  295  296  301  312  160  172 ...
    173  177  189  192  197  202  208  218  221  224  247  264 ...
    284  288  158  161  162  175  194  196  198  199  200  204 ...
    216  226  229  239  265  280  159  167  176  186  188  195 ...
    203  210  215  222  228  244  262  272  275  315  319];
classRule{20} = 'e';

% core-periphery graph: 4-ufd + at most one edge out from core
coreClass{12} = attClass{20};

% 4-ufd + small bump v1 (18 graphs)
% rule (c): 5->2,3 both or neither, preserving 2-3 symmetry
% rule (f): 2->5 XOR 3->5, symmetry-breaking
% (ordering reflects the four subclasses)
attLabel{21} = '4-ufd + small bump v1';
attClass{21} = [179  232  269  294  178  227  268  297 ...
    236  255  307  323  251  257  306  324 10324 10323];
classRule{21} = 'cf';

% 4-ufd + small bump v2 (8 graphs)
% rule (f): 2->5 XOR 3->5, symmetry-breaking
% (ordering reflects the two subclasses)
attLabel{22} = '4-ufd + small bump v2';
attClass{22} = [207  241  303  313  286  291  304  328];
classRule{22} = 'f';

% 4-ufd + small bump v3 (8 graphs)
% rule (f): 2->5 XOR 3->5, symmetry-breaking
% (ordering reflects the two subclasses)
attLabel{23} = '4-ufd + small bump v3';
attClass{23} = [231  254  282  302  182  211  248  300];
classRule{23} = 'f';

% core-periphery graph: 4-ufd + 4->5
coreClass{13} = [attClass{21} attClass{22} attClass{23}];

% 4-ufd + tiny bump v1 (16 graphs)
% rule (c): 5->2,3 both or neither, preserving 2-3 symmetry
% rule (f): 2->5 XOR 3->5, symmetry-breaking
% (ordering reflects the four subclasses)
attLabel{24} = '4-ufd + tiny bump v1';
attClass{24} = [266  274  278  317  271  273  277  316  234  242 ...
    246  259  220  243  245  258];
classRule{24} = 'cf';

% 4-ufd + tiny bump v2 (9 graphs)
% rule (f): 2->5 XOR 3->5, symmetry-breaking
% (ordering reflects the two subclasses)
attLabel{25} = '4-ufd + tiny bump v2';
attClass{25} = [281  308  309  326  184  209  212  240 10326];
classRule{25} = 'f';

% 4-ufd + tiny bump v3 (9 graphs)
% rule (f): 2->5 XOR 3->5, symmetry-breaking
% (ordering reflects the two subclasses)
attLabel{26} = '4-ufd + tiny bump v3';
attClass{26} = [174  206  213  235  287  290  321  325 10325];
classRule{26} = 'f';

% core-periphery graph: 4-ufd + 1->5
coreClass{14} = [attClass{24} attClass{25} attClass{26}];

% 4-ufd + tiny bump v4 (9 graphs)
% rule (c): 5->2,3 both or neither, preserving 2-3 symmetry
% (ordering reflects the two subclasses)
attLabel{27} = '4-ufd + tiny bump v4';
attClass{27} = [181  214  270  327  252  256  310  311 10327];
classRule{27} = 'c';

% 4-ufd + tiny bump v5 (4 graphs)
attLabel{28} = '4-ufd + tiny bump v5';
attClass{28} = [230  249  283  318];
classRule{28} = [];

% 4-ufd + tiny bump v6 (4 graphs)
attLabel{29} = '4-ufd + tiny bump v6';
attClass{29} = [233  238  285  289];
classRule{29} = [];

% core-periphery graph: 4-ufd + 2,3->5
coreClass{15} = [attClass{27} attClass{28} attClass{29}];

% missing primary 4-ufd attractor (8 graphs)
% note: graph 328/10328 is not necessarily missing its attractor?
attLabel{30} = 'missing 4-ufd attractor';
attClass{30} = [267 276 279 293 299 314 322 10328];
classRule{30} = [];

% 4-ufd quasiperiodic? (2 graphs)
% (not identical, but same nullchamber sequence)
attLabel{31} = '4-ufd quasiperiodic?';
attClass{31} = [183  298];
classRule{31} = [];

% 4-ufd missing primary 4-ufd attractor (2 graphs)
attLabel{32} = 'missing primary 4-ufd attractor v2';
attClass{32} = [305 320];
classRule{32} = [];

% 4-ufd double envelope (2 graphs)
attLabel{33} = '4-ufd double envelope';
attClass{33} = [217  253];
classRule{33} = [];

% 4-ufd + big bump (2 graphs)
% (not identical, but same nullchamber sequence)
attLabel{34} = '4-ufd + big bump';
attClass{34} = [250  260];
classRule{34} = [];

% core-periphery graph: 4-ufd + 1,4->5
coreClass{16} = [attClass{30} attClass{31} attClass{32} ...
    attClass{33} attClass{34}];


% fusion attractor classes_________________________________________

% pure fusion 3-cycle v1 (48+1 graphs, including one secondary)
% note: the 48 count is correct, despite 7 optional edges, b/c of symmetry
attLabel{35} = 'pure fusion 3-cycle v1';
attClass{35} = [983   984   985   986   988   989   990   991 ...
    993   994   995   996   997   998   999   1002  1003 ...
    1004  1005  1007  1008  1010  1011  1012  1013  1014 ...
    1018  1021  1022  1023  1024  1026  1029  1030  1031  1032 ...
    1033  1035  1037  1038  1039  1040  1042  1043  1044  1046 ...
    1047  1052 11052];
classRule{35} = [];

% core-periphery graph: fusion 3-cycle + 4-x->5 (other outgoing edges free)
coreClass{17} = attClass{35};

% pure fusion 3-cycle v2, with 4->5 (8 graphs)
attLabel{36} = 'pure fusion 3-cycle v2, with 4->5';
attClass{36} = [987  1000  1001  1009  1015  1019  1034  1048];
classRule{36} = [];

% core-periphery graph: fusion 3-cycle + 4->5
coreClass{18} = attClass{36};

% fusion 3-cycle + node 5 bump (17 graphs)
% note: graph 318 was "missing" and is now permuted to align as 10318
attLabel{37} = 'fusion 3-cycle + node 5 bump';
attClass{37} = [992  1006  1016  1017  1020  1025  1027  1028 ...
    1036 1041  1045  1049  1050  1051  1053  10318 11053];
classRule{37} = [];

% core-periphery graph: fusion 3-cycle + 3,4->5
coreClass{19} = attClass{37};


% core motifs start, first for fusion attractors____________________

% fusion 3-cycle w/ 2-clique (n=5 core)
attLabel{38} = 'fusion 3-cycle w/ 2-clique';
attClass{38} = [10];
classRule{38} = [];

% fusion 4-cycle (n=5 core)
attLabel{39} = 'fusion 4-cycle';
attClass{39} = [7];
classRule{39} = [];

% fusion 4-cycu (n=5 core)
attLabel{40} = 'fusion 4-cycu';
attClass{40} = [8];
classRule{40} = [];

% fusion 4-ufd (n=5 core)
attLabel{41} = 'fusion 4-ufd';
attClass{41} = [9];
classRule{41} = [];

% other n=5 core motif attractor classes__________________________

% 5-cycle
attLabel{42} = '5-cycle';
attClass{42} = [1]; 
classRule{42} = [];

% 5-star
attLabel{43} = '5-star';
attClass{43} = [2];
classRule{43} = [];

% 5-star with ring of 2-cliques
attLabel{44} = '5-star with ring of 2-cliques';
attClass{44} = [3];
classRule{44} = [];

% 4-cycle w/ dying fixed pt (n=5 cores, same nullchamber sequence)
attLabel{45} = '4-cycle w/ dying fixed pt';
attClass{45} = [4 5 6];
classRule{45} = [];

% extended 4-cycu (same nullchamber sequence as extended 4-ufd)
attLabel{46} = 'extended 4-cycu';
attClass{46} = [11:12];
classRule{46} = [];

% extended 4-ufd (same nullchamber sequence as extended 4-cycu)
attLabel{47} = 'extended 4-ufd';
attClass{47} = [13:15];
classRule{47} = [];

% outer neuron on 3-clique (same nullchamber sequence)
% note: 2->1 and 3->1 optional edges are equivalent, so count is 4-1=3
attLabel{48} = 'outer neuron on 3-clique';
attClass{48} = [16:18];
classRule{48} = [];

% outer neuron on 3-cycle + variations (pure one is graph 19)
% rule (g): in-deg(5)>=2 (at most one optional edge to 5 missing)
% note: with rule (g) the count of 6 checks out
% (**graph 24 has a second attractor**)
attLabel{49} = 'outer neuron on 3-cycle + variations';
attClass{49} = [19:24];
classRule{49} = 'g';

% cyclic union: pt, 2-clique, 2-clique + variations (embedded 4-cycu)
attLabel{50} = 'cyclic union: pt, 2-clique, 2-clique + variations';
attClass{50} = [25:30]; % (same nullchamber sequence)
classRule{50} = [];

% double envelope attractor 
attLabel{51} = 'extended 4-ufd: double envelope attractor';
attClass{51} = [31];
classRule{51} = [];

% envelope attractor (same nullchamber sequence)
attLabel{52} = 'extended 4-ufd: envelope attractor';
attClass{52} = [32:36];
classRule{52} = [];

% double envelope attractor (dying 4-ufd)
attLabel{53} = 'dying 4-ufd: double envelope attractor';
attClass{53} = [37 38];
classRule{53} = [];

% weird attractor 
attLabel{54} = 'weird attractor';
attClass{54} = [39];
classRule{54} = [];

% core classes for n=5 cores______________________________________

% n=5 core class: fusion cores
coreClass{20} = [attClass{38} attClass{39} attClass{40} attClass{41}];

% n=5 core class: 5-cycle symmetry
coreClass{21} = [attClass{42} attClass{43} attClass{44}];

% n=5 core class: dying 4-cycle and extended 4-cycu variations
coreClass{22} = [attClass{45} attClass{46}];

% n=5 core class: extended 4-ufd variations
coreClass{23} = [attClass{47} attClass{51} attClass{52}];
    
% n=5 core class: dying 4-ufd variations
coreClass{24} = [attClass{53} attClass{54}];

% n=5 core class: cyclic unions
coreClass{25} = [attClass{48} attClass{49} attClass{50}];


% missing attractor graphs________________________________________

% missing graphs are in [1:1053] but have a missing primary
% or secondary attractor (19 graphs)
%
% missing_att_graphs = [124  133  136  139  142  143  144  148 ...
% 267  276  279  293  299  305  314  319  320  322  328];
%

% check missed graphs and find doubled graphs ____________________

allgraphs = [];
for i=1:length(attClass)
    allgraphs = [allgraphs attClass{i}];
end;

if length(allgraphs) ~= length(unique(allgraphs))
    fprintf('warning: repeated graphs!\n')
end;

missed_graphs = sort(setdiff([1:1053],allgraphs));
if ~isempty(missed_graphs)
    fprintf('Warning: missing graphs!\n')
end

% these are graphs that have a second 10000+ copy
% for a secondary attractor
doubled_graphs = sort(setdiff(allgraphs,[1:1053]));


% _________________________________________________________________
% Permutations needed for various graphs to match attractor classes

ngraphs = max(allgraphs);
attPerms = zeros(ngraphs,5); % one row per graph

% perms for aligning secondary attractors__________________________

% perm [4 1 5 3 2] on graph 322 makes the 4-cycu class 21
% (the 4-ufd was primary)
attPerms(10322,:) = [4 1 5 3 2];

% perm [1 5 3 4 2] on graph 321 aligns the 4-cycu attractor 
% and we call this graph 10321
attPerms(10321,:) = [1 3 5 4 2];

% perm [5 2 3 4 1] on graph 320 makes the 4-cycu attractor primary,
% the 4-ufd was primary, but it's getting "fused" with the 4-cycu
attPerms(10320,:) = [5 2 3 4 1];

% to align for missing 4-cycu secondary attractor
attPerms(10319,:) = [5 2 3 4 1];

% perm [5 1 3 2 4] on graph 318 aligns the fusion 3-cycle attractor
% and we call this graph 10318
attPerms(10318,:) = [5 1 3 2 4];

% perm [4 2 3 1 5] on graph 980 (outer neuron on indep 3-set) aligns 
% to another identical 3-cycle attractor, and is an automorphism
attPerms(10980,:) = [4 2 3 1 5];

% perm [4 5 3 1 2] on graph 982 (baby chaos) aligns to another
% identical 3-cycle attractor, and is an automorphism
attPerms(10982,:) = [4 5 3 1 2];

% permutations for other secondary attractors
sec_set1 = [10061,10323,11980]; % 11980 is third attractor for 980
for i = sec_set1
    attPerms(i,:) = [5 2 3 4 1];
end

sec_set2 = [10153];
for i = sec_set2
    attPerms(i,:) = [1 3 2 5 4];
end

sec_set3 = [10152,10325];
for i = sec_set3
    attPerms(i,:) = [1 5 3 4 2];
end

sec_set4 = [10151,10324];
for i = sec_set4
    attPerms(i,:) = [5 3 2 4 1];
end

attPerms(10328,:) = [3 5 4 1 2]; 
attPerms(10327,:) = [1 2 3 5 4];
attPerms(10326,:) = [1 2 5 4 3];
attPerms(11052,:) = [3 1 2 5 4]; % secondary for 1052
attPerms(11053,:) = [5 1 2 4 3]; % secondary for 1053
attPerms(11982,:) = [4 2 3 1 5]; % tertiary for 982

sec_set5 = 10000+[921,922,923,926,927,929,930,933,936,940,945,962,...
    925,961,928,934,938,941,942,943,948,949,950,954,955,956,...
    959,960,967,968,969,970,971,972,978,979,981,965,966];
for i = sec_set5
    attPerms(i,:) = [4 2 3 1 5];
end

sec_set6 = 10000+[924,932,947,958,937,944,952,953,963,976,977];
for i = sec_set6
    attPerms(i,:) = [4 2 3 5 1];
end

sec_set7 = 10000+[931,935,939,951,957,973,974,975,946,964];
for i = sec_set7
    attPerms(i,:) = [3 4 2 5 1];
end

sec_set8 = [10917 10919 11981];
for i = sec_set8
    attPerms(i,:) = [4 5 3 1 2];
end

attPerms(10918,:) = [3 4 5 2 1];
attPerms(10920,:) = [3 4 5 2 1];
attPerms(10059,:) = [5 3 4 1 2];
attPerms(10060,:) = [5 3 4 1 2];

sec_set9 = 10000+[147,148,312,313,314];
for i = sec_set9
    attPerms(i,:) = [4 5 3 2 1];
end

sec_set10 = [10149 10150 10315 10316 10317];
for i = sec_set10
    attPerms(i,:) = [5 4 1 3 2];
end

% perms for aligning primary attractors___________________________

set1 = [602  610  622  627  632  638  646  607  612];

for i = set1
    attPerms(i,:) = [2 3 1 5 4];
end;

set2 = [399  630  644  652  737  769  775  779  830  958 ...
    436  508  511  560  562  587  822  851  468  521  530 ...
    826  469  625  659  944  642  653  655  741  787 ...
    794  947  755  814  824  778  783  953];

for i = set2
    attPerms(i,:) = [1 2 3 5 4];
end;

set3 = [359  384  401  425  485  486  497  499 ...
    506  510  512  520  538  545  547  549  559  561  568 ...
    576  586  588  589  595  597  643  648  768  776  788 ...
    790  793  808  809  825  828  835  840  850  852  856 ...
    857  862  939  946  455  462  475  570  579  735  743 ...
    744  781  786  795  846  482  821  863  551  759  819 ...
    829  831  855  611  656  845  621  663  673  687  900 ...
    906  964  635  645  688  699  919  931  935  957  973 ...
    974  975  651  658  711  920  705  716  870  872  876 ...
    877  706  736  774  807  951];

for i = set3
    attPerms(i,:) = [3 1 2 5 4];
end;

set4 = [1041 1045];

for i = set4
    attPerms(i,:) = [2 3 1 4 5];
end;

set5 = [1049 1053];

for i = set5
    attPerms(i,:) = [3 1 2 4 5];
end;

set7 = [129 150];

for i = set7
    attPerms(i,:) = [1 3 2 4 5];
end;

set8 = [132  137  152  10152];

for i = set8
    attPerms(i,:) = [1 3 2 4 5];
end;


% perms for aligning missing attractors____________________________

% graphs with missing 4-cycu attractor, align so
% that 2->5 XOR 3->5 becomes just 2->5
miss_set1 = [133 136 143];
for i = miss_set1
    attPerms(i,:) = [1 3 2 4 5];
end

% perms for aligning n=5 cores_____________________________________

set6 = [4 5 6];

for i = set6
    attPerms(i,:) = [2 3 4 1 5];
end;

core_set = [31:36];
for i = core_set
    attPerms(i,:) = [3 2 4 5 1];
end


% _________________________________________________________________
% Create family of graphs to match dynamic attractor classes
% note: graphs with more than one attractor will appear twice

% load graphs sAcell and initial conditions X0cell
load('n5_digraphs','sAcell');
load('n5_X0_eps0_51_delta1_76','X0cell');

% first, keep only primary attractor initial conditions in X0cell2
sAcell2 = sAcell;
for i = 1:1053
    X0cell2{i} = X0cell{i}(2,:);
end

% second, add doubled graphs to sAcell 
% (labeled by graphnum + 10K for secondary, graphnum + 11K for tertiary
% and keep secondary, tertiary attractor init conds in X0cell2
for i = doubled_graphs
    if i>11053 % 10001-11053 are secondary numbers for 1-1053
        base_idx = i-11000;
    else
        base_idx = i-10000;
    end
    sAcell2{i} = sAcell{base_idx};
    j = min(3,size(X0cell{base_idx},1)); % use secondary att init cond
    X0cell2{i} = X0cell{base_idx}(j,:); 
end

% third, apply permutations to graphs to fully-align primary and
% secondary attractors
for i=1:size(attPerms,1) % should be 1:ngraphs
    perm = attPerms(i,:); % gives [0 0 0 0 0] for no permutation
    if sum(perm)>0
        sAcell2{i} = sAcell2{i}(perm,perm);
        X0cell2{i} = X0cell2{i}(1,perm);
    end;
end;

% save everything__________________________________________________

% note: the sAcell2 saved here is augmented from the one in n5_digraphs
%       AND has already implemented the permutations in attPerms
% note: X0cell2 are initial conditions tailored to finding the attractors
%       for the high-inhibition parameters eps = .51, delta = 1.76

save('n5_coreClasses','coreClass','attClass','sAcell2','X0cell2',...
    'attLabel','classRule','doubled_graphs','attPerms');
