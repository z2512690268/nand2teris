# -*- coding: utf-8 -*-
# @Author: GUNK
# @Date:   2021-01-27 09:05:46
# @Last Modified by:   GUNK
# @Last Modified time: 2021-02-11 09:49:28
Dict = dict()
Stack = []
AimFiles = []

def SearchNum(filename):
	NowSum = 0
	fo = open(filename, "r")
	Text = fo.read()
	pattern1 = re.compile(r"M\w+\(")
	res = pattern1.findall(Text)

	for subchip in res:
		subchip = ".\\" + subchip[:-1] + ".hdl"
		if subchip in Dict:
			NowSum += Dict[subchip]
		else:
			SearchNum(subchip)
			NowSum += Dict[subchip]
	pattern2 = re.compile(r"Nand\(")
	res2 = pattern2.findall(Text)
	NowSum += len(res2)			 
	Dict[filename] = NowSum
	return
from prettytable import PrettyTable
if __name__ == '__main__':
	import re
	import os
	for dir in os.listdir('.'):
		file = os.path.join('.', dir)
		if os.path.splitext(file)[1] == '.hdl':
			AimFiles.append(file)
	
	# print(AimFiles)
	for filenow in AimFiles:
		SearchNum(filenow)

	# AllFile = list(Dict)
	# for file in AllFile:
	# 	print(file[3:-4], Dict[file])
	
	sorted_dict = dict(sorted(Dict.items(), key = lambda d:d[1]))
	sorted_allfile = list(sorted_dict)
	# print(sorted_allfile)
	tb = PrettyTable()
	tb.field_names = ["Module Name", "Number of Nand Gates"]
	for file in sorted_allfile:
		tb.add_row([file[3:-4], sorted_dict[file]])
		
	print(tb)
	print = 1
	