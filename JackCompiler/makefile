FILE = JackCompiler
BIN = ./bin
SRC = ./src


COMPILER = g++10
CompileArg = -std=c++2a -g
Debugger = gdb10


MAIN = $(FILE).cpp
INITCPPS = $(wildcard *.cpp) $(wildcard *.cc)
INITHS = $(wildcard *.h)
CPPS = $(wildcard ./src/*.cc)
HS = $(wildcard ./src/*.h)
ARG =ComplexArrays

init:
	test -d src || mkdir src
	test -d bin || mkdir bin
	$(foreach cpp, $(INITCPPS), mv $(cpp) ./src/;)
	$(foreach h, $(INITHS), mv $(h) ./src/;)

clean:
	rm -frv $(BIN)/*

build:
	$(COMPILER) $(CompileArg) $(CPPS) $(SRC)/$(MAIN) -o $(BIN)/$(FILE).exe

run: 
	$(BIN)/$(FILE).exe $(ARG)

gdb:
	$(Debugger) --args $(BIN)/$(FILE).exe $(ARG)

compare:
	TextComparer $(ARG).xml my$(ARG).xml