CXX=g++
all: vector

vector: main.o vector.o
	$(CXX) main.o vector.o -o vector

main.o: main.cpp
	$(CXX) -c main.cpp

vector.o: vector.cpp
	$(CXX) -c vector.cpp

start:
	@make -s vector
	@make -s clean
	@make -s run

run:
	./vector

clean:
	rm -rf *.o *.gch

execlean:
	rm vector
