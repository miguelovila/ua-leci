CXX = g++
CXXFLAGS = -Wall -Wfatal-errors -ggdb -pthread

TARGETS = bb-unsafe bb-safe

.PHONY:	all clean cleanall

all: $(TARGETS)

bb-unsafe: main.o bwdelay.o fifo-unsafe.o thread.o utils.o
	$(CXX) -o $@ $^ $(CXXFLAGS)

bb-safe: main.o bwdelay.o fifo-safe.o thread.o utils.o
	$(CXX) -o $@ $^ $(CXXFLAGS)

clean:
	rm -f *.o

cleanall:	clean
	rm -f $(TARGETS) 
