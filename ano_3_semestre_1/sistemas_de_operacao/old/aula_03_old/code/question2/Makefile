CXX = g++
CXXFLAGS = -Wall -Wfatal-errors -ggdb -pthread

TARGETS = q2 q3

.PHONY:	clean cleanall

all: $(TARGETS)

q2:	q2.o process.o utils.o
	$(CXX) -o $@ $^ $(CXXFLAGS)

q3:	q3.o process.o utils.o
	$(CXX) -o $@ $^ $(CXXFLAGS)

clean:
	rm -f *.o

cleanall:	clean
	rm -f $(TARGETS) 
