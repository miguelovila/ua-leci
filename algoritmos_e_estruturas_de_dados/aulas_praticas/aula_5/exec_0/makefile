#
# makefile to compile all programs for the AED P.05 computer lab class
#

clean:
	rm -f a.out
	rm -f aStack_demo solution_aStack_demo
	rm -f sList_test
	rm -f lQueue_demo solution_lQueue_demo
	rm -f solution_deque_demo
	rm -f solution_aMinHeap_test
	rm -f count_words solution_count_words

all:			aStack_demo sList_test lQueue_demo count_words


aStack_demo:		aStack_demo.cpp aStack.h
	c++ -Wall -O2 aStack_demo.cpp -o $@

solution_aStack_demo:	solution_aStack_demo.cpp aStack.h
	c++ -Wall -O2 solution_aStack_demo.cpp -o $@


sList_test:		sList_test.cpp sList.h
	c++ -Wall -O2 -std=c++0x sList_test.cpp -o $@


lQueue_demo:		lQueue_demo.cpp lQueue.h
	c++ -Wall -O2 lQueue_demo.cpp -o $@

solution_lQueue_demo:	solution_lQueue_demo.cpp lQueue.h
	c++ -Wall -O2 solution_lQueue_demo.cpp -o $@


solution_deque_demo:	solution_deque_demo.cpp deque.h
	c++ -Wall -O2 solution_deque_demo.cpp -o $@


solution_aMinHeap_test:	solution_aMinHeap_test.cpp solution_aMinHeap.h
	c++ -Wall -O2 solution_aMinHeap_test.cpp -o $@


count_words:		count_words.c hash_table.h
	cc -Wall -O2 count_words.c -o $@

solution_count_words:	solution_count_words.c solution_hash_table.h
	cc -Wall -O2 solution_count_words.c -o $@
