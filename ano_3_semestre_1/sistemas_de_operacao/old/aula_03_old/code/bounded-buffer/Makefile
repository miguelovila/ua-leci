CXX = g++
CXXFLAGS = -Wall -Wfatal-errors -ggdb -pthread

TARGETS = bb-unsafe bb-safe

.PHONY:	clean cleanall

all: $(TARGETS)

bb-unsafe: main.cpp bwdelay.cpp fifo-unsafe.cpp process.cpp utils.cpp
	$(CXX) -o $@ $^ $(CXXFLAGS)

bb-safe: main.cpp bwdelay.cpp fifo-safe.cpp process.cpp utils.cpp
	$(CXX) -o $@ $^ $(CXXFLAGS)

clean:
	rm -f *.o

cleanall:	clean
	rm -f $(TARGETS) 
