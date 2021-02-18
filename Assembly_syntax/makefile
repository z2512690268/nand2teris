FILE = TestSymAssember
BIN = ./bin
SRC = ./src
MAIN = $(FILE).cpp
INITCPPS = $(wildcard *.cpp) $(wildcard *.cc)
INITHS = $(wildcard *.h)
CPPS = $(wildcard ./src/*.cc)
HS = $(wildcard ./src/*.h)

init:
	test -d src || mkdir src
	test -d bin || mkdir bin
	$(foreach cpp, $(INITCPPS), mv $(cpp) ./src/;)
	$(foreach h, $(INITHS), mv $(h) ./src/;)

clean:
	rm -frv $(BIN)/*

build:
	g++ -std=c++11 -g $(CPPS) $(SRC)/$(MAIN) -o $(BIN)/$(FILE).exe

run: 
	$(BIN)/$(FILE).exe Pong