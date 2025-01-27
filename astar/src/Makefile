CC = g++ -O3 -Wall -std=c++11 -Wpadded
SRCFILES = graph.cpp heuristics.cpp algorithms.cpp benchmarks.cpp main.cpp

PHONY: all
all: $(SRCFILES)
	$(CC) -o main -lm $(SRCFILES)

clean:
	rm main 