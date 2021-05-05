ARG =Pong
JACKS = $(wildcard ./JackOS/*.jack)
Jack2Vm:
	$(foreach jack, $(JACKS), cp $(jack) ./$(ARG);)
	cp ./JackCompiler/bin/JackCompiler.exe .
	mv ./JackCompiler.exe ./Jack2Vm.exe
	Jack2Vm.exe $(ARG)

Vm2Asm:
	cp ./Vmtranslator/bin/TestVmTranslator.exe .
	mv ./TestVmTranslator.exe ./Vm2Asm.exe
	Vm2Asm.exe $(ARG)

Asm2Hack:
	cp ./Assembly_syntax/bin/TestSymAssember.exe .
	mv ./TestSymAssember.exe ./Asm2Hack.exe
	Asm2Hack.exe $(ARG)

all: Jack2Vm Vm2Asm Asm2Hack

rebuild:./JackCompiler/bin/JackCompiler.exe ./Vmtranslator/bin/TestVmTranslator.exe ./Assembly_syntax/bin/TestSymAssember.exe
	cp ./JackCompiler/bin/JackCompiler.exe .
	mv ./JackCompiler.exe ./Jack2Vm.exe
	cp ./Vmtranslator/bin/TestVmTranslator.exe .
	mv ./TestVmTranslator.exe ./Vm2Asm.exe
	cp ./Assembly_syntax/bin/TestSymAssember.exe .
	mv ./TestSymAssember.exe ./Asm2Hack.exe
