# n5-graphs-package
Classification of directed graphs on n=5 nodes based on CTLN dynamics.

1. Motif Equivalence Classes (mECs)

	There are 9608 simple directed graphs on n=5 nodes. We have organized them into 155 motif equivalence classes (mECs) based on their core motif structure.

	n5_mECs_README_aug16.pdf/docx has a list of all 155 mECs and their core motif structures. It is useful to have a printout of this file as a classification key to use while exploring graphs and attractors.

2. Dynamic Attractors

	Only mECs 1-103, representing graphs 1-1053, have dynamic attractors. The remaining 8555 graphs in mECs 104-155 have only stable fixed point attractors, corresponding to cliques.

	n5_mECs_aug16.pdf/pptx contains pictures of all distinct dynamic attractors that arise within each mEC.

	n5_attECs_aug16.pdf/pptx organizes the dynamic attractors by type, highlighting the similarities between attractors that recur across different graphs and mECs.

3. Matlab code

	The main function for the user is quick_plot.m. For example, the command
	
	> quick_plot(20) 
	
	produces a plot of graph 20 and a CTLN solution that converges to an attractor.

	quick_plot_script.m is a script with several sample calls to quick_plot. One can vary initial conditions, CTLN parameters, and choose a sequence of graphs to plot in a specified order.

	mEC_catalogue_script.m and special_attractors_script.m are scripts that were used to generate the plots in the slide shows n5_mECs_aug16.pdf/pptx and n5_attECs_aug16.pdf/pptx. These scripts also consist of repeated calls to quick_plot.

	The functions align_graph.m and align_graph_KM.m are two variants on graph alignment routines that were used to find good permutations of the nodes of each graph. Good permutations are essential to ensure that equivalent core motifs, and their corresponding attractors, are aligned across graphs in the same equivalence class. This also allowed us to detect "by eye" when attractors across mECs were equivalent.

4. Makefiles

	The makefiles make_n5_digraphs.m, make_n5_mECs.m, and make_n5_X0_eps0_51_delta1_76.m are scripts that generate the .mat files n5_digraphs.mat, n5_mECs.mat, and n5_X0_eps0_51_delta1_76.mat, respectively. A user who already has the .mat files need not use these makefiles, but they serve as a textual reference.

5. Talk Slides

	The presentations CNeuro-SummerSchool-2020-Part1.pptx and CNeuro-SummerSchool-2020-Part2.pptx are parts 1 and 2 of a talk at a computational neuroscience summer school given on Aug 19, 2020. This provides background on TLNs and CTLNs, context for the n=5 classification, and summarizes a variety of mathematical and computational results that have been obtained about these networks.

6. Graph Calculator

	It may not be easy to figure out which of the 9608 graphs in our classification matches a given n=5 graph. The following graph calculator returns the correct graph number for a user-input graph.
	
	https://joshyp.shinyapps.io/n5_calculator/
	
	The calculator was last updated on September 19, 2020.

Created by Carina Curto and Katherine Morrison (PIs) in collaboration with Caitlyn Parmelee, Sumita Garai, and Joshua Paik. August 16, 2020. This README file was last updated on September 19, 2020, to add a link to the graph calculator.
