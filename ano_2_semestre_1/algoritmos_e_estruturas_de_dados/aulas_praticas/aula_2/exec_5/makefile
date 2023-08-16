#
# Tomás Oliveira e Silva, AED, October 2021
#
# makefile to compile all programs for the AED P.02 computer lab class
#

clean:
	rm -f a.out
	rm -f hello
	rm -f table solution_table table.txt
	rm -f sizes main.o sizes.o sizes_32 sizes_64
	rm -f fibonacci fibonacci_m
	rm -f command_line_arguments solution_command_line_arguments
	rm -f integer_arithmetic_pitfalls
	rm -f factor solution_factor
	rm -f rational_approximation solution_rational_approximation
	rm -f binary_search
	rm -f count_words
	rm -f primes



all:		hello table sizes fibonacci command_line_arguments integer_arithmetic_pitfalls factor rational_approximation



hello:		hello.c
	cc -Wall -O2 hello.c -o hello



table:		table.c
	cc -Wall -O2 table.c -o table -lm

solution_table:	solution_table.c
	cc -Wall -O2 solution_table.c -o solution_table -lm


sizes:		main.o sizes.o
	cc main.o sizes.o -o sizes

main.o:		main.c sizes.h
	cc -Wall -O2 -c main.c -o main.o

sizes.o:	sizes.c sizes.h
	cc -Wall -O2 -c sizes.c -o sizes.o



sizes_32:	main.c sizes.c sizes.h
	cc -m32 -Wall -O2 main.c sizes.c -o sizes_32

sizes_64:	main.c sizes.c sizes.h
	cc -m64 -Wall -O2 main.c sizes.c -o sizes_64



fibonacci:		fibonacci.c elapsed_time.h
	cc -Wall -O2 fibonacci.c -o fibonacci -lm

fibonacci_m:		fibonacci_with_a_macro.c elapsed_time.h
	cc -Wall -O2 fibonacci_with_a_macro.c -o fibonacci_m -lm



command_line_arguments:	command_line_arguments.c
	cc -Wall -O2 command_line_arguments.c -o command_line_arguments

solution_command_line_arguments:	solution_command_line_arguments.c
	cc -Wall -O2 solution_command_line_arguments.c -o solution_command_line_arguments



integer_arithmetic_pitfalls:	integer_arithmetic_pitfalls.c
	cc -Wall -O2 integer_arithmetic_pitfalls.c -o integer_arithmetic_pitfalls



factor:		factor.c
	cc -Wall -O2 factor.c -o factor

solution_factor:		solution_factor.c elapsed_time.h
	cc -Wall -O2 solution_factor.c -o solution_factor



rational_approximation:		rational_approximation.c
	cc -Wall -O2 rational_approximation.c -DDEBUG=0 -o rational_approximation -lm

solution_rational_approximation:	solution_rational_approximation.c elapsed_time.h
	cc -Wall -O2 solution_rational_approximation.c -DDEBUG=0 -o solution_rational_approximation -lm



#
# programs with execution errors
#

binary_search:	binary_search.c
	cc -Wall -g binary_search.c -o binary_search

count_words:	count_words.c
	cc -Wall -g count_words.c -o count_words

primes:		primes.c
	cc -Wall -g primes.c -o primes
