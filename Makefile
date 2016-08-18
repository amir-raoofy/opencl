.PHONY: clean
CXX = g++
CXXFLAGS = -g -Wall -std=c++11

INC = -I/sccs/nvd/OpenCL/include/ -I.
LIB = -L/sccs/nvd/ocl-icd/2.2.9/lib/ -lOpenCL

all: test

%.o: %.cpp
	$(CXX) $(CFLAGS) $(INC) $(LIB) -c -o $@ $<

test: test.o
	$(CXX) $(CFLAGS) $(INC) $(LIB) -o $@ $+

clean:
	rm -f *.o core.*
	rm -f test
