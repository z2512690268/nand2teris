# -*- coding: utf-8 -*-
# @Author: GUNK
# @Date:   2021-01-27 16:16:39
# @Last Modified by:   GUNK
# @Last Modified time: 2021-01-28 14:51:07
import random
import math
val = []
names = []
bits = 0
OutputNum = 16
def varout(var):
	if isinstance(val[var], str):
		print("set ", names[var], r" %B", val[var], sep = "", end = ", ")
	elif isinstance(val[var], int):
		print("set", names[var], val[var], sep = " ", end = ", ")
	print("")	

def GenerateTests():
	for j in range(0, OutputNum):
		for i in range(0, N):
			if isinstance(val[i], str):
				Len = len(val[i])
				for k in range(0, Len):
					lst = list(val[i])
					lst[k] = str(random.randint(0, 1))
					val[i] = ''.join(lst)
				varout(i)
			elif isinstance(val[i], int):
				val[i] = random.randint(0, 1)	
				varout(i)
		print("eval, ")
		print("output;")
		print("")

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
GenerateTests()