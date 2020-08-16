% make_n5_mECs.m
% 
% This script makes a cell array mEC of the motif equivalence classes (mECs) 
% where mEC{k} gives the graph numbers (for n5_digraphs.mat) of the graphs 
% in that mEC. It also creates mEC_label that describes the class, mEC_notes with 
% special information about the classes, mEC_start which lists the first graph in  
% mEC and mEC_end which lists the last graph of the mEC. 

% Data saved as: save('n5_mECs.mat', 'mEC', 'mEC_label','mEC_notes', 'mEC_core_motifs', 'mEC_start', 'mEC_end', 'mECs_missing_att', 'graphs_missing_att', 'mECs_param_dep', 'graphs_param_dep') 


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

% Initialize cell arrays that may end up with some entries empty: 
mEC_notes = cell(155,1);   % this will store any special notes about certain mECs 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

mEC{1} = [ 1 ]; 
mEC_label{1} = 'mEC 1: 5-cycle (core motif), Group I-A (graph 1)'; 
mEC_core_motifs{1} = '{ [1  2  3  4  5] }'; 

mEC{2} = [ 2 ]; 
mEC_label{2} = 'mEC 2: 5-star (core motif), Group I-A (graph 2)'; 
mEC_core_motifs{2} = '{ [1  2  3  4  5] }'; 
mEC_notes{2} = 'The Gaudi attractor appears as a 2nd attractor for eps = 0.095, delta = 0.11 and for eps = 0.1, delta = 0.12.';

mEC{3} = [ 3 ]; 
mEC_label{3} = 'mEC 3: 5-star with 2-cliques (core motif), Group I-A (graph 3)'; 
mEC_core_motifs{3} = '{ [1  2  3  4  5] }'; 

mEC{4} = [ 4 ]; 
mEC_label{4} = 'mEC 4: 4-cycle[1,3][2,4] (core motif), Group I-B (graph 4)'; 
mEC_core_motifs{4} = '{ [1  2  3  4  5] }'; 

mEC{5} = [ 5 ]; 
mEC_label{5} = 'mEC 5: 4-cycle[1,3][2,4] plus edge out (core motif), Group I-B (graph 5)'; 
mEC_core_motifs{5} = '{ [1  2  3  4  5] }'; 

mEC{6} = [ 6 ]; 
mEC_label{6} = 'mEC 6: 4-cycle[1,3][2,4] plus 2 edges out (core motif), Group I-B (graph 6)'; 
mEC_core_motifs{6} = '{ [1  2  3  4  5] }'; 

mEC{7} = [ 7 ]; 
mEC_label{7} = 'mEC 7: clique union 4-cycle + pt (core motif), Group I-C (graph 7)'; 
mEC_core_motifs{7} = '{ [1  2  3  4  5] }'; 

mEC{8} = [ 8 ]; 
mEC_label{8} = 'mEC 8: clique union 4-cycu + pt (core motif), Group I-C (graph 8)'; 
mEC_core_motifs{8} = '{ [1  2  3  4  5] }'; 

mEC{9} = [ 9 ]; 
mEC_label{9} = 'mEC 9: clique union 4-ufd + pt (core motif), Group I-C (graph 9)'; 
mEC_core_motifs{9} = '{ [1  2  3  4  5] }'; 
mEC_notes{9} = 'The attractor for this core motif has surprise symmetry.';

mEC{10} = [ 10 ]; 
mEC_label{10} = 'mEC 10: clique union 3-cycle + 2-clique (or fusion 3-cycle + pt) (core motif), Group I-C (graph 10)'; 
mEC_core_motifs{10} = '{ [1  2  3  4  5] }'; 

mEC{11} = [ 11 ]; 
mEC_label{11} = 'mEC 11: pure cyclic union on pt, 2-clique, pt, pt (or extended 4-cycu) (core motif), Group I-D (graph 11)'; 
mEC_core_motifs{11} = '{ [1  2  3  4  5] }'; 

mEC{12} = [ 12 ]; 
mEC_label{12} = 'mEC 12: extended 4-cycu down-skip edge node 2 (** no core motifs for eps = 0.51, delta = 1.76 **), Group I-D (graph 12)'; 
mEC_core_motifs{12} = '{ [] }'; 
mEC_notes{12} = 'The attractor for this graph (which has *no* core motifs) has surprise symmetry.  This class contains 1 graph that has parameter dependent core motifs (# 12).';

mEC{13} = [ 13 ]; 
mEC_label{13} = 'mEC 13: extended 4-ufd (core motif), Group I-D (graph 13)'; 
mEC_core_motifs{13} = '{ [1  2  3  4  5] }'; 
mEC_notes{13} = 'The attractor for this core motif has surprise symmetry.';

mEC{14} = [ 14 ]; 
mEC_label{14} = 'mEC 14: extended 4-ufd down-skip edge node 2 (core motif), Group I-D (graph 14)'; 
mEC_core_motifs{14} = '{ [1  2  3  4  5] }'; 
mEC_notes{14} = 'The attractor for this core motif has surprise symmetry.';

mEC{15} = [ 15 ]; 
mEC_label{15} = 'mEC 15: extended 4-ufd + down-skip edge node 3 (core motif), Group I-D (graph 15)'; 
mEC_core_motifs{15} = '{ [1  2  3  4  5] }'; 
mEC_notes{15} = 'The attractor for this core motif has surprise symmetry.';

mEC{16} = [ 16 ]; 
mEC_label{16} = 'mEC 16: pure cyclic union pt, 3-clique, pt (core motif), Group I-E (graph 16)'; 
mEC_core_motifs{16} = '{ [1  2  3  4  5] }'; 

mEC{17} = [ 17 ]; 
mEC_label{17} = 'mEC 17: cyclic union pt, 3-clique, pt w/ added back edge (core motif), Group I-E (graph 17)'; 
mEC_core_motifs{17} = '{ [1  2  3  4  5] }'; 
mEC_notes{17} = 'The attractor for this core motif has surprise symmetry.';

mEC{18} = [ 18 ]; 
mEC_label{18} = 'mEC 18: cyclic union pt, 3-clique, pt w/ two added back edges (core motif), Group I-E (graph 18)'; 
mEC_core_motifs{18} = '{ [1  2  3  4  5] }'; 
mEC_notes{18} = 'The attractor for this core motif has surprise symmetry.';

mEC{19} = [ 19 ]; 
mEC_label{19} = 'mEC 19: pure cyclic union pt, 3-cycle, pt (core motif), Group I-F (graph 19)'; 
mEC_core_motifs{19} = '{ [1  2  3  4  5] }'; 
mEC_notes{19} = 'The attractor for this core motif has surprise symmetry.';

mEC{20} = [ 20 ]; 
mEC_label{20} = 'mEC 20: cyclic union pt, 3-cycle, pt w/ added back edge (core motif), Group I-F (graph 20)'; 
mEC_core_motifs{20} = '{ [1  2  3  4  5] }'; 

mEC{21} = [ 21 ]; 
mEC_label{21} = 'mEC 21: cyclic union pt, 3-cycle, pt w/ dropped down edge (core motif), Group I-F (graph 21)'; 
mEC_core_motifs{21} = '{ [1  2  3  4  5] }'; 

mEC{22} = [ 22 ]; 
mEC_label{22} = 'mEC 22: cyclic union pt, 3-cycle, pt w/ added back edge and dropped down edge (v1) (core motif), Group I-F (graph 22)'; 
mEC_core_motifs{22} = '{ [1  2  3  4  5] }'; 

mEC{23} = [ 23 ]; 
mEC_label{23} = 'mEC 23: cyclic union pt, 3-cycle, pt w/ added back edge and dropped down edge (v2) (core motif), Group I-F (graph 23)'; 
mEC_core_motifs{23} = '{ [1  2  3  4  5] }'; 

mEC{24} = [ 24 ]; 
mEC_label{24} = 'mEC 24: cyclic union pt, 3-cycle, pt w/ added back edge and dropped down edge (v3) ** 2 attractors ** (core motif), Group I-F (graph 24)'; 
mEC_core_motifs{24} = '{ [1  2  3  4  5] }'; 

mEC{25} = [ 25 ]; 
mEC_label{25} = 'mEC 25: pure cyclic union pt, 2-clique, 2-clique (core motif), Group I-G (graph 25)'; 
mEC_core_motifs{25} = '{ [1  2  3  4  5] }'; 

mEC{26} = [ 26 ]; 
mEC_label{26} = 'mEC 26: cyclic union pt, 2-clique, 2-clique w/ added back edge (core motif), Group I-G (graph 26)'; 
mEC_core_motifs{26} = '{ [1  2  3  4  5] }'; 
mEC_notes{26} = 'The attractor for this core motif has surprise symmetry.';

mEC{27} = [ 27 ]; 
mEC_label{27} = 'mEC 27: cyclic union pt, 2-clique, 2-clique w/ two added back edges (v1) (core motif), Group I-G (graph 27)'; 
mEC_core_motifs{27} = '{ [1  2  3  4  5] }'; 
mEC_notes{27} = 'The attractor for this core motif has surprise symmetry.';

mEC{28} = [ 28 ]; 
mEC_label{28} = 'mEC 28: cyclic union pt, 2-clique, 2-clique w/ two added back edges (v2) (core motif), Group I-G (graph 28)'; 
mEC_core_motifs{28} = '{ [1  2  3  4  5] }'; 
mEC_notes{28} = 'The attractor for this core motif has surprise symmetry.  This graph is s_i-equivalent to graph 27.';

mEC{29} = [ 29 ]; 
mEC_label{29} = 'mEC 29: cyclic union pt, 2-clique, 2-clique w/ three added back edges (v1) (core motif), Group I-G (graph 29)'; 
mEC_core_motifs{29} = '{ [1  2  3  4  5] }'; 
mEC_notes{29} = 'The attractor for this core motif has surprise symmetry.';

mEC{30} = [ 30 ]; 
mEC_label{30} = 'mEC 30: cyclic union pt, 2-clique, 2-clique w/ three added back edges (v2) (core motif), Group I-G (graph 30)'; 
mEC_core_motifs{30} = '{ [1  2  3  4  5] }'; 
mEC_notes{30} = 'The attractor for this core motif has surprise symmetry.  This graph is s_i-equivalent to graph 29.';

mEC{31} = [ 31 ]; 
mEC_label{31} = 'mEC 31: cyclic union pt, 2-clique, 2-clique w/ two added back edges (v3) (core motif), Group I-G (graph 31)'; 
mEC_core_motifs{31} = '{ [1  2  3  4  5] }'; 
mEC_notes{31} = 'The attractor for this core motif has surprise symmetry.';

mEC{32} = [ 32 ]; 
mEC_label{32} = 'mEC 32: envelope attractor (v1) (** no core motifs for eps = 0.51, delta = 1.76 **), Group I-H (graph 32)'; 
mEC_core_motifs{32} = '{ [] }'; 
mEC_notes{32} = 'This class contains 1 graph that has parameter dependent core motifs (# 32).';

mEC{33} = [ 33 ]; 
mEC_label{33} = 'mEC 33: envelope attractor (v2) (** no core motifs for eps = 0.51, delta = 1.76 **), Group I-H (graph 33)'; 
mEC_core_motifs{33} = '{ [] }'; 
mEC_notes{33} = 'This class contains 1 graph that has parameter dependent core motifs (# 33).';

mEC{34} = [ 34 ]; 
mEC_label{34} = 'mEC 34: envelope attractor (v3) (core motif), Group I-H (graph 34)'; 
mEC_core_motifs{34} = '{ [1  2  3  4  5] }'; 

mEC{35} = [ 35 ]; 
mEC_label{35} = 'mEC 35: envelope attractor (v4) (core motif), Group I-H (graph 35)'; 
mEC_core_motifs{35} = '{ [1  2  3  4  5] }'; 

mEC{36} = [ 36 ]; 
mEC_label{36} = 'mEC 36: envelope attractor (v5) (core motif), Group I-H (graph 36)'; 
mEC_core_motifs{36} = '{ [1  2  3  4  5] }'; 

mEC{37} = [ 37 ]; 
mEC_label{37} = 'mEC 37: double envelope attractor (v1) (core motif), Group I-I (graph 37)'; 
mEC_core_motifs{37} = '{ [1  2  3  4  5] }'; 

mEC{38} = [ 38 ]; 
mEC_label{38} = 'mEC 38: double envelope attractor (v2) (core motif), Group I-I (graph 38)'; 
mEC_core_motifs{38} = '{ [1  2  3  4  5] }'; 

mEC{39} = [ 39 ]; 
mEC_label{39} = 'mEC 39: weird attractor (core motif), Group I-J (graph 39)'; 
mEC_core_motifs{39} = '{ [1  2  3  4  5] }'; 

mEC{40} = [ 40:52 ]; 
mEC_label{40} = 'mEC 40: 4-cycle [13 graphs] Group II (graphs [40:52])'; 
mEC_core_motifs{40} = '{ [1  2  3  4] }'; 

mEC{41} = [ 53:54 ]; 
mEC_label{41} = 'mEC 41: 4-cycle + sink [2 graphs] Group II (graphs [53:54])'; 
mEC_core_motifs{41} = '{ [1  2  3  4], [5] }'; 

mEC{42} = [ 55:58 ]; 
mEC_label{42} = 'mEC 42: 4-cycle + 2-clique [4 graphs] Group II (graphs [55:58])'; 
mEC_core_motifs{42} = '{ [1  2  3  4], [4  5] }'; 

mEC{43} = [ 59:60 ]; 
mEC_label{43} = 'mEC 43: 4-cycle + 3-cycle [2 graphs] Group II (graphs [59:60])'; 
mEC_core_motifs{43} = '{ [1  2  3  4], [3  4  5] }'; 

mEC{44} = [ 61 ]; 
mEC_label{44} = 'mEC 44: two 4-cycles [1 graph] Group II (graph 61)'; 
mEC_core_motifs{44} = '{ [1  2  3  4], [2  3  4  5] }'; 

mEC{45} = [ 62:118 ]; 
mEC_label{45} = 'mEC 45: 4-cycu [57 graphs] Group II (graphs [62:118])'; 
mEC_core_motifs{45} = '{ [1  2  3  4] }'; 
mEC_notes{45} = 'This class contains 5 graph(s) that have parameter dependent core motifs (# 86   93   97  113  117).';

mEC{46} = [ 119:125 ]; 
mEC_label{46} = 'mEC 46: 4-cycu + sink [7 graphs] Group II (graphs [119:125])'; 
mEC_core_motifs{46} = '{ [1  2  3  4], [5] }'; 
mEC_notes{46} = 'This class contains 1 graph(s) that are missing an attractor (# 124).  This class contains 1 graph that has parameter dependent core motifs (# 124).';

mEC{47} = [ 126:129 ]; 
mEC_label{47} = 'mEC 47: 4-cycu + 2-clique (v1) [4 graphs] Group II (graphs [126:129])'; 
mEC_core_motifs{47} = '{ [1  2  3  4], [1  5] }'; 

mEC{48} = [ 130:137 ]; 
mEC_label{48} = 'mEC 48: 4-cycu + 2-clique (v2) [8 graphs] Group II (graphs [130:137])'; 
mEC_core_motifs{48} = '{ [1  2  3  4], [3  5] }'; 
mEC_notes{48} = 'This class contains 2 graph(s) that are missing an attractor (# 133  136).  This class contains 2 graph(s) that have parameter dependent core motifs (# 133  136).';

mEC{49} = [ 138:144 ]; 
mEC_label{49} = 'mEC 49: 4-cycu + 2-clique (v3) [7 graphs] Group II (graphs [138:144])'; 
mEC_core_motifs{49} = '{ [1  2  3  4], [4  5] }'; 
mEC_notes{49} = 'This class contains 4 graph(s) that are missing an attractor (# 139  142  143  144).  This class contains 4 graph(s) that have parameter dependent core motifs (# 139  142  143  144).';

mEC{50} = [ 145:146 ]; 
mEC_label{50} = 'mEC 50: 4-cycu + 3-clique [2 graphs] Group II (graphs [145:146])'; 
mEC_core_motifs{50} = '{ [1  2  3  4], [2  3  5] }'; 

mEC{51} = [ 147:148 ]; 
mEC_label{51} = 'mEC 51: 4-cycu + 3-cycle (v1) [2 graphs] Group II (graphs [147:148])'; 
mEC_core_motifs{51} = '{ [1  2  3  4], [3  4  5] }'; 
mEC_notes{51} = 'This class contains 1 graph(s) that are missing an attractor (# 148).  This class contains 1 graph that has parameter dependent core motifs (# 148).';

mEC{52} = [ 149:150 ]; 
mEC_label{52} = 'mEC 52: 4-cycu + 3-cycle (v2) [2 graphs] Group II (graphs [149:150])'; 
mEC_core_motifs{52} = '{ [1  2  3  4], [1  4  5] }'; 

mEC{53} = [ 151 ]; 
mEC_label{53} = 'mEC 53: two 4-cycus (v1) [1 graph] Group II (graph 151)'; 
mEC_core_motifs{53} = '{ [1  2  3  4], [2  3  4  5] }'; 

mEC{54} = [ 152 ]; 
mEC_label{54} = 'mEC 54: two 4-cycus (v2) [1 graph] Group II (graph 152)'; 
mEC_core_motifs{54} = '{ [1  2  3  4], [1  3  4  5] }'; 

mEC{55} = [ 153 ]; 
mEC_label{55} = 'mEC 55: two 4-cycus (v3) [1 graph] Group II (graph 153)'; 
mEC_core_motifs{55} = '{ [1  2  3  4], [1  2  3  5] }'; 

mEC{56} = [ 154:260 ]; 
mEC_label{56} = 'mEC 56: 4-ufd [107 graphs] Group II (graphs [154:260])'; 
mEC_core_motifs{56} = '{ [1  2  3  4] }'; 

mEC{57} = [ 261:271 ]; 
mEC_label{57} = 'mEC 57: 4-ufd + sink [11 graphs] Group II (graphs [261:271])'; 
mEC_core_motifs{57} = '{ [1  2  3  4], [5] }'; 
mEC_notes{57} = 'This class contains 1 graph(s) that are missing an attractor (# 267).';

mEC{58} = [ 272:279 ]; 
mEC_label{58} = 'mEC 58: 4-ufd + 2-clique (v1) [8 graphs] Group II (graphs [272:279])'; 
mEC_core_motifs{58} = '{ [1  2  3  4], [1  5] }'; 
mEC_notes{58} = 'This class contains 2 graph(s) that are missing an attractor (# 276  279).';

mEC{59} = [ 280:283 ]; 
mEC_label{59} = 'mEC 59: 4-ufd + 2-clique (v2) [4 graphs] Group II (graphs [280:283])'; 
mEC_core_motifs{59} = '{ [1  2  3  4], [2  5] }'; 

mEC{60} = [ 284:291 ]; 
mEC_label{60} = 'mEC 60: 4-ufd + 2-clique (v3) [8 graphs] Group II (graphs [284:291])'; 
mEC_core_motifs{60} = '{ [1  2  3  4], [3  5] }'; 

mEC{61} = [ 292:307 ]; 
mEC_label{61} = 'mEC 61: 4-ufd + 2-clique (v4) [16 graphs] Group II (graphs [292:307])'; 
mEC_core_motifs{61} = '{ [1  2  3  4], [4  5] }'; 
mEC_notes{61} = 'This class contains 3 graph(s) that are missing an attractor (# 293  299  305).';

mEC{62} = [ 308:309 ]; 
mEC_label{62} = 'mEC 62: 4-ufd + 3-clique (v1) [2 graphs] Group II (graphs [308:309])'; 
mEC_core_motifs{62} = '{ [1  2  3  4], [1  2  5] }'; 

mEC{63} = [ 310:311 ]; 
mEC_label{63} = 'mEC 63: 4-ufd + 3-clique (v2) [2 graphs] Group II (graphs [310:311])'; 
mEC_core_motifs{63} = '{ [1  2  3  4], [2  3  5] }'; 

mEC{64} = [ 312:314 ]; 
mEC_label{64} = 'mEC 64: 4-ufd + 3-cycle (v1) [3 graphs] Group II (graphs [312:314])'; 
mEC_core_motifs{64} = '{ [1  2  3  4], [3  4  5] }'; 
mEC_notes{64} = 'This class contains 1 graph(s) that are missing an attractor (# 314).';

mEC{65} = [ 315:317 ]; 
mEC_label{65} = 'mEC 65: 4-ufd + 3-cycle (v2) [3 graphs] Group II (graphs [315:317])'; 
mEC_core_motifs{65} = '{ [1  2  3  4], [1  4  5] }'; 

mEC{66} = [ 318 ]; 
mEC_label{66} = 'mEC 66: 4-ufd + fusion 3-cycle [1 graph] Group II (graph 318)'; 
mEC_core_motifs{66} = '{ [1  2  3  4], [1  2  3  5] }'; 

mEC{67} = [ 319:320 ]; 
mEC_label{67} = 'mEC 67: 4-ufd + 4-cycu (v1) [2 graphs] Group II (graphs [319:320])'; 
mEC_core_motifs{67} = '{ [1  2  3  4], [2  3  4  5] }'; 
mEC_notes{67} = 'This class contains 2 graph(s) that are missing an attractor (# 319  320).  This class contains 2 graph(s) that have parameter dependent core motifs (# 319  320).';

mEC{68} = [ 321 ]; 
mEC_label{68} = 'mEC 68: 4-ufd + 4-cycu (v2) [1 graph] Group II (graph 321)'; 
mEC_core_motifs{68} = '{ [1  2  3  4], [1  3  4  5] }'; 

mEC{69} = [ 322 ]; 
mEC_label{69} = 'mEC 69: 4-ufd + 4-cycu (v3) [1 graph] Group II (graph 322)'; 
mEC_core_motifs{69} = '{ [1  2  3  4], [1  3  4  5] }'; 
mEC_notes{69} = 'This class contains 1 graph(s) that are missing an attractor (# 322).  This class contains 1 graph that has parameter dependent core motifs (# 322).';

mEC{70} = [ 323 ]; 
mEC_label{70} = 'mEC 70: two 4-ufds (v1) [1 graph] Group II (graph 323)'; 
mEC_core_motifs{70} = '{ [1  2  3  4], [2  3  4  5] }'; 

mEC{71} = [ 324 ]; 
mEC_label{71} = 'mEC 71: two 4-ufds (v2) [1 graph] Group II (graph 324)'; 
mEC_core_motifs{71} = '{ [1  2  3  4], [2  3  4  5] }'; 

mEC{72} = [ 325 ]; 
mEC_label{72} = 'mEC 72: two 4-ufds (v3) [1 graph] Group II (graph 325)'; 
mEC_core_motifs{72} = '{ [1  2  3  4], [1  3  4  5] }'; 

mEC{73} = [ 326 ]; 
mEC_label{73} = 'mEC 73: two 4-ufds (v4) [1 graph] Group II (graph 326)'; 
mEC_core_motifs{73} = '{ [1  2  3  4], [1  2  4  5] }'; 

mEC{74} = [ 327 ]; 
mEC_label{74} = 'mEC 74: two 4-ufds (v5) [1 graph] Group II (graph 327)'; 
mEC_core_motifs{74} = '{ [1  2  3  4], [1  2  3  5] }'; 

mEC{75} = [ 328 ]; 
mEC_label{75} = 'mEC 75: two 4-ufds (v6) [1 graph] Group II (graph 328)'; 
mEC_core_motifs{75} = '{ [1  2  3  4], [1  3  4  5] }'; 
mEC_notes{75} = 'This class contains 1 graph(s) that are missing an attractor (# 328).';

mEC{76} = [ 329:598 ]; 
mEC_label{76} = 'mEC 76: 3-cycle [270 graphs] Group III (graphs [329:598])'; 
mEC_core_motifs{76} = '{ [1  2  3] }'; 

mEC{77} = [ 599:660 ]; 
mEC_label{77} = 'mEC 77: 3-cycle + sink [62 graphs] Group III (graphs [599:660])'; 
mEC_core_motifs{77} = '{ [1  2  3], [4] }'; 

mEC{78} = [ 661:664 ]; 
mEC_label{78} = 'mEC 78: 3-cycle + two sinks [4 graphs] Group III (graphs [661:664])'; 
mEC_core_motifs{78} = '{ [1  2  3], [4], [5] }'; 

mEC{79} = [ 665:716 ]; 
mEC_label{79} = 'mEC 79: 3-cycle + 2-clique (disjoint) [52 graphs] Group III (graphs [665:716])'; 
mEC_core_motifs{79} = '{ [1  2  3], [4  5] }'; 

mEC{80} = [ 717:864 ]; 
mEC_label{80} = 'mEC 80: 3-cycle + 2-clique (overlap) [148 graphs] Group III (graphs [717:864])'; 
mEC_core_motifs{80} = '{ [1  2  3], [3  4] }'; 

mEC{81} = [ 865:878 ]; 
mEC_label{81} = 'mEC 81: 3-cycle + 2-clique + sink [14 graphs] Group III (graphs [865:878])'; 
mEC_core_motifs{81} = '{ [1  2  3], [3  4], [5] }'; 

mEC{82} = [ 879:881 ]; 
mEC_label{82} = 'mEC 82: 3-cycle + two 2-cliques (v1) [3 graphs] Group III (graphs [879:881])'; 
mEC_core_motifs{82} = '{ [1  2  3], [3  4], [3  5] }'; 

mEC{83} = [ 882:895 ]; 
mEC_label{83} = 'mEC 83: 3-cycle + two 2-cliques (v2) [14 graphs] Group III (graphs [882:895])'; 
mEC_core_motifs{83} = '{ [1  2  3], [1  5], [3  4] }'; 

mEC{84} = [ 896:907 ]; 
mEC_label{84} = 'mEC 84: 3-cycle + two 2-cliques (v3) [12 graphs] Group III (graphs [896:907])'; 
mEC_core_motifs{84} = '{ [1  2  3], [3  4], [4  5] }'; 

mEC{85} = [ 908:909 ]; 
mEC_label{85} = 'mEC 85: 3-cycle + three 2-cliques [2 graphs] Group III (graphs [908:909])'; 
mEC_core_motifs{85} = '{ [1  2  3], [1  5], [3  4], [4  5] }'; 

mEC{86} = [ 910:916 ]; 
mEC_label{86} = 'mEC 86: 3-cycle + 3-clique [7 graphs] Group III (graphs [910:916])'; 
mEC_core_motifs{86} = '{ [1  2  3], [3  4  5] }'; 

mEC{87} = [ 917:920 ]; 
mEC_label{87} = 'mEC 87: two 3-cycles (v1) [4 graphs] Group III (graphs [917:920])'; 
mEC_core_motifs{87} = '{ [1  2  3], [3  4  5] }'; 

mEC{88} = [ 921:961 ]; 
mEC_label{88} = 'mEC 88: two 3-cycles (v2, "butterfly") [41 graphs] Group III (graphs [921:961])'; 
mEC_core_motifs{88} = '{ [1  2  3], [2  3  4] }'; 

mEC{89} = [ 962:966 ]; 
mEC_label{89} = 'mEC 89: two 3-cycles + sink [5 graphs] Group III (graphs [962:966])'; 
mEC_core_motifs{89} = '{ [1  2  3], [2  3  4], [5] }'; 

mEC{90} = [ 967:972 ]; 
mEC_label{90} = 'mEC 90: two 3-cycles + 2-clique (v1) [6 graphs] Group III (graphs [967:972])'; 
mEC_core_motifs{90} = '{ [1  2  3], [2  3  4], [4  5] }'; 

mEC{91} = [ 973:975 ]; 
mEC_label{91} = 'mEC 91: two 3-cycles + 2-clique (v2) [3 graphs] Group III (graphs [973:975])'; 
mEC_core_motifs{91} = '{ [1  2  3], [2  3  4], [2  5] }'; 

mEC{92} = [ 976:977 ]; 
mEC_label{92} = 'mEC 92: two 3-cycles + 2-clique (v3) [2 graphs] Group III (graphs [976:977])'; 
mEC_core_motifs{92} = '{ [1  2  3], [2  3  4], [3  5] }'; 

mEC{93} = [ 978:979 ]; 
mEC_label{93} = 'mEC 93: two 3-cycles + two 2-cliques [2 graphs] Group III (graphs [978:979])'; 
mEC_core_motifs{93} = '{ [1  2  3], [1  5], [2  3  4], [4  5] }'; 

mEC{94} = [ 980 ]; 
mEC_label{94} = 'mEC 94: three 3-cycles (v1) [1 graph] Group III (graph 980)'; 
mEC_core_motifs{94} = '{ [1  2  3], [2  3  4], [2  3  5] }'; 
mEC_notes{94} = 'The attractors are quasiperiodic for eps = 0.25, delta = 0.5.';

mEC{95} = [ 981 ]; 
mEC_label{95} = 'mEC 95: three 3-cycles (v2) [1 graph] Group III (graph 981)'; 
mEC_core_motifs{95} = '{ [1  2  3], [2  3  4], [3  4  5] }'; 

mEC{96} = [ 982 ]; 
mEC_label{96} = 'mEC 96: four 3-cycles [1 graph] Group III (graph 982)'; 
mEC_core_motifs{96} = '{ [1  2  3], [1  3  5], [2  3  4], [3  4  5] }'; 
mEC_notes{96} = 'This is baby chaos for eps = 0.25, delta = 0.5.';

mEC{97} = [ 983:1031 ]; 
mEC_label{97} = 'mEC 97: fusion 3-cycle [49 graphs] Group III (graphs [983:1031])'; 
mEC_core_motifs{97} = '{ [1  2  3  4] }'; 

mEC{98} = [ 1032:1037 ]; 
mEC_label{98} = 'mEC 98: fusion 3-cycle + sink [6 graphs] Group III (graphs [1032:1037])'; 
mEC_core_motifs{98} = '{ [1  2  3  4], [5] }'; 

mEC{99} = [ 1038:1047 ]; 
mEC_label{99} = 'mEC 99: fusion 3-cycle + 2-clique (v1) [10 graphs] Group III (graphs [1038:1047])'; 
mEC_core_motifs{99} = '{ [1  2  3  4], [1  5] }'; 

mEC{100} = [ 1048:1049 ]; 
mEC_label{100} = 'mEC 100: fusion 3-cycle + 2-clique (v2) [2 graphs] Group III (graphs [1048:1049])'; 
mEC_core_motifs{100} = '{ [1  2  3  4], [4  5] }'; 

mEC{101} = [ 1050:1051 ]; 
mEC_label{101} = 'mEC 101: fusion 3-cycle + 3-clique [2 graphs] Group III (graphs [1050:1051])'; 
mEC_core_motifs{101} = '{ [1  2  3  4], [3  4  5] }'; 

mEC{102} = [ 1052 ]; 
mEC_label{102} = 'mEC 102: two fusion 3-cycles (v1) [1 graph] Group III (graph 1052)'; 
mEC_core_motifs{102} = '{ [1  2  3  4], [1  2  3  5] }'; 

mEC{103} = [ 1053 ]; 
mEC_label{103} = 'mEC 103: two fusion 3-cycles (v2) [1 graph] Group III (graph 1053)'; 
mEC_core_motifs{103} = '{ [1  2  3  4], [1  2  4  5] }'; 

mEC{104} = [ 1054 ]; 
mEC_label{104} = 'mEC 104: 5-clique [1 graph] Group IV (graph 1054)'; 
mEC_core_motifs{104} = '{ [1  2  3  4  5] }'; 

mEC{105} = [ 1055:1074 ]; 
mEC_label{105} = 'mEC 105: 4-clique [20 graphs] Group IV (graphs [1055:1074])'; 
mEC_core_motifs{105} = '{ [1  2  3  4] }'; 

mEC{106} = [ 1075:1078 ]; 
mEC_label{106} = 'mEC 106: 4-clique + sink [4 graphs] Group IV (graphs [1075:1078])'; 
mEC_core_motifs{106} = '{ [1  2  3  4], [5] }'; 

mEC{107} = [ 1079:1081 ]; 
mEC_label{107} = 'mEC 107: 4-clique + 2-clique [3 graphs] Group IV (graphs [1079:1081])'; 
mEC_core_motifs{107} = '{ [1  2  3  4], [4  5] }'; 

mEC{108} = [ 1082:1083 ]; 
mEC_label{108} = 'mEC 108: 4-clique + 3-clique [2 graphs] Group IV (graphs [1082:1083])'; 
mEC_core_motifs{108} = '{ [1  2  3  4], [3  4  5] }'; 

mEC{109} = [ 1084 ]; 
mEC_label{109} = 'mEC 109: two 4-cliques [1 graph] Group IV (graph 1084)'; 
mEC_core_motifs{109} = '{ [1  2  3  4], [2  3  4  5] }'; 

mEC{110} = [ 1085:1652 ]; 
mEC_label{110} = 'mEC 110: 3-clique [568 graphs] Group IV (graphs [1085:1652])'; 
mEC_core_motifs{110} = '{ [1  2  3] }'; 

mEC{111} = [ 1653:1779 ]; 
mEC_label{111} = 'mEC 111: 3-clique + sink [127 graphs] Group IV (graphs [1653:1779])'; 
mEC_core_motifs{111} = '{ [1  2  3], [4] }'; 

mEC{112} = [ 1780:1788 ]; 
mEC_label{112} = 'mEC 112: 3-clique + two sinks [9 graphs] Group IV (graphs [1780:1788])'; 
mEC_core_motifs{112} = '{ [1  2  3], [4], [5] }'; 

mEC{113} = [ 1789:1894 ]; 
mEC_label{113} = 'mEC 113: 3-clique + 2-clique (disjoint) [106 graphs] Group IV (graphs [1789:1894])'; 
mEC_core_motifs{113} = '{ [1  2  3], [4  5] }'; 

mEC{114} = [ 1895:2096 ]; 
mEC_label{114} = 'mEC 114: 3-clique + 2-clique (overlap) [202 graphs] Group IV (graphs [1895:2096])'; 
mEC_core_motifs{114} = '{ [1  2  3], [3  4] }'; 

mEC{115} = [ 2097:2115 ]; 
mEC_label{115} = 'mEC 115: 3-clique + 2-clique + sink [19 graphs] Group IV (graphs [2097:2115])'; 
mEC_core_motifs{115} = '{ [1  2  3], [3  4], [5] }'; 

mEC{116} = [ 2116:2119 ]; 
mEC_label{116} = 'mEC 116: 3-clique + two 2-cliques (v1) [4 graphs] Group IV (graphs [2116:2119])'; 
mEC_core_motifs{116} = '{ [1  2  3], [3  4], [3  5] }'; 

mEC{117} = [ 2120:2139 ]; 
mEC_label{117} = 'mEC 117: 3-clique + two 2-cliques (v2) [20 graphs] Group IV (graphs [2120:2139])'; 
mEC_core_motifs{117} = '{ [1  2  3], [3  4], [4  5] }'; 

mEC{118} = [ 2140:2151 ]; 
mEC_label{118} = 'mEC 118: 3-clique + two 2-cliques (v3) [12 graphs] Group IV (graphs [2140:2151])'; 
mEC_core_motifs{118} = '{ [1  2  3], [1  5], [3  4] }'; 

mEC{119} = [ 2152:2154 ]; 
mEC_label{119} = 'mEC 119: 3-clique + three 2-cliques [3 graphs] Group IV (graphs [2152:2154])'; 
mEC_core_motifs{119} = '{ [1  2  3], [1  5], [3  4], [4  5] }'; 

mEC{120} = [ 2155:2166 ]; 
mEC_label{120} = 'mEC 120: two 3-cliques (v1) [12 graphs] Group IV (graphs [2155:2166])'; 
mEC_core_motifs{120} = '{ [1  2  3], [3  4  5] }'; 

mEC{121} = [ 2167:2221 ]; 
mEC_label{121} = 'mEC 121: two 3-cliques (v2) [55 graphs] Group IV (graphs [2167:2221])'; 
mEC_core_motifs{121} = '{ [1  2  3], [2  3  4] }'; 

mEC{122} = [ 2222:2228 ]; 
mEC_label{122} = 'mEC 122: two 3-clique + sink [7 graphs] Group IV (graphs [2222:2228])'; 
mEC_core_motifs{122} = '{ [1  2  3], [2  3  4], [5] }'; 

mEC{123} = [ 2229:2232 ]; 
mEC_label{123} = 'mEC 123: two 3-cliques + 2-clique (v1) [4 graphs] Group IV (graphs [2229:2232])'; 
mEC_core_motifs{123} = '{ [1  2  3], [2  3  4], [3  5] }'; 

mEC{124} = [ 2233:2238 ]; 
mEC_label{124} = 'mEC 124: two 3-cliques + 2-clique (v2) [6 graphs] Group IV (graphs [2233:2238])'; 
mEC_core_motifs{124} = '{ [1  2  3], [2  3  4], [4  5] }'; 

mEC{125} = [ 2239:2240 ]; 
mEC_label{125} = 'mEC 125: two 3-cliques + two 2-cliques [2 graphs] Group IV (graphs [2239:2240])'; 
mEC_core_motifs{125} = '{ [1  2  3], [1  5], [2  3  4], [4  5] }'; 

mEC{126} = [ 2241:2242 ]; 
mEC_label{126} = 'mEC 126: three 3-cliques (v1) [2 graphs] Group IV (graphs [2241:2242])'; 
mEC_core_motifs{126} = '{ [1  2  3], [2  3  4], [3  4  5] }'; 

mEC{127} = [ 2243 ]; 
mEC_label{127} = 'mEC 127: three 3-cliques (v2) [1 graph] Group IV (graph 2243)'; 
mEC_core_motifs{127} = '{ [1  2  3], [2  3  4], [2  3  5] }'; 

mEC{128} = [ 2244 ]; 
mEC_label{128} = 'mEC 128: four 3-cliques [1 graph] Group IV (graph 2244)'; 
mEC_core_motifs{128} = '{ [1  2  3], [1  3  5], [2  3  4], [3  4  5] }'; 

mEC{129} = [ 2245:5031 ]; 
mEC_label{129} = 'mEC 129: 2-clique [2787 graphs] Group IV (graphs [2245:5031])'; 
mEC_core_motifs{129} = '{ [1  2] }'; 

mEC{130} = [ 5032:6055 ]; 
mEC_label{130} = 'mEC 130: 2-clique + sink [1024 graphs] Group IV (graphs [5032:6055])'; 
mEC_core_motifs{130} = '{ [1  2], [3] }'; 

mEC{131} = [ 6056:6161 ]; 
mEC_label{131} = 'mEC 131: 2-clique + two sinks [106 graphs] Group IV (graphs [6056:6161])'; 
mEC_core_motifs{131} = '{ [1  2], [3], [4] }'; 

mEC{132} = [ 6162:6167 ]; 
mEC_label{132} = 'mEC 132: 2-clique + three sinks [6 graphs] Group IV (graphs [6162:6167])'; 
mEC_core_motifs{132} = '{ [1  2], [3], [4], [5] }'; 

mEC{133} = [ 6168:7046 ]; 
mEC_label{133} = 'mEC 133: two 2-cliques (disjoint) [879 graphs] Group IV (graphs [6168:7046])'; 
mEC_core_motifs{133} = '{ [1  2], [3  4] }'; 

mEC{134} = [ 7047:7909 ]; 
mEC_label{134} = 'mEC 134: two 2-cliques (overlap) [863 graphs] Group IV (graphs [7047:7909])'; 
mEC_core_motifs{134} = '{ [1  2], [2  3] }'; 

mEC{135} = [ 7910:7994 ]; 
mEC_label{135} = 'mEC 135: two 2-cliques (disjoint) + sink [85 graphs] Group IV (graphs [7910:7994])'; 
mEC_core_motifs{135} = '{ [1  2], [3  4], [5] }'; 

mEC{136} = [ 7995:8175 ]; 
mEC_label{136} = 'mEC 136: two 2-cliques (overlap) + sink [181 graphs] Group IV (graphs [7995:8175])'; 
mEC_core_motifs{136} = '{ [1  2], [2  3], [4] }'; 

mEC{137} = [ 8176:8186 ]; 
mEC_label{137} = 'mEC 137: two 2-cliques (overlap) + two sinks [11 graphs] Group IV (graphs [8176:8186])'; 
mEC_core_motifs{137} = '{ [1  2], [2  3], [4], [5] }'; 

mEC{138} = [ 8187:8338 ]; 
mEC_label{138} = 'mEC 138: three 2-cliques (v1) [152 graphs] Group IV (graphs [8187:8338])'; 
mEC_core_motifs{138} = '{ [1  2], [2  3], [4  5] }'; 

mEC{139} = [ 8339:8484 ]; 
mEC_label{139} = 'mEC 139: three 2-cliques (v2) [146 graphs] Group IV (graphs [8339:8484])'; 
mEC_core_motifs{139} = '{ [1  2], [2  3], [3  4] }'; 

mEC{140} = [ 8485:8516 ]; 
mEC_label{140} = 'mEC 140: three 2-cliques (v3) [32 graphs] Group IV (graphs [8485:8516])'; 
mEC_core_motifs{140} = '{ [1  2], [2  3], [2  4] }'; 

mEC{141} = [ 8517:8530 ]; 
mEC_label{141} = 'mEC 141: three 2-cliques + sink (v1) [14 graphs] Group IV (graphs [8517:8530])'; 
mEC_core_motifs{141} = '{ [1  2], [2  3], [3  4], [5] }'; 

mEC{142} = [ 8531:8535 ]; 
mEC_label{142} = 'mEC 142: three 2-cliques + sink (v2) [5 graphs] Group IV (graphs [8531:8535])'; 
mEC_core_motifs{142} = '{ [1  2], [2  3], [2  4], [5] }'; 

mEC{143} = [ 8536:8551 ]; 
mEC_label{143} = 'mEC 143: four 2-cliques (v1) [16 graphs] Group IV (graphs [8536:8551])'; 
mEC_core_motifs{143} = '{ [1  2], [2  3], [3  4], [4  5] }'; 

mEC{144} = [ 8552:8557 ]; 
mEC_label{144} = 'mEC 144: four 2-cliques (v2) [6 graphs] Group IV (graphs [8552:8557])'; 
mEC_core_motifs{144} = '{ [1  2], [2  3], [2  4], [4  5] }'; 

mEC{145} = [ 8558 ]; 
mEC_label{145} = 'mEC 145: four 2-cliques (v3) [1 graph] Group IV (graph 8558)'; 
mEC_core_motifs{145} = '{ [1  2], [2  3], [2  4], [2  5] }'; 

mEC{146} = [ 8559:8578 ]; 
mEC_label{146} = 'mEC 146: four 2-cliques (v4) [20 graphs] Group IV (graphs [8559:8578])'; 
mEC_core_motifs{146} = '{ [1  2], [1  4], [2  3], [3  4] }'; 

mEC{147} = [ 8579:8581 ]; 
mEC_label{147} = 'mEC 147: four 2-cliques + sink [3 graphs] Group IV (graphs [8579:8581])'; 
mEC_core_motifs{147} = '{ [1  2], [1  4], [2  3], [3  4], [5] }'; 

mEC{148} = [ 8582:8584 ]; 
mEC_label{148} = 'mEC 148: five 2-cliques (v1) [3 graphs] Group IV (graphs [8582:8584])'; 
mEC_core_motifs{148} = '{ [1  2], [1  4], [2  3], [3  4], [4  5] }'; 

mEC{149} = [ 8585 ]; 
mEC_label{149} = 'mEC 149: five 2-cliques (v2) [1 graph] Group IV (graph 8585)'; 
mEC_core_motifs{149} = '{ [1  2], [1  5], [2  3], [3  4], [4  5] }'; 

mEC{150} = [ 8586 ]; 
mEC_label{150} = 'mEC 150: six 2-cliques [1 graph] Group IV (graph 8586)'; 
mEC_core_motifs{150} = '{ [1  2], [1  4], [2  3], [2  5], [3  4], [4  5] }'; 

mEC{151} = [ 8587:9350 ]; 
mEC_label{151} = 'mEC 151: sink [764 graphs] Group IV (graphs [8587:9350])'; 
mEC_core_motifs{151} = '{ [1] }'; 

mEC{152} = [ 9351:9571 ]; 
mEC_label{152} = 'mEC 152: two sinks [221 graphs] Group IV (graphs [9351:9571])'; 
mEC_core_motifs{152} = '{ [1], [2] }'; 

mEC{153} = [ 9572:9603 ]; 
mEC_label{153} = 'mEC 153: three sinks [32 graphs] Group IV (graphs [9572:9603])'; 
mEC_core_motifs{153} = '{ [1], [2], [3] }'; 

mEC{154} = [ 9604:9607 ]; 
mEC_label{154} = 'mEC 154: four sinks [4 graphs] Group IV (graphs [9604:9607])'; 
mEC_core_motifs{154} = '{ [1], [2], [3], [4] }'; 

mEC{155} = [ 9608 ]; 
mEC_label{155} = 'mEC 155: five sinks [1 graph] Group IV (graph 9608)'; 
mEC_core_motifs{155} = '{ [1], [2], [3], [4], [5] }'; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

% mEC_start gives a list of the first graph in each mEC class
mEC_start = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15,  ... 
16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30,  ... 
31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 53, 55, 59, 61, 62,  ... 
119, 126, 130, 138, 145, 147, 149, 151, 152, 153, 154, 261, 272, 280, 284,  ... 
292, 308, 310, 312, 315, 318, 319, 321, 322, 323, 324, 325, 326, 327, 328,  ... 
329, 599, 661, 665, 717, 865, 879, 882, 896, 908, 910, 917, 921, 962, 967,  ... 
973, 976, 978, 980, 981, 982, 983, 1032, 1038, 1048, 1050, 1052, 1053, 1054, 1055,  ... 
1075, 1079, 1082, 1084, 1085, 1653, 1780, 1789, 1895, 2097, 2116, 2120, 2140, 2152, 2155,  ... 
2167, 2222, 2229, 2233, 2239, 2241, 2243, 2244, 2245, 5032, 6056, 6162, 6168, 7047, 7910,  ... 
7995, 8176, 8187, 8339, 8485, 8517, 8531, 8536, 8552, 8558, 8559, 8579, 8582, 8585, 8586,  ... 
8587, 9351, 9572, 9604, 9608 ];  


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

% mEC_end gives a list of the last graph in each mEC class
mEC_end = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15,  ... 
16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30,  ... 
31, 32, 33, 34, 35, 36, 37, 38, 39, 52, 54, 58, 60, 61, 118,  ... 
125, 129, 137, 144, 146, 148, 150, 151, 152, 153, 260, 271, 279, 283, 291,  ... 
307, 309, 311, 314, 317, 318, 320, 321, 322, 323, 324, 325, 326, 327, 328,  ... 
598, 660, 664, 716, 864, 878, 881, 895, 907, 909, 916, 920, 961, 966, 972,  ... 
975, 977, 979, 980, 981, 982, 1031, 1037, 1047, 1049, 1051, 1052, 1053, 1054, 1074,  ... 
1078, 1081, 1083, 1084, 1652, 1779, 1788, 1894, 2096, 2115, 2119, 2139, 2151, 2154, 2166,  ... 
2221, 2228, 2232, 2238, 2240, 2242, 2243, 2244, 5031, 6055, 6161, 6167, 7046, 7909, 7994,  ... 
8175, 8186, 8338, 8484, 8516, 8530, 8535, 8551, 8557, 8558, 8578, 8581, 8584, 8585, 8586,  ... 
9350, 9571, 9603, 9607, 9608 ];  


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

% mECs containing at least one graph that has a core motif with *no* corresponding attractor: 
% (there are 14 such mECs) 
mECs_missing_att = [ 46, 48, 49, 51, 57, 58, 61, 64, 66, 67, 68, 69, 74, 75 ];  

% Graphs that have a core motif with *no* corresponding attractor: 
% (there are 19 such graphs) 
graphs_missing_att = [ 124, 133, 136, 139, 142, 143, 144, 148, 267, 276,  ... 
279, 293, 299, 305, 314, 319, 320, 322, 328 ];  

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

% mECs containing at least one graph with parameter dependent core motifs: 
% (there are 10 such mECs) 
mECs_param_dep = [ 12, 32, 33, 45, 46, 48, 49, 51, 67, 69 ];  

% Graphs that have parameter dependent core motifs: 
% (there are 19 such graphs) 
graphs_param_dep = [ 12, 32, 33, 86, 93, 97, 113, 117, 124, 133, 136, 139, 142, 143, 144,  ... 
148, 319, 320, 322 ];  

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

save('n5_mECs.mat', 'mEC', 'mEC_label','mEC_notes', 'mEC_core_motifs', 'mEC_start', 'mEC_end', 'mECs_missing_att', 'graphs_missing_att', 'mECs_param_dep', 'graphs_param_dep') 
