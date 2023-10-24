CXX = g++
CXXFLAGS = -Wall -Wfatal-errors -ggdb -pthread

TARGETS = incdec

.PHONY:	all clean cleanall

all: $(TARGETS)

incdec: main.o bwdelay.o thread.o utils.o
	$(CXX) -o $@ $^ $(CXXFLAGS)

clean:
	rm -f *.o

cleanall:	clean
	rm -f $(TARGETS) 
