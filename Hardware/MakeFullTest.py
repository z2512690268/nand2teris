# -*- coding: utf-8 -*-
# @Author: GUNK
# @Date:   2021-01-27 16:16:39
# @Last Modified by:   GUNK
# @Last Modified time: 2021-01-28 14:51:19
import random
import math
val = []
names = []
bits = 0
OutputNum = 16
NameOfChip = "test.hdl"
def varout(var):
	if isinstance(val[var], str):
		print("set ", names[var], r" %B", val[var], sep = "", end = ", ")
	elif isinstance(val[var], int):
		print("set", names[var], val[var], sep = " ", end = ", ")
	print("")	

def GenerateTests(n):
	if n == N:
		for i in range(0, N):
			varout(i)
		print("eval, ")
		print("output;")
		print("")
	else:
		if isinstance(val[n], str):
			Len = len(val[n])
			Range = 2**Len
			for i in range(0, Range):
				val[n] = bin(i)[2:].zfill(Len)
				GenerateTests(n + 1)
		elif isinstance(val[n], int):
			val[n] = 0
			GenerateTests(n + 1)
			val[n] = 1
			GenerateTests(n + 1)

def AddVar(thetype = 0, lenth = 0):
	global bits
	if thetype == 0:
		val.append(0)
		bits += 1
	else:
		val.append('0'*lenth);
		bits += lenth

def PrintHeader():
	print("load ", NameOfChip, ".hdl,", sep = "");
	print("output-file ", NameOfChip, ".out,", sep = "");
	print("output-list", end = "");
	for i in range(0, N):
		if isinstance(val[i], int):
			print(" ", names[i], sep = "", end = "");
		elif isinstance(val[i], str):
			print(" ", names[i], "%B1.", len(val[i]), ".1", sep = "", end = "");
	print(";")
	print("");

NameOfChip = input("Enter the name of tested chip:")
N = int(input("Enter the number of vars:"))
for i in range(0, N):
	print("The Name of %d is:"%i)
	names.append(input())
	print("The type of %d is:"%i)
	thetype = int(input())
	if thetype == 0:
		AddVar(0, 0)
	else:
		print("The Size of the set:")
		thelen = int(input())
		AddVar(1, thelen)

PrintHeader()
GenerateTests(0)