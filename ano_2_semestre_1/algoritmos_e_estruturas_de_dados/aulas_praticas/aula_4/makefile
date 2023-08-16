#
# Tomás Oliveira e Silva, AED, October 2021
#
# makefile to compile all programs for the AED P.04 computer lab class
#

clean:
	rm -f a.out
	rm -f functions functions_extra solution_functions
	rm -f find_pairs
	rm -f examples
	rm -f solution_fusc


#
# $^ gets replaced by the list of dependencies (prerequisites) amd $@ by the target
#

functions:		functions.c
	cc -Wall -O2 $^ -o $@

functions_extra:	functions_extra.c
	cc -Wall -O2 $^ -o $@

solution_functions:	solution_functions.c
	cc -Wall -O2 $^ -o $@


find_pairs:		find_pairs.c
	cc -Wall -O2 $^ -o $@


examples:	examples.c
	cc -Wall -O2 examples.c -o $@ -lm


solution_fusc:		solution_fusc.c
	cc -Wall -O2 $^ -o $@
