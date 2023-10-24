#
# Tomás Oliveira e Silva, AED, October 2021
#
# makefile to compile all programs for the AED P.03 computer lab class
#

clean:
	rm -f a.out
	rm -f hello
	rm -f table table_0 table_1
	rm -f overload
	rm -f person
	rm -f dot
	rm -f f_template
	rm -f c_template
	rm -f exception

#
# $@ gets replaced by the name of the target
#

hello:		hello.cpp
	c++ -Wall -O2 hello.cpp -o $@

table:		table.cpp
	c++ -Wall -O2 table.cpp -o $@ -lm

table_0:	table.cpp
	c++ -Wall -O2 -DALSO_USE_PRINTF=0 table.cpp -o $@ -lm

table_1:	table.cpp
	c++ -Wall -O2 -DALSO_USE_PRINTF=1 table.cpp -o $@ -lm

overload:	overload.cpp
	c++ -Wall -O2 overload.cpp -o $@ -lm

person:		person.cpp
	c++ -Wall -O2 person.cpp -o $@

dot:		dot.cpp
	c++ -Wall -O2 dot.cpp -o $@

f_template:	f_template.cpp
	c++ -Wall -O2 f_template.cpp -o $@

c_template:	c_template.cpp
	c++ -Wall -O2 c_template.cpp -o $@

exception:	exception.cpp
	c++ -Wall -O2 exception.cpp -o $@
