FILE =Sys
ARG =$(FILE)Test
JACKS = $(wildcard *.jack)
Jack2Vm:
	$(foreach jack, $(JACKS), cp $(jack) ./$(FILE)Test;)
	Jack2Vm.exe $(ARG)

Vm2Asm:
	Vm2Asm.exe $(ARG)

Asm2Hack:
	Asm2Hack.exe $(ARG)

all: Jack2Vm Vm2Asm Asm2Hack

JackCmp:
	$(foreach jack, $(JACKS), cp $(jack) ./$(FILE)Test;)
	java -classpath "Hack.jar;Compilers.jar" Hack.Compiler.JackCompiler $(ARG)

rebuild:../JackCompiler/bin/JackCompiler.exe ../Vmtranslator/bin/TestVmTranslator.exe ../Assembly_syntax/bin/TestSymAssember.exe
	cp ../JackCompiler/bin/JackCompiler.exe .
	mv ./JackCompiler.exe ./Jack2Vm.exe
	cp ../Vmtranslator/bin/TestVmTranslator.exe .
	mv ./TestVmTranslator.exe ./Vm2Asm.exe
	cp ../Assembly_syntax/bin/TestSymAssember.exe .
	mv ./TestSymAssember.exe ./Asm2Hack.exe