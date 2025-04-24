CXX = clang++
CXXFLAGS=-O3 -Xpreprocessor -fopenmp -I/opt/homebrew/opt/libomp/include/
LDFLAGS= -L/opt/homebrew/opt/libomp/lib -lomp

nbody: nbody.cpp
	$(CXX) $(CXXFLAGS) nbody.cpp -o nbody $(LDFLAGS)

solar.out: nbody
	date
	./nbody planet 200 5000000 10000 > solar.out # maybe a minutes
	date

solar.pdf: solar.out
	python3 plot.py solar.out solar.pdf 1000 

random.out: nbody
	date
	./nbody 1000 1 10000 100 > random.out # maybe 5 minutes
	date

clean:
	rm nbody *.tsv 
