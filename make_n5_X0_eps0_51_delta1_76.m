% This file generates all the data about the representative graph for each 
% motif equivalence class and initial conditions to access the attractors of these networks 
% for a given choice of epsilon and delta.

% Data saved as: save('n5_X0_eps0_51_delta1_76.mat', 'X0_mEC', 'X0cell', 'mEC_core_motifs')

make_n5_digraphs 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

% Initial conditions were created for epsilon = 0.51 and delta = 1.76
% pars_str = eps0_51_delta1_76;

%_______________________________________________________________
% GROUP I: 39 classes of graphs with no proper core motifs 
% (these are either new n=5 cores or they are graphs that contain no core motifs)
% [Total: 39 graphs, 3.7% "unstable core" classes, 0.4% of all n=5 graphs]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{1} = [ 1 ]; 
mEC_label{1} = 'mEC 1: 5-cycle (core motif), Group I-A (graph 1)'; 
mEC_core_motifs{1} = '{ [1  2  3  4  5] }';

% Representative graph is #1: 
% sA = sAcell{1};
sA = [0 0 0 0 1; 
      1 0 0 0 0; 
      0 1 0 0 0; 
      0 0 1 0 0; 
      0 0 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{1} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
              0.1068  0.1034  0.1058  0.1039  0.1025 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{2} = [ 2 ]; 
mEC_label{2} = 'mEC 2: 5-star (core motif), Group I-A (graph 2)'; 
mEC_core_motifs{2} = '{ [1  2  3  4  5] }';
mEC_notes{2} = 'The Gaudi attractor appears as a 2nd attractor for eps = 0.095, delta = 0.11 and for eps = 0.1, delta = 0.12.';

% Representative graph is #2: 
% sA = sAcell{2};
sA = [0 0 0 1 1; 
      1 0 0 0 1; 
      1 1 0 0 0; 
      0 1 1 0 0; 
      0 0 1 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{2} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
              0.1346  0.1345  0.1355  0.1375  0.1364 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{3} = [ 3 ]; 
mEC_label{3} = 'mEC 3: 5-star with 2-cliques (core motif), Group I-A (graph 3)'; 
mEC_core_motifs{3} = '{ [1  2  3  4  5] }';

% Representative graph is #3: 
% sA = sAcell{3};
sA = [0 1 0 1 1; 
      1 0 1 0 1; 
      1 1 0 1 0; 
      0 1 1 0 1; 
      1 0 1 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{3} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
              0.1955  0.1916  0.1921  0.1913  0.1942 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{4} = [ 4 ]; 
mEC_label{4} = 'mEC 4: 4-cycle[1,3][2,4] (core motif), Group I-B (graph 4)'; 
mEC_core_motifs{4} = '{ [1  2  3  4  5] }';

% Representative graph is #4: 
% sA = sAcell{4};
sA = [0 0 0 1 0; 
      1 0 0 0 1; 
      0 1 0 0 0; 
      0 0 1 0 1; 
      1 0 1 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{4} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
              0.1265  0.1615  0.1246  0.1622  0.0102 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{5} = [ 5 ]; 
mEC_label{5} = 'mEC 5: 4-cycle[1,3][2,4] plus edge out (core motif), Group I-B (graph 5)'; 
mEC_core_motifs{5} = '{ [1  2  3  4  5] }';

% Representative graph is #5: 
% sA = sAcell{5};
sA = [0 0 0 1 1; 
      1 0 0 0 1; 
      0 1 0 0 0; 
      0 0 1 0 1; 
      1 0 1 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{5} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
              0.1250  0.1622  0.1290  0.1538  0.0179 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{6} = [ 6 ]; 
mEC_label{6} = 'mEC 6: 4-cycle[1,3][2,4] plus 2 edges out (core motif), Group I-B (graph 6)'; 
mEC_core_motifs{6} = '{ [1  2  3  4  5] }';

% Representative graph is #6: 
% sA = sAcell{6};
sA = [0 0 0 1 1; 
      1 0 0 0 1; 
      0 1 0 0 1; 
      0 0 1 0 1; 
      1 0 1 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{6} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
              0.1357  0.1367  0.1376  0.1381  0.1340 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{7} = [ 7 ]; 
mEC_label{7} = 'mEC 7: clique union 4-cycle + pt (core motif), Group I-C (graph 7)'; 
mEC_core_motifs{7} = '{ [1  2  3  4  5] }';

% Representative graph is #7: 
% sA = sAcell{7};
sA = [0 0 0 1 1; 
      1 0 0 0 1; 
      0 1 0 0 1; 
      0 0 1 0 1; 
      1 1 1 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{7} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
              0.0846  0.0889  0.0888  0.0885  0.8393 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{8} = [ 8 ]; 
mEC_label{8} = 'mEC 8: clique union 4-cycu + pt (core motif), Group I-C (graph 8)'; 
mEC_core_motifs{8} = '{ [1  2  3  4  5] }';

% Representative graph is #8: 
% sA = sAcell{8};
sA = [0 0 0 1 1; 
      1 0 1 0 1; 
      1 1 0 0 1; 
      0 1 1 0 1; 
      1 1 1 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{8} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
              0.1432  0.0745  0.0731  0.1607  0.7846 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{9} = [ 9 ]; 
mEC_label{9} = 'mEC 9: clique union 4-ufd + pt (core motif), Group I-C (graph 9)'; 
mEC_core_motifs{9} = '{ [1  2  3  4  5] }';
mEC_notes{9} = 'The attractor for this core motif has surprise symmetry.';

% Representative graph is #9: 
% sA = sAcell{9};
sA = [0 1 0 1 1; 
      1 0 1 0 1; 
      1 1 0 0 1; 
      0 1 1 0 1; 
      1 1 1 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{9} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
              0.1389  0.1384  0.1392  0.1375  0.7398 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{10} = [ 10 ]; 
mEC_label{10} = 'mEC 10: clique union 3-cycle + 2-clique (or fusion 3-cycle + pt) (core motif), Group I-C (graph 10)'; 
mEC_core_motifs{10} = '{ [1  2  3  4  5] }';

% Representative graph is #10: 
% sA = sAcell{10};
sA = [0 0 1 1 1; 
      1 0 0 1 1; 
      0 1 0 1 1; 
      1 1 1 0 1; 
      1 1 1 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{10} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.1081  0.1075  0.1060  0.5698  0.5697 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{11} = [ 11 ]; 
mEC_label{11} = 'mEC 11: pure cyclic union on pt, 2-clique, pt, pt (or extended 4-cycu) (core motif), Group I-D (graph 11)'; 
mEC_core_motifs{11} = '{ [1  2  3  4  5] }';

% Representative graph is #11: 
% sA = sAcell{11};
sA = [0 0 0 0 1; 
      1 0 1 0 0; 
      1 1 0 0 0; 
      0 1 1 0 0; 
      0 0 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{11} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.1200  0.0834  0.0815  0.1316  0.1714 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{12} = [ 12 ]; 
mEC_label{12} = 'mEC 12: extended 4-cycu down-skip edge node 2 (** no core motifs for eps = 0.51, delta = 1.76 **), Group I-D (graph 12)'; 
mEC_core_motifs{12} = '{ [] }';
mEC_notes{12} = 'The attractor for this graph (which has *no* core motifs) has surprise symmetry.  This class contains 1 graph that has parameter dependent core motifs (# 12).';

% Representative graph is #12: 
% sA = sAcell{12};
sA = [0 0 0 0 1; 
      1 0 1 0 0; 
      1 1 0 0 0; 
      0 1 1 0 0; 
      0 1 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{12} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.1046  0.1424  0.1415  0.0031  0.2731 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{13} = [ 13 ]; 
mEC_label{13} = 'mEC 13: extended 4-ufd (core motif), Group I-D (graph 13)'; 
mEC_core_motifs{13} = '{ [1  2  3  4  5] }';
mEC_notes{13} = 'The attractor for this core motif has surprise symmetry.';

% Representative graph is #13: 
% sA = sAcell{13};
sA = [0 1 0 0 1; 
      1 0 1 0 0; 
      1 1 0 0 0; 
      0 1 1 0 0; 
      0 0 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{13} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.1810  0.0574  0.0594  0.2164  0.0862 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{14} = [ 14 ]; 
mEC_label{14} = 'mEC 14: extended 4-ufd down-skip edge node 2 (core motif), Group I-D (graph 14)'; 
mEC_core_motifs{14} = '{ [1  2  3  4  5] }';
mEC_notes{14} = 'The attractor for this core motif has surprise symmetry.';

% Representative graph is #14: 
% sA = sAcell{14};
sA = [0 1 0 0 1; 
      1 0 1 0 0; 
      1 1 0 0 0; 
      0 1 1 0 0; 
      0 1 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{14} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.1336  0.1362  0.1347  0.1360  0.1355 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{15} = [ 15 ]; 
mEC_label{15} = 'mEC 15: extended 4-ufd + down-skip edge node 3 (core motif), Group I-D (graph 15)'; 
mEC_core_motifs{15} = '{ [1  2  3  4  5] }';
mEC_notes{15} = 'The attractor for this core motif has surprise symmetry.';

% Representative graph is #15: 
% sA = sAcell{15};
sA = [0 1 0 0 1; 
      1 0 1 0 0; 
      1 1 0 0 0; 
      0 1 1 0 0; 
      0 0 1 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{15} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.1339  0.1362  0.1359  0.1351  0.1377 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{16} = [ 16 ]; 
mEC_label{16} = 'mEC 16: pure cyclic union pt, 3-clique, pt (core motif), Group I-E (graph 16)'; 
mEC_core_motifs{16} = '{ [1  2  3  4  5] }';

% Representative graph is #16: 
% sA = sAcell{16};
sA = [0 0 0 0 1; 
      1 0 1 1 0; 
      1 1 0 1 0; 
      1 1 1 0 0; 
      0 1 1 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{16} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2280  0.0805  0.0822  0.0820  0.2673 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{17} = [ 17 ]; 
mEC_label{17} = 'mEC 17: cyclic union pt, 3-clique, pt w/ added back edge (core motif), Group I-E (graph 17)'; 
mEC_core_motifs{17} = '{ [1  2  3  4  5] }';
mEC_notes{17} = 'The attractor for this core motif has surprise symmetry.';

% Representative graph is #17: 
% sA = sAcell{17};
sA = [0 1 0 0 1; 
      1 0 1 1 0; 
      1 1 0 1 0; 
      1 1 1 0 0; 
      0 1 1 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{17} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2191  0.1154  0.1147  0.1156  0.2474 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{18} = [ 18 ]; 
mEC_label{18} = 'mEC 18: cyclic union pt, 3-clique, pt w/ two added back edges (core motif), Group I-E (graph 18)'; 
mEC_core_motifs{18} = '{ [1  2  3  4  5] }';
mEC_notes{18} = 'The attractor for this core motif has surprise symmetry.';

% Representative graph is #18: 
% sA = sAcell{18};
sA = [0 1 1 0 1; 
      1 0 1 1 0; 
      1 1 0 1 0; 
      1 1 1 0 0; 
      0 1 1 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{18} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.1961  0.1927  0.1950  0.1922  0.1955 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{19} = [ 19 ]; 
mEC_label{19} = 'mEC 19: pure cyclic union pt, 3-cycle, pt (core motif), Group I-F (graph 19)'; 
mEC_core_motifs{19} = '{ [1  2  3  4  5] }';
mEC_notes{19} = 'The attractor for this core motif has surprise symmetry.';

% Representative graph is #19: 
% sA = sAcell{19};
sA = [0 0 0 0 1; 
      1 0 0 1 0; 
      1 1 0 0 0; 
      1 0 1 0 0; 
      0 1 1 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{19} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2496  0.0835  0.0817  0.0839  0.2001 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{20} = [ 20 ]; 
mEC_label{20} = 'mEC 20: cyclic union pt, 3-cycle, pt w/ added back edge (core motif), Group I-F (graph 20)'; 
mEC_core_motifs{20} = '{ [1  2  3  4  5] }';

% Representative graph is #20: 
% sA = sAcell{20};
sA = [0 1 0 0 1; 
      1 0 0 1 0; 
      1 1 0 0 0; 
      1 0 1 0 0; 
      0 1 1 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{20} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2507  0.1135  0.1168  0.1149  0.1457 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{21} = [ 21 ]; 
mEC_label{21} = 'mEC 21: cyclic union pt, 3-cycle, pt w/ dropped down edge (core motif), Group I-F (graph 21)'; 
mEC_core_motifs{21} = '{ [1  2  3  4  5] }';

% Representative graph is #21: 
% sA = sAcell{21};
sA = [0 0 0 0 1; 
      1 0 0 1 0; 
      1 1 0 0 0; 
      1 0 1 0 0; 
      0 1 1 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{21} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.1759  0.0904  0.0929  0.0912  0.2001 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{22} = [ 22 ]; 
mEC_label{22} = 'mEC 22: cyclic union pt, 3-cycle, pt w/ added back edge and dropped down edge (v1) (core motif), Group I-F (graph 22)'; 
mEC_core_motifs{22} = '{ [1  2  3  4  5] }';

% Representative graph is #22: 
% sA = sAcell{22};
sA = [0 1 0 0 1; 
      1 0 0 1 0; 
      1 1 0 0 0; 
      1 0 1 0 0; 
      0 0 1 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{22} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.1353  0.1349  0.1353  0.1342  0.1344 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{23} = [ 23 ]; 
mEC_label{23} = 'mEC 23: cyclic union pt, 3-cycle, pt w/ added back edge and dropped down edge (v2) (core motif), Group I-F (graph 23)'; 
mEC_core_motifs{23} = '{ [1  2  3  4  5] }';

% Representative graph is #23: 
% sA = sAcell{23};
sA = [0 1 0 0 1; 
      1 0 0 1 0; 
      1 1 0 0 0; 
      1 0 1 0 0; 
      0 1 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{23} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.1381  0.1368  0.1358  0.1338  0.1348 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{24} = [ 24 ]; 
mEC_label{24} = 'mEC 24: cyclic union pt, 3-cycle, pt w/ added back edge and dropped down edge (v3) ** 2 attractors ** (core motif), Group I-F (graph 24)'; 
mEC_core_motifs{24} = '{ [1  2  3  4  5] }';

% Representative graph is #24: 
% sA = sAcell{24};
sA = [0 1 0 0 1; 
      1 0 0 1 0; 
      1 1 0 0 0; 
      1 0 1 0 0; 
      0 1 1 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{24} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.1357  0.1348  0.1363  0.1350  0.1381; 
               0.1348  0.1359  0.1375  0.1360  0.1346 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{25} = [ 25 ]; 
mEC_label{25} = 'mEC 25: pure cyclic union pt, 2-clique, 2-clique (core motif), Group I-G (graph 25)'; 
mEC_core_motifs{25} = '{ [1  2  3  4  5] }';

% Representative graph is #25: 
% sA = sAcell{25};
sA = [0 0 0 1 1; 
      1 0 1 0 0; 
      1 1 0 0 0; 
      0 1 1 0 1; 
      0 1 1 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{25} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2550  0.1126  0.1141  0.1325  0.1297 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{26} = [ 26 ]; 
mEC_label{26} = 'mEC 26: cyclic union pt, 2-clique, 2-clique w/ added back edge (core motif), Group I-G (graph 26)'; 
mEC_core_motifs{26} = '{ [1  2  3  4  5] }';
mEC_notes{26} = 'The attractor for this core motif has surprise symmetry.';

% Representative graph is #26: 
% sA = sAcell{26};
sA = [0 1 0 1 1; 
      1 0 1 0 0; 
      1 1 0 0 0; 
      0 1 1 0 1; 
      0 1 1 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{26} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2378  0.2088  0.2071  0.1092  0.1091 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{27} = [ 27 ]; 
mEC_label{27} = 'mEC 27: cyclic union pt, 2-clique, 2-clique w/ two added back edges (v1) (core motif), Group I-G (graph 27)'; 
mEC_core_motifs{27} = '{ [1  2  3  4  5] }';
mEC_notes{27} = 'The attractor for this core motif has surprise symmetry.';

% Representative graph is #27: 
% sA = sAcell{27};
sA = [0 0 0 1 1; 
      1 0 1 1 0; 
      1 1 0 1 0; 
      0 1 1 0 1; 
      0 1 1 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{27} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2061  0.1088  0.1055  0.2328  0.2323 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{28} = [ 28 ]; 
mEC_label{28} = 'mEC 28: cyclic union pt, 2-clique, 2-clique w/ two added back edges (v2) (core motif), Group I-G (graph 28)'; 
mEC_core_motifs{28} = '{ [1  2  3  4  5] }';
mEC_notes{28} = 'The attractor for this core motif has surprise symmetry.  This graph is s_i-equivalent to graph 27.';

% Representative graph is #28: 
% sA = sAcell{28};
sA = [0 0 0 1 1; 
      1 0 1 1 0; 
      1 1 0 0 1; 
      0 1 1 0 1; 
      0 1 1 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{28} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2034  0.1066  0.1089  0.2342  0.2298 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{29} = [ 29 ]; 
mEC_label{29} = 'mEC 29: cyclic union pt, 2-clique, 2-clique w/ three added back edges (v1) (core motif), Group I-G (graph 29)'; 
mEC_core_motifs{29} = '{ [1  2  3  4  5] }';
mEC_notes{29} = 'The attractor for this core motif has surprise symmetry.';

% Representative graph is #29: 
% sA = sAcell{29};
sA = [0 1 0 1 1; 
      1 0 1 1 0; 
      1 1 0 1 0; 
      0 1 1 0 1; 
      0 1 1 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{29} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.1947  0.1917  0.1936  0.1944  0.1938 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{30} = [ 30 ]; 
mEC_label{30} = 'mEC 30: cyclic union pt, 2-clique, 2-clique w/ three added back edges (v2) (core motif), Group I-G (graph 30)'; 
mEC_core_motifs{30} = '{ [1  2  3  4  5] }';
mEC_notes{30} = 'The attractor for this core motif has surprise symmetry.  This graph is s_i-equivalent to graph 29.';

% Representative graph is #30: 
% sA = sAcell{30};
sA = [0 1 0 1 1; 
      1 0 1 1 0; 
      1 1 0 0 1; 
      0 1 1 0 1; 
      0 1 1 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{30} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.1924  0.1937  0.1952  0.1931  0.1923 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{31} = [ 31 ]; 
mEC_label{31} = 'mEC 31: cyclic union pt, 2-clique, 2-clique w/ two added back edges (v3) (core motif), Group I-G (graph 31)'; 
mEC_core_motifs{31} = '{ [1  2  3  4  5] }';
mEC_notes{31} = 'The attractor for this core motif has surprise symmetry.';

% Representative graph is #31: 
% sA = sAcell{31};
sA = [0 1 0 1 1; 
      1 0 1 1 0; 
      1 1 0 0 0; 
      0 1 1 0 1; 
      0 1 1 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{31} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.1898  0.5486  0.1673  0.0874  0.0877 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{32} = [ 32 ]; 
mEC_label{32} = 'mEC 32: envelope attractor (v1) (** no core motifs for eps = 0.51, delta = 1.76 **), Group I-H (graph 32)'; 
mEC_core_motifs{32} = '{ [] }';
mEC_notes{32} = 'This class contains 1 graph that has parameter dependent core motifs (# 32).';

% Representative graph is #32: 
% sA = sAcell{32};
sA = [0 0 0 0 1; 
      1 0 1 1 0; 
      1 1 0 0 0; 
      0 1 1 0 0; 
      0 1 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{32} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.1041  0.1391  0.1412  0.0017  0.2741 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{33} = [ 33 ]; 
mEC_label{33} = 'mEC 33: envelope attractor (v2) (** no core motifs for eps = 0.51, delta = 1.76 **), Group I-H (graph 33)'; 
mEC_core_motifs{33} = '{ [] }';
mEC_notes{33} = 'This class contains 1 graph that has parameter dependent core motifs (# 33).';

% Representative graph is #33: 
% sA = sAcell{33};
sA = [0 0 0 1 1; 
      1 0 1 1 0; 
      1 1 0 0 0; 
      0 1 1 0 0; 
      0 1 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{33} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.1044  0.1404  0.1422  0.0013  0.2702 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{34} = [ 34 ]; 
mEC_label{34} = 'mEC 34: envelope attractor (v3) (core motif), Group I-H (graph 34)'; 
mEC_core_motifs{34} = '{ [1  2  3  4  5] }';

% Representative graph is #34: 
% sA = sAcell{34};
sA = [0 1 0 0 1; 
      1 0 1 1 0; 
      1 1 0 0 0; 
      0 1 1 0 0; 
      0 1 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{34} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.1054  0.5658  0.1042  0.1045  0.1043 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{35} = [ 35 ]; 
mEC_label{35} = 'mEC 35: envelope attractor (v4) (core motif), Group I-H (graph 35)'; 
mEC_core_motifs{35} = '{ [1  2  3  4  5] }';

% Representative graph is #35: 
% sA = sAcell{35};
sA = [0 0 1 0 1; 
      1 0 1 1 0; 
      1 1 0 0 0; 
      0 1 1 0 0; 
      0 1 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{35} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.0534  0.2550  0.1828  0.0211  0.2290 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{36} = [ 36 ]; 
mEC_label{36} = 'mEC 36: envelope attractor (v5) (core motif), Group I-H (graph 36)'; 
mEC_core_motifs{36} = '{ [1  2  3  4  5] }';

% Representative graph is #36: 
% sA = sAcell{36};
sA = [0 0 1 1 1; 
      1 0 1 1 0; 
      1 1 0 0 0; 
      0 1 1 0 0; 
      0 1 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{36} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.0603  0.2704  0.1782  0.0240  0.2238 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{37} = [ 37 ]; 
mEC_label{37} = 'mEC 37: double envelope attractor (v1) (core motif), Group I-I (graph 37)'; 
mEC_core_motifs{37} = '{ [1  2  3  4  5] }';

% Representative graph is #37: 
% sA = sAcell{37};
sA = [0 1 0 1 1; 
      1 0 1 0 1; 
      1 1 0 0 0; 
      0 1 1 0 0; 
      1 0 1 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{37} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.1972  0.2042  0.2532  0.0129  0.2134 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{38} = [ 38 ]; 
mEC_label{38} = 'mEC 38: double envelope attractor (v2) (core motif), Group I-I (graph 38)'; 
mEC_core_motifs{38} = '{ [1  2  3  4  5] }';

% Representative graph is #38: 
% sA = sAcell{38};
sA = [0 1 0 1 1; 
      1 0 1 0 1; 
      1 1 0 0 0; 
      0 1 1 0 1; 
      1 0 1 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{38} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2009  0.2093  0.2522  0.0113  0.2099 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{39} = [ 39 ]; 
mEC_label{39} = 'mEC 39: weird attractor (core motif), Group I-J (graph 39)'; 
mEC_core_motifs{39} = '{ [1  2  3  4  5] }';

% Representative graph is #39: 
% sA = sAcell{39};
sA = [0 1 0 1 0; 
      1 0 1 0 1; 
      1 1 0 0 0; 
      0 1 1 0 0; 
      1 0 1 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{39} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2551  0.2022  0.2013  0.1989  0.0153 ]; 


% _______________________________________________________________
% GROUP II: 66 "unstable core" classes with at least one unstable 4-motif: 4-cycle, 4-cycu, 4-ufd 
% [Total: 289 graphs, 3% of all n=5 graphs]
% ** Most of these classes split into smaller attractor equivalence classes

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{40} = [ 40:52 ]; 
mEC_label{40} = 'mEC 40: 4-cycle [13 graphs] Group II (graphs [40:52])'; 
mEC_core_motifs{40} = '{ [1  2  3  4] }';

% Representative graph is #40: 
% sA = sAcell{40};
sA = [0 0 0 1 1; 
      1 0 0 0 0; 
      0 1 0 0 0; 
      0 0 1 0 0; 
      0 0 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{40} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.1438  0.1442  0.1444  0.1437  0.0034 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{41} = [ 53:54 ]; 
mEC_label{41} = 'mEC 41: 4-cycle + sink [2 graphs] Group II (graphs [53:54])'; 
mEC_core_motifs{41} = '{ [1  2  3  4], [5] }';

% Representative graph is #53: 
% sA = sAcell{53};
sA = [0 0 0 1 0; 
      1 0 0 0 0; 
      0 1 0 0 0; 
      0 0 1 0 0; 
      0 0 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{41} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.1467  0.1470  0.1431  0.1460  0.0025 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{42} = [ 55:58 ]; 
mEC_label{42} = 'mEC 42: 4-cycle + 2-clique [4 graphs] Group II (graphs [55:58])'; 
mEC_core_motifs{42} = '{ [1  2  3  4], [4  5] }';

% Representative graph is #55: 
% sA = sAcell{55};
sA = [0 0 0 1 0; 
      1 0 0 0 0; 
      0 1 0 0 0; 
      0 0 1 0 1; 
      0 0 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{42} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.1429  0.1433  0.1427  0.1436  0.0004 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{43} = [ 59:60 ]; 
mEC_label{43} = 'mEC 43: 4-cycle + 3-cycle [2 graphs] Group II (graphs [59:60])'; 
mEC_core_motifs{43} = '{ [1  2  3  4], [3  4  5] }';

% Representative graph is #59: 
% sA = sAcell{59};
sA = [0 0 0 1 0; 
      1 0 0 0 0; 
      0 1 0 0 1; 
      0 0 1 0 0; 
      0 0 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{43} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.1473  0.1443  0.1449  0.1431  0.0036; 
               0.0017  0.0027  0.2359  0.2363  0.2377 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{44} = [ 61 ]; 
mEC_label{44} = 'mEC 44: two 4-cycles [1 graph] Group II (graph 61)'; 
mEC_core_motifs{44} = '{ [1  2  3  4], [2  3  4  5] }';

% Representative graph is #61: 
% sA = sAcell{61};
sA = [0 0 0 1 0; 
      1 0 0 0 1; 
      0 1 0 0 0; 
      0 0 1 0 0; 
      0 0 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{44} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.1469  0.1451  0.1432  0.1467  0.0033; 
               0.0011  0.1451  0.1438  0.1473  0.1440 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{45} = [ 62:118 ]; 
mEC_label{45} = 'mEC 45: 4-cycu [57 graphs] Group II (graphs [62:118])'; 
mEC_core_motifs{45} = '{ [1  2  3  4] }';
mEC_notes{45} = 'This class contains 5 graph(s) that have parameter dependent core motifs (# 86   93   97  113  117).';

% Representative graph is #62: 
% sA = sAcell{62};
sA = [0 0 0 1 1; 
      1 0 1 0 0; 
      1 1 0 0 0; 
      0 1 1 0 0; 
      0 0 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{45} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2315  0.1173  0.1172  0.2617  0.0017 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{46} = [ 119:125 ]; 
mEC_label{46} = 'mEC 46: 4-cycu + sink [7 graphs] Group II (graphs [119:125])'; 
mEC_core_motifs{46} = '{ [1  2  3  4], [5] }';
mEC_notes{46} = 'This class contains 1 graph(s) that are missing an attractor (# 124).  This class contains 1 graph that has parameter dependent core motifs (# 124).';

% Representative graph is #119: 
% sA = sAcell{119};
sA = [0 0 0 1 0; 
      1 0 1 0 0; 
      1 1 0 0 0; 
      0 1 1 0 0; 
      0 0 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{46} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2291  0.1217  0.1176  0.2615  0.0031 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{47} = [ 126:129 ]; 
mEC_label{47} = 'mEC 47: 4-cycu + 2-clique (v1) [4 graphs] Group II (graphs [126:129])'; 
mEC_core_motifs{47} = '{ [1  2  3  4], [1  5] }';

% Representative graph is #126: 
% sA = sAcell{126};
sA = [0 0 0 1 1; 
      1 0 1 0 0; 
      1 1 0 0 0; 
      0 1 1 0 0; 
      1 0 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{47} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2273  0.1189  0.1172  0.2609  0.0033 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{48} = [ 130:137 ]; 
mEC_label{48} = 'mEC 48: 4-cycu + 2-clique (v2) [8 graphs] Group II (graphs [130:137])'; 
mEC_core_motifs{48} = '{ [1  2  3  4], [3  5] }';
mEC_notes{48} = 'This class contains 2 graph(s) that are missing an attractor (# 133  136).  This class contains 2 graph(s) that have parameter dependent core motifs (# 133  136).';

% Representative graph is #130: 
% sA = sAcell{130};
sA = [0 0 0 1 0; 
      1 0 1 0 0; 
      1 1 0 0 1; 
      0 1 1 0 0; 
      0 0 1 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{48} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2285  0.1212  0.1177  0.2629  0.0043 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{49} = [ 138:144 ]; 
mEC_label{49} = 'mEC 49: 4-cycu + 2-clique (v3) [7 graphs] Group II (graphs [138:144])'; 
mEC_core_motifs{49} = '{ [1  2  3  4], [4  5] }';
mEC_notes{49} = 'This class contains 4 graph(s) that are missing an attractor (# 139  142  143  144).  This class contains 4 graph(s) that have parameter dependent core motifs (# 139  142  143  144).';

% Representative graph is #138: 
% sA = sAcell{138};
sA = [0 0 0 1 0; 
      1 0 1 0 0; 
      1 1 0 0 0; 
      0 1 1 0 1; 
      0 0 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{49} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2290  0.1215  0.1206  0.2630  0.0001 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{50} = [ 145:146 ]; 
mEC_label{50} = 'mEC 50: 4-cycu + 3-clique [2 graphs] Group II (graphs [145:146])'; 
mEC_core_motifs{50} = '{ [1  2  3  4], [2  3  5] }';

% Representative graph is #145: 
% sA = sAcell{145};
sA = [0 0 0 1 0; 
      1 0 1 0 1; 
      1 1 0 0 1; 
      0 1 1 0 0; 
      0 1 1 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{50} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2278  0.1208  0.1187  0.2603  0.0041 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{51} = [ 147:148 ]; 
mEC_label{51} = 'mEC 51: 4-cycu + 3-cycle (v1) [2 graphs] Group II (graphs [147:148])'; 
mEC_core_motifs{51} = '{ [1  2  3  4], [3  4  5] }';
mEC_notes{51} = 'This class contains 1 graph(s) that are missing an attractor (# 148).  This class contains 1 graph that has parameter dependent core motifs (# 148).';

% Representative graph is #147: 
% sA = sAcell{147};
sA = [0 0 0 1 0; 
      1 0 1 0 0; 
      1 1 0 0 1; 
      0 1 1 0 0; 
      0 0 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{51} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2312  0.1177  0.1206  0.2598  0.0020; 
               0.0001  0.0025  0.2397  0.2398  0.2367 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{52} = [ 149:150 ]; 
mEC_label{52} = 'mEC 52: 4-cycu + 3-cycle (v2) [2 graphs] Group II (graphs [149:150])'; 
mEC_core_motifs{52} = '{ [1  2  3  4], [1  4  5] }';

% Representative graph is #149: 
% sA = sAcell{149};
sA = [0 0 0 1 0; 
      1 0 1 0 0; 
      1 1 0 0 0; 
      0 1 1 0 1; 
      1 0 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{52} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2302  0.1215  0.1192  0.2597  0.0015; 
               0.2387  0.0001  0.0011  0.2399  0.2391 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{53} = [ 151 ]; 
mEC_label{53} = 'mEC 53: two 4-cycus (v1) [1 graph] Group II (graph 151)'; 
mEC_core_motifs{53} = '{ [1  2  3  4], [2  3  4  5] }';

% Representative graph is #151: 
% sA = sAcell{151};
sA = [0 0 0 1 0; 
      1 0 1 0 1; 
      1 1 0 0 1; 
      0 1 1 0 0; 
      0 0 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{53} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2319  0.1200  0.1184  0.2610  0.0047; 
               0.0024  0.1199  0.1220  0.2608  0.2281 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{54} = [ 152 ]; 
mEC_label{54} = 'mEC 54: two 4-cycus (v2) [1 graph] Group II (graph 152)'; 
mEC_core_motifs{54} = '{ [1  2  3  4], [1  3  4  5] }';

% Representative graph is #152: 
% sA = sAcell{152};
sA = [0 0 0 1 0; 
      1 0 1 0 0; 
      1 1 0 0 1; 
      0 1 1 0 1; 
      1 0 1 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{54} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2281  0.1188  0.1203  0.2626  0.0025; 
               0.2285  0.0028  0.1210  0.2612  0.1210 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{55} = [ 153 ]; 
mEC_label{55} = 'mEC 55: two 4-cycus (v3) [1 graph] Group II (graph 153)'; 
mEC_core_motifs{55} = '{ [1  2  3  4], [1  2  3  5] }';

% Representative graph is #153: 
% sA = sAcell{153};
sA = [0 0 0 1 1; 
      1 0 1 0 0; 
      1 1 0 0 0; 
      0 1 1 0 0; 
      0 1 1 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{55} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2293  0.1182  0.1180  0.2631  0.0037; 
               0.2303  0.1187  0.1194  0.0001  0.2614 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{56} = [ 154:260 ]; 
mEC_label{56} = 'mEC 56: 4-ufd [107 graphs] Group II (graphs [154:260])'; 
mEC_core_motifs{56} = '{ [1  2  3  4] }';

% Representative graph is #154: 
% sA = sAcell{154};
sA = [0 1 0 1 1; 
      1 0 1 0 0; 
      1 1 0 0 0; 
      0 1 1 0 0; 
      0 0 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{56} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2132  0.2134  0.2121  0.2151  0.0025 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{57} = [ 261:271 ]; 
mEC_label{57} = 'mEC 57: 4-ufd + sink [11 graphs] Group II (graphs [261:271])'; 
mEC_core_motifs{57} = '{ [1  2  3  4], [5] }';
mEC_notes{57} = 'This class contains 1 graph(s) that are missing an attractor (# 267).';

% Representative graph is #261: 
% sA = sAcell{261};
sA = [0 1 0 1 0; 
      1 0 1 0 0; 
      1 1 0 0 0; 
      0 1 1 0 0; 
      0 0 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{57} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2139  0.2113  0.2122  0.2155  0.0044 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{58} = [ 272:279 ]; 
mEC_label{58} = 'mEC 58: 4-ufd + 2-clique (v1) [8 graphs] Group II (graphs [272:279])'; 
mEC_core_motifs{58} = '{ [1  2  3  4], [1  5] }';
mEC_notes{58} = 'This class contains 2 graph(s) that are missing an attractor (# 276  279).';

% Representative graph is #272: 
% sA = sAcell{272};
sA = [0 1 0 1 1; 
      1 0 1 0 0; 
      1 1 0 0 0; 
      0 1 1 0 0; 
      1 0 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{58} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2128  0.2149  0.2132  0.2113  0.0002 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{59} = [ 280:283 ]; 
mEC_label{59} = 'mEC 59: 4-ufd + 2-clique (v2) [4 graphs] Group II (graphs [280:283])'; 
mEC_core_motifs{59} = '{ [1  2  3  4], [2  5] }';

% Representative graph is #280: 
% sA = sAcell{280};
sA = [0 1 0 1 0; 
      1 0 1 0 1; 
      1 1 0 0 0; 
      0 1 1 0 0; 
      0 1 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{59} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2147  0.2121  0.2130  0.2123  0.0004 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{60} = [ 284:291 ]; 
mEC_label{60} = 'mEC 60: 4-ufd + 2-clique (v3) [8 graphs] Group II (graphs [284:291])'; 
mEC_core_motifs{60} = '{ [1  2  3  4], [3  5] }';

% Representative graph is #284: 
% sA = sAcell{284};
sA = [0 1 0 1 0; 
      1 0 1 0 0; 
      1 1 0 0 1; 
      0 1 1 0 0; 
      0 0 1 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{60} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2114  0.2150  0.2116  0.2138  0.0029 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{61} = [ 292:307 ]; 
mEC_label{61} = 'mEC 61: 4-ufd + 2-clique (v4) [16 graphs] Group II (graphs [292:307])'; 
mEC_core_motifs{61} = '{ [1  2  3  4], [4  5] }';
mEC_notes{61} = 'This class contains 3 graph(s) that are missing an attractor (# 293  299  305).';

% Representative graph is #292: 
% sA = sAcell{292};
sA = [0 1 0 1 0; 
      1 0 1 0 0; 
      1 1 0 0 0; 
      0 1 1 0 1; 
      0 0 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{61} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2133  0.2120  0.2115  0.2151  0.0009 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{62} = [ 308:309 ]; 
mEC_label{62} = 'mEC 62: 4-ufd + 3-clique (v1) [2 graphs] Group II (graphs [308:309])'; 
mEC_core_motifs{62} = '{ [1  2  3  4], [1  2  5] }';

% Representative graph is #308: 
% sA = sAcell{308};
sA = [0 1 0 1 1; 
      1 0 1 0 1; 
      1 1 0 0 0; 
      0 1 1 0 0; 
      1 1 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{62} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2152  0.2112  0.2148  0.2144  0.0044 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{63} = [ 310:311 ]; 
mEC_label{63} = 'mEC 63: 4-ufd + 3-clique (v2) [2 graphs] Group II (graphs [310:311])'; 
mEC_core_motifs{63} = '{ [1  2  3  4], [2  3  5] }';

% Representative graph is #310: 
% sA = sAcell{310};
sA = [0 1 0 1 0; 
      1 0 1 0 1; 
      1 1 0 0 1; 
      0 1 1 0 0; 
      0 1 1 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{63} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2149  0.2154  0.2144  0.2137  0.0045 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{64} = [ 312:314 ]; 
mEC_label{64} = 'mEC 64: 4-ufd + 3-cycle (v1) [3 graphs] Group II (graphs [312:314])'; 
mEC_core_motifs{64} = '{ [1  2  3  4], [3  4  5] }';
mEC_notes{64} = 'This class contains 1 graph(s) that are missing an attractor (# 314).';

% Representative graph is #312: 
% sA = sAcell{312};
sA = [0 1 0 1 0; 
      1 0 1 0 0; 
      1 1 0 0 1; 
      0 1 1 0 0; 
      0 0 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{64} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2148  0.2159  0.2117  0.2151  0.0044; 
               0.0030  0.0036  0.2355  0.2362  0.2365 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{65} = [ 315:317 ]; 
mEC_label{65} = 'mEC 65: 4-ufd + 3-cycle (v2) [3 graphs] Group II (graphs [315:317])'; 
mEC_core_motifs{65} = '{ [1  2  3  4], [1  4  5] }';

% Representative graph is #315: 
% sA = sAcell{315};
sA = [0 1 0 1 0; 
      1 0 1 0 0; 
      1 1 0 0 0; 
      0 1 1 0 1; 
      1 0 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{65} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2127  0.2132  0.2148  0.2147  0.0050; 
               0.2374  0.0028  0.0006  0.2359  0.2364 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{66} = [ 318 ]; 
mEC_label{66} = 'mEC 66: 4-ufd + fusion 3-cycle [1 graph] Group II (graph 318)'; 
mEC_core_motifs{66} = '{ [1  2  3  4], [1  2  3  5] }';

% Representative graph is #318: 
% sA = sAcell{318};
sA = [0 1 0 1 1; 
      1 0 1 0 1; 
      1 1 0 0 0; 
      0 1 1 0 0; 
      0 1 1 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{66} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2114  0.2131  0.2128  0.2152  0.0049; 
               0.1469  0.7923  0.1487  0.0014  0.1493 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{67} = [ 319:320 ]; 
mEC_label{67} = 'mEC 67: 4-ufd + 4-cycu (v1) [2 graphs] Group II (graphs [319:320])'; 
mEC_core_motifs{67} = '{ [1  2  3  4], [2  3  4  5] }';
mEC_notes{67} = 'This class contains 2 graph(s) that are missing an attractor (# 319  320).  This class contains 2 graph(s) that have parameter dependent core motifs (# 319  320).';

% Representative graph is #319: 
% sA = sAcell{319};
sA = [0 1 0 1 0; 
      1 0 1 0 1; 
      1 1 0 0 1; 
      0 1 1 0 0; 
      0 0 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{67} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2141  0.2154  0.2120  0.2123  0.0000 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{68} = [ 321 ]; 
mEC_label{68} = 'mEC 68: 4-ufd + 4-cycu (v2) [1 graph] Group II (graph 321)'; 
mEC_core_motifs{68} = '{ [1  2  3  4], [1  3  4  5] }';

% Representative graph is #321: 
% sA = sAcell{321};
sA = [0 1 0 1 0; 
      1 0 1 0 0; 
      1 1 0 0 1; 
      0 1 1 0 1; 
      1 0 1 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{68} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2133  0.2138  0.2147  0.2135  0.0006; 
               0.2304  0.0012  0.1202  0.2636  0.1207 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{69} = [ 322 ]; 
mEC_label{69} = 'mEC 69: 4-ufd + 4-cycu (v3) [1 graph] Group II (graph 322)'; 
mEC_core_motifs{69} = '{ [1  2  3  4], [1  3  4  5] }';
mEC_notes{69} = 'This class contains 1 graph(s) that are missing an attractor (# 322).  This class contains 1 graph that has parameter dependent core motifs (# 322).';

% Representative graph is #322: 
% sA = sAcell{322};
sA = [0 1 0 1 1; 
      1 0 1 0 0; 
      1 1 0 0 1; 
      0 1 1 0 0; 
      1 0 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{69} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2135  0.2138  0.2159  0.2141  0.0043 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{70} = [ 323 ]; 
mEC_label{70} = 'mEC 70: two 4-ufds (v1) [1 graph] Group II (graph 323)'; 
mEC_core_motifs{70} = '{ [1  2  3  4], [2  3  4  5] }';

% Representative graph is #323: 
% sA = sAcell{323};
sA = [0 1 0 1 0; 
      1 0 1 0 1; 
      1 1 0 0 1; 
      0 1 1 0 0; 
      0 1 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{70} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2147  0.2123  0.2120  0.2153  0.0001; 
               0.0044  0.2133  0.2139  0.2110  0.2146 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{71} = [ 324 ]; 
mEC_label{71} = 'mEC 71: two 4-ufds (v2) [1 graph] Group II (graph 324)'; 
mEC_core_motifs{71} = '{ [1  2  3  4], [2  3  4  5] }';

% Representative graph is #324: 
% sA = sAcell{324};
sA = [0 1 0 1 0; 
      1 0 1 0 1; 
      1 1 0 0 1; 
      0 1 1 0 0; 
      0 0 1 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{71} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2151  0.2153  0.2115  0.2145  0.0028; 
               0.0027  0.2121  0.2156  0.2157  0.2134 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{72} = [ 325 ]; 
mEC_label{72} = 'mEC 72: two 4-ufds (v3) [1 graph] Group II (graph 325)'; 
mEC_core_motifs{72} = '{ [1  2  3  4], [1  3  4  5] }';

% Representative graph is #325: 
% sA = sAcell{325};
sA = [0 1 0 1 1; 
      1 0 1 0 0; 
      1 1 0 0 1; 
      0 1 1 0 1; 
      1 0 1 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{72} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2146  0.2130  0.2144  0.2113  0.0038; 
               0.2155  0.0038  0.2128  0.2135  0.2143 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{73} = [ 326 ]; 
mEC_label{73} = 'mEC 73: two 4-ufds (v4) [1 graph] Group II (graph 326)'; 
mEC_core_motifs{73} = '{ [1  2  3  4], [1  2  4  5] }';

% Representative graph is #326: 
% sA = sAcell{326};
sA = [0 1 0 1 0; 
      1 0 1 0 1; 
      1 1 0 0 0; 
      0 1 1 0 1; 
      1 1 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{73} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2159  0.2157  0.2159  0.2113  0.0010; 
               0.2156  0.2118  0.0004  0.2125  0.2143 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{74} = [ 327 ]; 
mEC_label{74} = 'mEC 74: two 4-ufds (v5) [1 graph] Group II (graph 327)'; 
mEC_core_motifs{74} = '{ [1  2  3  4], [1  2  3  5] }';

% Representative graph is #327: 
% sA = sAcell{327};
sA = [0 1 0 1 1; 
      1 0 1 0 0; 
      1 1 0 0 0; 
      0 1 1 0 0; 
      0 1 1 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{74} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2130  0.2123  0.2121  0.2147  0.0044; 
               0.2126  0.2138  0.2152  0.0031  0.2140 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{75} = [ 328 ]; 
mEC_label{75} = 'mEC 75: two 4-ufds (v6) [1 graph] Group II (graph 328)'; 
mEC_core_motifs{75} = '{ [1  2  3  4], [1  3  4  5] }';
mEC_notes{75} = 'This class contains 1 graph(s) that are missing an attractor (# 328).';

% Representative graph is #328: 
% sA = sAcell{328};
sA = [0 1 0 1 1; 
      1 0 1 0 0; 
      1 1 0 0 1; 
      0 1 1 0 1; 
      0 0 1 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{75} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2129  0.2136  0.2159  0.2158  0.0041 ]; 


% _______________________________________________________________
% GROUP III: 28 "unstable core" classes whose only unstable core motifs are 3-cycle and fusion 3-cycle 
% [Total: 725 graphs, 69% of all "unstable core" graphs, 7.55% of all n=5 graphs]
% ** None of these classes split into smaller attractor equivalence classes

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{76} = [ 329:598 ]; 
mEC_label{76} = 'mEC 76: 3-cycle [270 graphs] Group III (graphs [329:598])'; 
mEC_core_motifs{76} = '{ [1  2  3] }';

% Representative graph is #329: 
% sA = sAcell{329};
sA = [0 0 1 0 1; 
      1 0 0 0 0; 
      0 1 0 0 0; 
      0 0 0 0 0; 
      0 0 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{76} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2388  0.2364  0.2385  0.0006  0.0028 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{77} = [ 599:660 ]; 
mEC_label{77} = 'mEC 77: 3-cycle + sink [62 graphs] Group III (graphs [599:660])'; 
mEC_core_motifs{77} = '{ [1  2  3], [4] }';

% Representative graph is #599: 
% sA = sAcell{599};
sA = [0 0 1 0 1; 
      1 0 0 0 0; 
      0 1 0 0 0; 
      0 0 0 0 0; 
      0 0 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{77} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2393  0.2360  0.2357  0.0022  0.0023 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{78} = [ 661:664 ]; 
mEC_label{78} = 'mEC 78: 3-cycle + two sinks [4 graphs] Group III (graphs [661:664])'; 
mEC_core_motifs{78} = '{ [1  2  3], [4], [5] }';

% Representative graph is #661: 
% sA = sAcell{661};
sA = [0 0 1 0 0; 
      1 0 0 0 0; 
      0 1 0 0 0; 
      0 0 0 0 0; 
      0 0 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{78} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2360  0.2381  0.2373  0.0003  0.0007 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{79} = [ 665:716 ]; 
mEC_label{79} = 'mEC 79: 3-cycle + 2-clique (disjoint) [52 graphs] Group III (graphs [665:716])'; 
mEC_core_motifs{79} = '{ [1  2  3], [4  5] }';

% Representative graph is #665: 
% sA = sAcell{665};
sA = [0 0 1 0 0; 
      1 0 0 0 0; 
      0 1 0 0 0; 
      0 0 0 0 1; 
      0 0 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{79} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2400  0.2385  0.2385  0.0019  0.0001 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{80} = [ 717:864 ]; 
mEC_label{80} = 'mEC 80: 3-cycle + 2-clique (overlap) [148 graphs] Group III (graphs [717:864])'; 
mEC_core_motifs{80} = '{ [1  2  3], [3  4] }';

% Representative graph is #717: 
% sA = sAcell{717};
sA = [0 0 1 0 1; 
      1 0 0 0 0; 
      0 1 0 1 0; 
      0 0 1 0 0; 
      0 0 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{80} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2383  0.2357  0.2378  0.0039  0.0007 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{81} = [ 865:878 ]; 
mEC_label{81} = 'mEC 81: 3-cycle + 2-clique + sink [14 graphs] Group III (graphs [865:878])'; 
mEC_core_motifs{81} = '{ [1  2  3], [3  4], [5] }';

% Representative graph is #865: 
% sA = sAcell{865};
sA = [0 0 1 0 0; 
      1 0 0 0 0; 
      0 1 0 1 0; 
      0 0 1 0 0; 
      0 0 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{81} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2386  0.2380  0.2367  0.0005  0.0042 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{82} = [ 879:881 ]; 
mEC_label{82} = 'mEC 82: 3-cycle + two 2-cliques (v1) [3 graphs] Group III (graphs [879:881])'; 
mEC_core_motifs{82} = '{ [1  2  3], [3  4], [3  5] }';

% Representative graph is #879: 
% sA = sAcell{879};
sA = [0 0 1 0 0; 
      1 0 0 0 0; 
      0 1 0 1 1; 
      0 0 1 0 0; 
      0 0 1 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{82} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2399  0.2354  0.2389  0.0023  0.0030 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{83} = [ 882:895 ]; 
mEC_label{83} = 'mEC 83: 3-cycle + two 2-cliques (v2) [14 graphs] Group III (graphs [882:895])'; 
mEC_core_motifs{83} = '{ [1  2  3], [1  5], [3  4] }';

% Representative graph is #882: 
% sA = sAcell{882};
sA = [0 0 1 0 1; 
      1 0 0 0 0; 
      0 1 0 1 0; 
      0 0 1 0 0; 
      1 0 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{83} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2378  0.2392  0.2391  0.0047  0.0040 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{84} = [ 896:907 ]; 
mEC_label{84} = 'mEC 84: 3-cycle + two 2-cliques (v3) [12 graphs] Group III (graphs [896:907])'; 
mEC_core_motifs{84} = '{ [1  2  3], [3  4], [4  5] }';

% Representative graph is #896: 
% sA = sAcell{896};
sA = [0 0 1 0 0; 
      1 0 0 0 0; 
      0 1 0 1 0; 
      0 0 1 0 1; 
      0 0 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{84} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2373  0.2376  0.2362  0.0003  0.0039 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{85} = [ 908:909 ]; 
mEC_label{85} = 'mEC 85: 3-cycle + three 2-cliques [2 graphs] Group III (graphs [908:909])'; 
mEC_core_motifs{85} = '{ [1  2  3], [1  5], [3  4], [4  5] }';

% Representative graph is #908: 
% sA = sAcell{908};
sA = [0 0 1 0 1; 
      1 0 0 0 0; 
      0 1 0 1 0; 
      0 0 1 0 1; 
      1 0 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{85} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2382  0.2362  0.2373  0.0050  0.0017 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{86} = [ 910:916 ]; 
mEC_label{86} = 'mEC 86: 3-cycle + 3-clique [7 graphs] Group III (graphs [910:916])'; 
mEC_core_motifs{86} = '{ [1  2  3], [3  4  5] }';

% Representative graph is #910: 
% sA = sAcell{910};
sA = [0 0 1 0 0; 
      1 0 0 0 0; 
      0 1 0 1 1; 
      0 0 1 0 1; 
      0 0 1 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{86} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2375  0.2369  0.2372  0.0050  0.0043 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{87} = [ 917:920 ]; 
mEC_label{87} = 'mEC 87: two 3-cycles (v1) [4 graphs] Group III (graphs [917:920])'; 
mEC_core_motifs{87} = '{ [1  2  3], [3  4  5] }';

% Representative graph is #917: 
% sA = sAcell{917};
sA = [0 0 1 0 0; 
      1 0 0 0 0; 
      0 1 0 0 1; 
      0 0 1 0 0; 
      0 0 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{87} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2356  0.2388  0.2397  0.0014  0.0035; 
               0.0041  0.0047  0.2376  0.2356  0.2379 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{88} = [ 921:961 ]; 
mEC_label{88} = 'mEC 88: two 3-cycles (v2, "butterfly") [41 graphs] Group III (graphs [921:961])'; 
mEC_core_motifs{88} = '{ [1  2  3], [2  3  4] }';

% Representative graph is #921: 
% sA = sAcell{921};
sA = [0 0 1 0 1; 
      1 0 0 1 0; 
      0 1 0 0 0; 
      0 0 1 0 0; 
      0 0 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{88} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2387  0.2377  0.2394  0.0004  0.0001; 
               0.0037  0.2387  0.2356  0.2387  0.0015 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{89} = [ 962:966 ]; 
mEC_label{89} = 'mEC 89: two 3-cycles + sink [5 graphs] Group III (graphs [962:966])'; 
mEC_core_motifs{89} = '{ [1  2  3], [2  3  4], [5] }';

% Representative graph is #962: 
% sA = sAcell{962};
sA = [0 0 1 0 0; 
      1 0 0 1 0; 
      0 1 0 0 0; 
      0 0 1 0 0; 
      0 0 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{89} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2362  0.2382  0.2362  0.0019  0.0044; 
               0.0014  0.2354  0.2367  0.2359  0.0004 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{90} = [ 967:972 ]; 
mEC_label{90} = 'mEC 90: two 3-cycles + 2-clique (v1) [6 graphs] Group III (graphs [967:972])'; 
mEC_core_motifs{90} = '{ [1  2  3], [2  3  4], [4  5] }';

% Representative graph is #967: 
% sA = sAcell{967};
sA = [0 0 1 0 0; 
      1 0 0 1 0; 
      0 1 0 0 0; 
      0 0 1 0 1; 
      0 0 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{90} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2368  0.2402  0.2396  0.0031  0.0044; 
               0.0015  0.2359  0.2401  0.2394  0.0008 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{91} = [ 973:975 ]; 
mEC_label{91} = 'mEC 91: two 3-cycles + 2-clique (v2) [3 graphs] Group III (graphs [973:975])'; 
mEC_core_motifs{91} = '{ [1  2  3], [2  3  4], [2  5] }';

% Representative graph is #973: 
% sA = sAcell{973};
sA = [0 0 1 0 0; 
      1 0 0 1 1; 
      0 1 0 0 0; 
      0 0 1 0 0; 
      0 1 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{91} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2388  0.2361  0.2357  0.0032  0.0028; 
               0.0004  0.2361  0.2387  0.2382  0.0033 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{92} = [ 976:977 ]; 
mEC_label{92} = 'mEC 92: two 3-cycles + 2-clique (v3) [2 graphs] Group III (graphs [976:977])'; 
mEC_core_motifs{92} = '{ [1  2  3], [2  3  4], [3  5] }';

% Representative graph is #976: 
% sA = sAcell{976};
sA = [0 0 1 0 0; 
      1 0 0 1 0; 
      0 1 0 0 1; 
      0 0 1 0 0; 
      0 0 1 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{92} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2356  0.2370  0.2393  0.0000  0.0003; 
               0.0037  0.2385  0.2383  0.2365  0.0014 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{93} = [ 978:979 ]; 
mEC_label{93} = 'mEC 93: two 3-cycles + two 2-cliques [2 graphs] Group III (graphs [978:979])'; 
mEC_core_motifs{93} = '{ [1  2  3], [1  5], [2  3  4], [4  5] }';

% Representative graph is #978: 
% sA = sAcell{978};
sA = [0 0 1 0 1; 
      1 0 0 1 0; 
      0 1 0 0 0; 
      0 0 1 0 1; 
      1 0 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{93} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2379  0.2367  0.2363  0.0011  0.0022; 
               0.0039  0.2391  0.2381  0.2384  0.0029 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{94} = [ 980 ]; 
mEC_label{94} = 'mEC 94: three 3-cycles (v1) [1 graph] Group III (graph 980)'; 
mEC_core_motifs{94} = '{ [1  2  3], [2  3  4], [2  3  5] }';
mEC_notes{94} = 'The attractors are quasiperiodic for eps = 0.25, delta = 0.5.';

% Representative graph is #980: 
% sA = sAcell{980};
sA = [0 0 1 0 0; 
      1 0 0 1 1; 
      0 1 0 0 0; 
      0 0 1 0 0; 
      0 0 1 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{94} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2386  0.2375  0.2354  0.0022  0.0023; 
               0.0039  0.2367  0.2356  0.2388  0.0032; 
               0.0049  0.2391  0.2398  0.0030  0.2376 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{95} = [ 981 ]; 
mEC_label{95} = 'mEC 95: three 3-cycles (v2) [1 graph] Group III (graph 981)'; 
mEC_core_motifs{95} = '{ [1  2  3], [2  3  4], [3  4  5] }';

% Representative graph is #981: 
% sA = sAcell{981};
sA = [0 0 1 0 0; 
      1 0 0 1 0; 
      0 1 0 0 1; 
      0 0 1 0 0; 
      0 0 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{95} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2367  0.2355  0.2396  0.0012  0.0049; 
               0.0026  0.2378  0.2394  0.2354  0.0013; 
               0.0002  0.0045  0.2387  0.2361  0.2378 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{96} = [ 982 ]; 
mEC_label{96} = 'mEC 96: four 3-cycles [1 graph] Group III (graph 982)'; 
mEC_core_motifs{96} = '{ [1  2  3], [1  3  5], [2  3  4], [3  4  5] }';
mEC_notes{96} = 'This is baby chaos for eps = 0.25, delta = 0.5.';

% Representative graph is #982: 
% sA = sAcell{982};
sA = [0 0 1 0 0; 
      1 0 0 1 0; 
      0 1 0 0 1; 
      0 0 1 0 0; 
      1 0 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{96} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.2357  0.2402  0.2374  0.0038  0.0046; 
               0.2399  0.0033  0.2358  0.0026  0.2377; 
               0.0050  0.2391  0.2382  0.2392  0.0027; 
               0.0045  0.0025  0.2381  0.2392  0.2370 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{97} = [ 983:1031 ]; 
mEC_label{97} = 'mEC 97: fusion 3-cycle [49 graphs] Group III (graphs [983:1031])'; 
mEC_core_motifs{97} = '{ [1  2  3  4] }';

% Representative graph is #983: 
% sA = sAcell{983};
sA = [0 0 1 1 1; 
      1 0 0 1 0; 
      0 1 0 1 0; 
      1 1 1 0 0; 
      0 0 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{97} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.1476  0.1457  0.1487  0.7920  0.0046 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{98} = [ 1032:1037 ]; 
mEC_label{98} = 'mEC 98: fusion 3-cycle + sink [6 graphs] Group III (graphs [1032:1037])'; 
mEC_core_motifs{98} = '{ [1  2  3  4], [5] }';

% Representative graph is #1032: 
% sA = sAcell{1032};
sA = [0 0 1 1 0; 
      1 0 0 1 0; 
      0 1 0 1 0; 
      1 1 1 0 0; 
      0 0 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{98} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.1447  0.1458  0.1460  0.7909  0.0031 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{99} = [ 1038:1047 ]; 
mEC_label{99} = 'mEC 99: fusion 3-cycle + 2-clique (v1) [10 graphs] Group III (graphs [1038:1047])'; 
mEC_core_motifs{99} = '{ [1  2  3  4], [1  5] }';

% Representative graph is #1038: 
% sA = sAcell{1038};
sA = [0 0 1 1 1; 
      1 0 0 1 0; 
      0 1 0 1 0; 
      1 1 1 0 0; 
      1 0 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{99} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
               0.1473  0.1489  0.1474  0.7903  0.0032 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{100} = [ 1048:1049 ]; 
mEC_label{100} = 'mEC 100: fusion 3-cycle + 2-clique (v2) [2 graphs] Group III (graphs [1048:1049])'; 
mEC_core_motifs{100} = '{ [1  2  3  4], [4  5] }';

% Representative graph is #1048: 
% sA = sAcell{1048};
sA = [0 0 1 1 0; 
      1 0 0 1 0; 
      0 1 0 1 0; 
      1 1 1 0 1; 
      0 0 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{100} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
                0.1457  0.1458  0.1452  0.7886  0.0042 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{101} = [ 1050:1051 ]; 
mEC_label{101} = 'mEC 101: fusion 3-cycle + 3-clique [2 graphs] Group III (graphs [1050:1051])'; 
mEC_core_motifs{101} = '{ [1  2  3  4], [3  4  5] }';

% Representative graph is #1050: 
% sA = sAcell{1050};
sA = [0 0 1 1 0; 
      1 0 0 1 0; 
      0 1 0 1 1; 
      1 1 1 0 1; 
      0 0 1 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{101} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
                0.1458  0.1482  0.1469  0.7920  0.0016 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{102} = [ 1052 ]; 
mEC_label{102} = 'mEC 102: two fusion 3-cycles (v1) [1 graph] Group III (graph 1052)'; 
mEC_core_motifs{102} = '{ [1  2  3  4], [1  2  3  5] }';

% Representative graph is #1052: 
% sA = sAcell{1052};
sA = [0 0 1 1 1; 
      1 0 0 1 1; 
      0 1 0 1 1; 
      1 1 1 0 0; 
      1 1 1 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{102} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
                0.1490  0.1459  0.1484  0.7879  0.0011; 
                0.1466  0.1455  0.1483  0.0012  0.7920 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{103} = [ 1053 ]; 
mEC_label{103} = 'mEC 103: two fusion 3-cycles (v2) [1 graph] Group III (graph 1053)'; 
mEC_core_motifs{103} = '{ [1  2  3  4], [1  2  4  5] }';

% Representative graph is #1053: 
% sA = sAcell{1053};
sA = [0 0 1 1 1; 
      1 0 0 1 0; 
      0 1 0 1 0; 
      1 1 1 0 1; 
      0 1 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{103} = [ 0.0004  0.0007  0.0003  0.0009  0.0006; 
                0.1452  0.1488  0.1483  0.7914  0.0023; 
                0.1486  0.1473  0.0041  0.7878  0.1487 ]; 


% _______________________________________________________________
% GROUP IV: 52 "stable core" classes that have no unstable core motifs
% [Total: 8555 graphs, 89% of all n=5 graphs]
% ** None of these classes split into smaller attractor equivalence classes

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{104} = [ 1054 ]; 
mEC_label{104} = 'mEC 104: 5-clique [1 graph] Group IV (graph 1054)'; 
mEC_core_motifs{104} = '{ [1  2  3  4  5] }';

% Representative graph is #1054: 
% sA = sAcell{1054};
sA = [0 1 1 1 1; 
      1 0 1 1 1; 
      1 1 0 1 1; 
      1 1 1 0 1; 
      1 1 1 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{104} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{105} = [ 1055:1074 ]; 
mEC_label{105} = 'mEC 105: 4-clique [20 graphs] Group IV (graphs [1055:1074])'; 
mEC_core_motifs{105} = '{ [1  2  3  4] }';

% Representative graph is #1055: 
% sA = sAcell{1055};
sA = [0 1 1 1 1; 
      1 0 1 1 0; 
      1 1 0 1 0; 
      1 1 1 0 0; 
      0 0 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{105} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{106} = [ 1075:1078 ]; 
mEC_label{106} = 'mEC 106: 4-clique + sink [4 graphs] Group IV (graphs [1075:1078])'; 
mEC_core_motifs{106} = '{ [1  2  3  4], [5] }';

% Representative graph is #1075: 
% sA = sAcell{1075};
sA = [0 1 1 1 0; 
      1 0 1 1 0; 
      1 1 0 1 0; 
      1 1 1 0 0; 
      0 0 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{106} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{107} = [ 1079:1081 ]; 
mEC_label{107} = 'mEC 107: 4-clique + 2-clique [3 graphs] Group IV (graphs [1079:1081])'; 
mEC_core_motifs{107} = '{ [1  2  3  4], [4  5] }';

% Representative graph is #1079: 
% sA = sAcell{1079};
sA = [0 1 1 1 0; 
      1 0 1 1 0; 
      1 1 0 1 0; 
      1 1 1 0 1; 
      0 0 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{107} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{108} = [ 1082:1083 ]; 
mEC_label{108} = 'mEC 108: 4-clique + 3-clique [2 graphs] Group IV (graphs [1082:1083])'; 
mEC_core_motifs{108} = '{ [1  2  3  4], [3  4  5] }';

% Representative graph is #1082: 
% sA = sAcell{1082};
sA = [0 1 1 1 0; 
      1 0 1 1 0; 
      1 1 0 1 1; 
      1 1 1 0 1; 
      0 0 1 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{108} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{109} = [ 1084 ]; 
mEC_label{109} = 'mEC 109: two 4-cliques [1 graph] Group IV (graph 1084)'; 
mEC_core_motifs{109} = '{ [1  2  3  4], [2  3  4  5] }';

% Representative graph is #1084: 
% sA = sAcell{1084};
sA = [0 1 1 1 0; 
      1 0 1 1 1; 
      1 1 0 1 1; 
      1 1 1 0 1; 
      0 1 1 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{109} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{110} = [ 1085:1652 ]; 
mEC_label{110} = 'mEC 110: 3-clique [568 graphs] Group IV (graphs [1085:1652])'; 
mEC_core_motifs{110} = '{ [1  2  3] }';

% Representative graph is #1085: 
% sA = sAcell{1085};
sA = [0 1 1 0 1; 
      1 0 1 0 0; 
      1 1 0 0 0; 
      0 0 0 0 0; 
      0 0 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{110} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{111} = [ 1653:1779 ]; 
mEC_label{111} = 'mEC 111: 3-clique + sink [127 graphs] Group IV (graphs [1653:1779])'; 
mEC_core_motifs{111} = '{ [1  2  3], [4] }';

% Representative graph is #1653: 
% sA = sAcell{1653};
sA = [0 1 1 0 0; 
      1 0 1 0 0; 
      1 1 0 0 0; 
      0 0 0 0 1; 
      0 0 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{111} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{112} = [ 1780:1788 ]; 
mEC_label{112} = 'mEC 112: 3-clique + two sinks [9 graphs] Group IV (graphs [1780:1788])'; 
mEC_core_motifs{112} = '{ [1  2  3], [4], [5] }';

% Representative graph is #1780: 
% sA = sAcell{1780};
sA = [0 1 1 0 0; 
      1 0 1 0 0; 
      1 1 0 0 0; 
      0 0 0 0 0; 
      0 0 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{112} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{113} = [ 1789:1894 ]; 
mEC_label{113} = 'mEC 113: 3-clique + 2-clique (disjoint) [106 graphs] Group IV (graphs [1789:1894])'; 
mEC_core_motifs{113} = '{ [1  2  3], [4  5] }';

% Representative graph is #1789: 
% sA = sAcell{1789};
sA = [0 1 1 0 0; 
      1 0 1 0 0; 
      1 1 0 0 0; 
      0 0 0 0 1; 
      0 0 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{113} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{114} = [ 1895:2096 ]; 
mEC_label{114} = 'mEC 114: 3-clique + 2-clique (overlap) [202 graphs] Group IV (graphs [1895:2096])'; 
mEC_core_motifs{114} = '{ [1  2  3], [3  4] }';

% Representative graph is #1895: 
% sA = sAcell{1895};
sA = [0 1 1 0 0; 
      1 0 1 0 0; 
      1 1 0 1 0; 
      0 0 1 0 1; 
      0 0 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{114} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{115} = [ 2097:2115 ]; 
mEC_label{115} = 'mEC 115: 3-clique + 2-clique + sink [19 graphs] Group IV (graphs [2097:2115])'; 
mEC_core_motifs{115} = '{ [1  2  3], [3  4], [5] }';

% Representative graph is #2097: 
% sA = sAcell{2097};
sA = [0 1 1 0 0; 
      1 0 1 0 0; 
      1 1 0 1 0; 
      0 0 1 0 0; 
      0 0 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{115} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{116} = [ 2116:2119 ]; 
mEC_label{116} = 'mEC 116: 3-clique + two 2-cliques (v1) [4 graphs] Group IV (graphs [2116:2119])'; 
mEC_core_motifs{116} = '{ [1  2  3], [3  4], [3  5] }';

% Representative graph is #2116: 
% sA = sAcell{2116};
sA = [0 1 1 0 0; 
      1 0 1 0 0; 
      1 1 0 1 1; 
      0 0 1 0 0; 
      0 0 1 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{116} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{117} = [ 2120:2139 ]; 
mEC_label{117} = 'mEC 117: 3-clique + two 2-cliques (v2) [20 graphs] Group IV (graphs [2120:2139])'; 
mEC_core_motifs{117} = '{ [1  2  3], [3  4], [4  5] }';

% Representative graph is #2120: 
% sA = sAcell{2120};
sA = [0 1 1 0 0; 
      1 0 1 0 0; 
      1 1 0 1 0; 
      0 0 1 0 1; 
      0 0 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{117} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{118} = [ 2140:2151 ]; 
mEC_label{118} = 'mEC 118: 3-clique + two 2-cliques (v3) [12 graphs] Group IV (graphs [2140:2151])'; 
mEC_core_motifs{118} = '{ [1  2  3], [1  5], [3  4] }';

% Representative graph is #2140: 
% sA = sAcell{2140};
sA = [0 1 1 0 1; 
      1 0 1 0 0; 
      1 1 0 1 0; 
      0 0 1 0 0; 
      1 0 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{118} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{119} = [ 2152:2154 ]; 
mEC_label{119} = 'mEC 119: 3-clique + three 2-cliques [3 graphs] Group IV (graphs [2152:2154])'; 
mEC_core_motifs{119} = '{ [1  2  3], [1  5], [3  4], [4  5] }';

% Representative graph is #2152: 
% sA = sAcell{2152};
sA = [0 1 1 0 1; 
      1 0 1 0 0; 
      1 1 0 1 0; 
      0 0 1 0 1; 
      1 0 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{119} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{120} = [ 2155:2166 ]; 
mEC_label{120} = 'mEC 120: two 3-cliques (v1) [12 graphs] Group IV (graphs [2155:2166])'; 
mEC_core_motifs{120} = '{ [1  2  3], [3  4  5] }';

% Representative graph is #2155: 
% sA = sAcell{2155};
sA = [0 1 1 0 0; 
      1 0 1 0 0; 
      1 1 0 1 1; 
      0 0 1 0 1; 
      0 0 1 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{120} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{121} = [ 2167:2221 ]; 
mEC_label{121} = 'mEC 121: two 3-cliques (v2) [55 graphs] Group IV (graphs [2167:2221])'; 
mEC_core_motifs{121} = '{ [1  2  3], [2  3  4] }';

% Representative graph is #2167: 
% sA = sAcell{2167};
sA = [0 1 1 0 1; 
      1 0 1 1 0; 
      1 1 0 1 0; 
      0 1 1 0 0; 
      0 0 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{121} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{122} = [ 2222:2228 ]; 
mEC_label{122} = 'mEC 122: two 3-clique + sink [7 graphs] Group IV (graphs [2222:2228])'; 
mEC_core_motifs{122} = '{ [1  2  3], [2  3  4], [5] }';

% Representative graph is #2222: 
% sA = sAcell{2222};
sA = [0 1 1 0 0; 
      1 0 1 1 0; 
      1 1 0 1 0; 
      0 1 1 0 0; 
      0 0 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{122} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{123} = [ 2229:2232 ]; 
mEC_label{123} = 'mEC 123: two 3-cliques + 2-clique (v1) [4 graphs] Group IV (graphs [2229:2232])'; 
mEC_core_motifs{123} = '{ [1  2  3], [2  3  4], [3  5] }';

% Representative graph is #2229: 
% sA = sAcell{2229};
sA = [0 1 1 0 0; 
      1 0 1 1 0; 
      1 1 0 1 1; 
      0 1 1 0 0; 
      0 0 1 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{123} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{124} = [ 2233:2238 ]; 
mEC_label{124} = 'mEC 124: two 3-cliques + 2-clique (v2) [6 graphs] Group IV (graphs [2233:2238])'; 
mEC_core_motifs{124} = '{ [1  2  3], [2  3  4], [4  5] }';

% Representative graph is #2233: 
% sA = sAcell{2233};
sA = [0 1 1 0 0; 
      1 0 1 1 0; 
      1 1 0 1 0; 
      0 1 1 0 1; 
      0 0 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{124} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{125} = [ 2239:2240 ]; 
mEC_label{125} = 'mEC 125: two 3-cliques + two 2-cliques [2 graphs] Group IV (graphs [2239:2240])'; 
mEC_core_motifs{125} = '{ [1  2  3], [1  5], [2  3  4], [4  5] }';

% Representative graph is #2239: 
% sA = sAcell{2239};
sA = [0 1 1 0 1; 
      1 0 1 1 0; 
      1 1 0 1 0; 
      0 1 1 0 1; 
      1 0 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{125} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{126} = [ 2241:2242 ]; 
mEC_label{126} = 'mEC 126: three 3-cliques (v1) [2 graphs] Group IV (graphs [2241:2242])'; 
mEC_core_motifs{126} = '{ [1  2  3], [2  3  4], [3  4  5] }';

% Representative graph is #2241: 
% sA = sAcell{2241};
sA = [0 1 1 0 0; 
      1 0 1 1 0; 
      1 1 0 1 1; 
      0 1 1 0 1; 
      0 0 1 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{126} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{127} = [ 2243 ]; 
mEC_label{127} = 'mEC 127: three 3-cliques (v2) [1 graph] Group IV (graph 2243)'; 
mEC_core_motifs{127} = '{ [1  2  3], [2  3  4], [2  3  5] }';

% Representative graph is #2243: 
% sA = sAcell{2243};
sA = [0 1 1 0 0; 
      1 0 1 1 1; 
      1 1 0 1 1; 
      0 1 1 0 0; 
      0 1 1 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{127} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{128} = [ 2244 ]; 
mEC_label{128} = 'mEC 128: four 3-cliques [1 graph] Group IV (graph 2244)'; 
mEC_core_motifs{128} = '{ [1  2  3], [1  3  5], [2  3  4], [3  4  5] }';

% Representative graph is #2244: 
% sA = sAcell{2244};
sA = [0 1 1 0 1; 
      1 0 1 1 0; 
      1 1 0 1 1; 
      0 1 1 0 1; 
      1 0 1 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{128} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{129} = [ 2245:5031 ]; 
mEC_label{129} = 'mEC 129: 2-clique [2787 graphs] Group IV (graphs [2245:5031])'; 
mEC_core_motifs{129} = '{ [1  2] }';

% Representative graph is #2245: 
% sA = sAcell{2245};
sA = [0 1 0 0 1; 
      1 0 0 0 0; 
      0 0 0 0 0; 
      0 0 1 0 0; 
      0 0 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{129} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{130} = [ 5032:6055 ]; 
mEC_label{130} = 'mEC 130: 2-clique + sink [1024 graphs] Group IV (graphs [5032:6055])'; 
mEC_core_motifs{130} = '{ [1  2], [3] }';

% Representative graph is #5032: 
% sA = sAcell{5032};
sA = [0 1 0 0 0; 
      1 0 0 0 0; 
      0 0 0 1 0; 
      0 0 0 0 1; 
      0 0 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{130} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{131} = [ 6056:6161 ]; 
mEC_label{131} = 'mEC 131: 2-clique + two sinks [106 graphs] Group IV (graphs [6056:6161])'; 
mEC_core_motifs{131} = '{ [1  2], [3], [4] }';

% Representative graph is #6056: 
% sA = sAcell{6056};
sA = [0 1 0 0 0; 
      1 0 0 0 0; 
      0 0 0 0 0; 
      0 0 0 0 1; 
      0 0 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{131} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{132} = [ 6162:6167 ]; 
mEC_label{132} = 'mEC 132: 2-clique + three sinks [6 graphs] Group IV (graphs [6162:6167])'; 
mEC_core_motifs{132} = '{ [1  2], [3], [4], [5] }';

% Representative graph is #6162: 
% sA = sAcell{6162};
sA = [0 1 0 0 0; 
      1 0 0 0 0; 
      0 0 0 0 0; 
      0 0 0 0 0; 
      0 0 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{132} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{133} = [ 6168:7046 ]; 
mEC_label{133} = 'mEC 133: two 2-cliques (disjoint) [879 graphs] Group IV (graphs [6168:7046])'; 
mEC_core_motifs{133} = '{ [1  2], [3  4] }';

% Representative graph is #6168: 
% sA = sAcell{6168};
sA = [0 1 0 0 1; 
      1 0 0 0 0; 
      0 0 0 1 0; 
      0 0 1 0 0; 
      0 0 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{133} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{134} = [ 7047:7909 ]; 
mEC_label{134} = 'mEC 134: two 2-cliques (overlap) [863 graphs] Group IV (graphs [7047:7909])'; 
mEC_core_motifs{134} = '{ [1  2], [2  3] }';

% Representative graph is #7047: 
% sA = sAcell{7047};
sA = [0 1 0 0 1; 
      1 0 1 0 0; 
      0 1 0 0 0; 
      0 0 0 0 0; 
      0 0 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{134} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{135} = [ 7910:7994 ]; 
mEC_label{135} = 'mEC 135: two 2-cliques (disjoint) + sink [85 graphs] Group IV (graphs [7910:7994])'; 
mEC_core_motifs{135} = '{ [1  2], [3  4], [5] }';

% Representative graph is #7910: 
% sA = sAcell{7910};
sA = [0 1 0 0 0; 
      1 0 0 0 0; 
      0 0 0 1 0; 
      0 0 1 0 0; 
      0 0 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{135} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{136} = [ 7995:8175 ]; 
mEC_label{136} = 'mEC 136: two 2-cliques (overlap) + sink [181 graphs] Group IV (graphs [7995:8175])'; 
mEC_core_motifs{136} = '{ [1  2], [2  3], [4] }';

% Representative graph is #7995: 
% sA = sAcell{7995};
sA = [0 1 0 0 1; 
      1 0 1 0 0; 
      0 1 0 0 0; 
      0 0 0 0 0; 
      0 0 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{136} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{137} = [ 8176:8186 ]; 
mEC_label{137} = 'mEC 137: two 2-cliques (overlap) + two sinks [11 graphs] Group IV (graphs [8176:8186])'; 
mEC_core_motifs{137} = '{ [1  2], [2  3], [4], [5] }';

% Representative graph is #8176: 
% sA = sAcell{8176};
sA = [0 1 0 0 0; 
      1 0 1 0 0; 
      0 1 0 0 0; 
      0 0 0 0 0; 
      0 0 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{137} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{138} = [ 8187:8338 ]; 
mEC_label{138} = 'mEC 138: three 2-cliques (v1) [152 graphs] Group IV (graphs [8187:8338])'; 
mEC_core_motifs{138} = '{ [1  2], [2  3], [4  5] }';

% Representative graph is #8187: 
% sA = sAcell{8187};
sA = [0 1 0 0 0; 
      1 0 1 0 0; 
      0 1 0 0 0; 
      0 0 0 0 1; 
      0 0 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{138} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{139} = [ 8339:8484 ]; 
mEC_label{139} = 'mEC 139: three 2-cliques (v2) [146 graphs] Group IV (graphs [8339:8484])'; 
mEC_core_motifs{139} = '{ [1  2], [2  3], [3  4] }';

% Representative graph is #8339: 
% sA = sAcell{8339};
sA = [0 1 0 0 1; 
      1 0 1 0 0; 
      0 1 0 1 0; 
      0 0 1 0 0; 
      0 0 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{139} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{140} = [ 8485:8516 ]; 
mEC_label{140} = 'mEC 140: three 2-cliques (v3) [32 graphs] Group IV (graphs [8485:8516])'; 
mEC_core_motifs{140} = '{ [1  2], [2  3], [2  4] }';

% Representative graph is #8485: 
% sA = sAcell{8485};
sA = [0 1 0 0 1; 
      1 0 1 1 0; 
      0 1 0 0 0; 
      0 1 0 0 0; 
      0 0 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{140} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{141} = [ 8517:8530 ]; 
mEC_label{141} = 'mEC 141: three 2-cliques + sink (v1) [14 graphs] Group IV (graphs [8517:8530])'; 
mEC_core_motifs{141} = '{ [1  2], [2  3], [3  4], [5] }';

% Representative graph is #8517: 
% sA = sAcell{8517};
sA = [0 1 0 0 0; 
      1 0 1 0 0; 
      0 1 0 1 0; 
      0 0 1 0 0; 
      0 0 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{141} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{142} = [ 8531:8535 ]; 
mEC_label{142} = 'mEC 142: three 2-cliques + sink (v2) [5 graphs] Group IV (graphs [8531:8535])'; 
mEC_core_motifs{142} = '{ [1  2], [2  3], [2  4], [5] }';

% Representative graph is #8531: 
% sA = sAcell{8531};
sA = [0 1 0 0 0; 
      1 0 1 1 0; 
      0 1 0 0 0; 
      0 1 0 0 0; 
      0 0 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{142} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{143} = [ 8536:8551 ]; 
mEC_label{143} = 'mEC 143: four 2-cliques (v1) [16 graphs] Group IV (graphs [8536:8551])'; 
mEC_core_motifs{143} = '{ [1  2], [2  3], [3  4], [4  5] }';

% Representative graph is #8536: 
% sA = sAcell{8536};
sA = [0 1 0 0 0; 
      1 0 1 0 0; 
      0 1 0 1 0; 
      0 0 1 0 1; 
      0 0 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{143} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{144} = [ 8552:8557 ]; 
mEC_label{144} = 'mEC 144: four 2-cliques (v2) [6 graphs] Group IV (graphs [8552:8557])'; 
mEC_core_motifs{144} = '{ [1  2], [2  3], [2  4], [4  5] }';

% Representative graph is #8552: 
% sA = sAcell{8552};
sA = [0 1 0 0 0; 
      1 0 1 1 0; 
      0 1 0 0 0; 
      0 1 0 0 1; 
      0 0 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{144} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{145} = [ 8558 ]; 
mEC_label{145} = 'mEC 145: four 2-cliques (v3) [1 graph] Group IV (graph 8558)'; 
mEC_core_motifs{145} = '{ [1  2], [2  3], [2  4], [2  5] }';

% Representative graph is #8558: 
% sA = sAcell{8558};
sA = [0 1 0 0 0; 
      1 0 1 1 1; 
      0 1 0 0 0; 
      0 1 0 0 0; 
      0 1 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{145} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{146} = [ 8559:8578 ]; 
mEC_label{146} = 'mEC 146: four 2-cliques (v4) [20 graphs] Group IV (graphs [8559:8578])'; 
mEC_core_motifs{146} = '{ [1  2], [1  4], [2  3], [3  4] }';

% Representative graph is #8559: 
% sA = sAcell{8559};
sA = [0 1 0 1 1; 
      1 0 1 0 0; 
      0 1 0 1 0; 
      1 0 1 0 0; 
      0 0 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{146} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{147} = [ 8579:8581 ]; 
mEC_label{147} = 'mEC 147: four 2-cliques + sink [3 graphs] Group IV (graphs [8579:8581])'; 
mEC_core_motifs{147} = '{ [1  2], [1  4], [2  3], [3  4], [5] }';

% Representative graph is #8579: 
% sA = sAcell{8579};
sA = [0 1 0 1 0; 
      1 0 1 0 0; 
      0 1 0 1 0; 
      1 0 1 0 0; 
      0 0 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{147} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{148} = [ 8582:8584 ]; 
mEC_label{148} = 'mEC 148: five 2-cliques (v1) [3 graphs] Group IV (graphs [8582:8584])'; 
mEC_core_motifs{148} = '{ [1  2], [1  4], [2  3], [3  4], [4  5] }';

% Representative graph is #8582: 
% sA = sAcell{8582};
sA = [0 1 0 1 0; 
      1 0 1 0 0; 
      0 1 0 1 0; 
      1 0 1 0 1; 
      0 0 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{148} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{149} = [ 8585 ]; 
mEC_label{149} = 'mEC 149: five 2-cliques (v2) [1 graph] Group IV (graph 8585)'; 
mEC_core_motifs{149} = '{ [1  2], [1  5], [2  3], [3  4], [4  5] }';

% Representative graph is #8585: 
% sA = sAcell{8585};
sA = [0 1 0 0 1; 
      1 0 1 0 0; 
      0 1 0 1 0; 
      0 0 1 0 1; 
      1 0 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{149} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{150} = [ 8586 ]; 
mEC_label{150} = 'mEC 150: six 2-cliques [1 graph] Group IV (graph 8586)'; 
mEC_core_motifs{150} = '{ [1  2], [1  4], [2  3], [2  5], [3  4], [4  5] }';

% Representative graph is #8586: 
% sA = sAcell{8586};
sA = [0 1 0 1 0; 
      1 0 1 0 1; 
      0 1 0 1 0; 
      1 0 1 0 1; 
      0 1 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{150} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{151} = [ 8587:9350 ]; 
mEC_label{151} = 'mEC 151: sink [764 graphs] Group IV (graphs [8587:9350])'; 
mEC_core_motifs{151} = '{ [1] }';

% Representative graph is #8587: 
% sA = sAcell{8587};
sA = [0 1 0 0 1; 
      0 0 1 0 0; 
      0 0 0 1 0; 
      0 0 0 0 0; 
      0 0 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{151} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{152} = [ 9351:9571 ]; 
mEC_label{152} = 'mEC 152: two sinks [221 graphs] Group IV (graphs [9351:9571])'; 
mEC_core_motifs{152} = '{ [1], [2] }';

% Representative graph is #9351: 
% sA = sAcell{9351};
sA = [0 0 0 0 1; 
      0 0 1 0 0; 
      0 0 0 1 0; 
      0 0 0 0 0; 
      0 0 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{152} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{153} = [ 9572:9603 ]; 
mEC_label{153} = 'mEC 153: three sinks [32 graphs] Group IV (graphs [9572:9603])'; 
mEC_core_motifs{153} = '{ [1], [2], [3] }';

% Representative graph is #9572: 
% sA = sAcell{9572};
sA = [0 0 0 0 1; 
      0 0 0 0 0; 
      0 0 0 0 0; 
      0 0 0 0 0; 
      0 0 0 1 0];


% Initial conditions (rows of the matrix): 
X0_mEC{153} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{154} = [ 9604:9607 ]; 
mEC_label{154} = 'mEC 154: four sinks [4 graphs] Group IV (graphs [9604:9607])'; 
mEC_core_motifs{154} = '{ [1], [2], [3], [4] }';

% Representative graph is #9604: 
% sA = sAcell{9604};
sA = [0 0 0 0 1; 
      0 0 0 0 0; 
      0 0 0 0 0; 
      0 0 0 0 0; 
      0 0 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{154} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
mEC{155} = [ 9608 ]; 
mEC_label{155} = 'mEC 155: five sinks [1 graph] Group IV (graph 9608)'; 
mEC_core_motifs{155} = '{ [1], [2], [3], [4], [5] }';

% Representative graph is #9608: 
% sA = sAcell{9608};
sA = [0 0 0 0 0; 
      0 0 0 0 0; 
      0 0 0 0 0; 
      0 0 0 0 0; 
      0 0 0 0 0];


% Initial conditions (rows of the matrix): 
X0_mEC{155} = [ 0.0004  0.0007  0.0003  0.0009  0.0006 ]; 


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% make X0cell by copying X0_mEC for all the graphs in that mEC 

X0cell=cell(size(sAcell)); 
for k=1:length(mEC_start) 
     for i=mEC{k}   % i loops through all the graphs in mEC k 
          X0cell{i}=X0_mEC{k}; 
     end 
end 


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
save('n5_X0_eps0_51_delta1_76.mat', 'X0_mEC', 'X0cell', 'mEC_core_motifs')
