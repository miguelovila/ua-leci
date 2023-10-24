#
# (C) Tomás Oliveira e Silva, AED, November 2022
#
# makefile to compile all programs for the AED P.07 computer lab class
#

clean:
	rm -fv a.out
	rm -fv sorting_methods solution_sorting_methods

MAIN=sorting_methods.c
AUX=bubble_sort.c shaker_sort.c insertion_sort.c Shell_sort.c quick_sort.c merge_sort.c heap_sort.c tree_sort.c rank_sort.c selection_sort.c

sorting_methods:	$(MAIN) $(AUX) sorting_methods.h
	cc -Wall -O2 $(MAIN) $(AUX) -o sorting_methods -lm

solution_sorting_methods:	solution_sorting_methods.c $(AUX) sorting_methods.h
	cc -Wall -O2 solution_sorting_methods.c $(AUX) -o solution_sorting_methods -lm
