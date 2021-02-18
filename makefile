ARG =Pong
Jack2Vm:
	Jack2Vm.exe $(ARG)

Vm2Asm:
	Vm2Asm.exe $(ARG)

Asm2Hack:
	Asm2Hack.exe $(ARG)

all: Jack2Vm Vm2Asm Asm2Hack
