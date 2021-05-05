# -*- coding: utf-8 -*-
# @Author: GUNK
# @Date:   2021-01-28 20:42:20
# @Last Modified by:   GUNK
# @Last Modified time: 2021-01-30 16:26:43
# -*- coding: utf-8 -*-
# @Author: GUNK
# @Date:   2021-01-27 09:05:46
# @Last Modified by:   GUNK
# @Last Modified time: 2021-01-28 20:41:48
Dict = dict()
Stack = []
AimFiles = []
MainIndex = 0
#0-->Main Index is Nand, 1-->Main Index is DFF
def SearchNum(filename):
	NowNand = 0
	NowDFF = 0
	# print(filename);
	fo = open(filename, "r")
	Text = fo.read()
	pattern1 = re.compile(r"M\w+\(")
	res = pattern1.findall(Text)

	for subchip in res:
		subchip = ".\\" + subchip[:-1] + ".hdl"
		if subchip in Dict:
			NowNand += Dict[subchip][0]
			NowDFF  += Dict[subchip][1]
		else:
			SearchNum(subchip)
			NowNand += Dict[subchip][0]
			NowDFF  += Dict[subchip][1]

	pattern2 = re.compile(r"Nand\(")
	pattern3 = re.compile(r"DFF\(")
	res2 = pattern2.findall(Text)
	res3 = pattern3.findall(Text)
	NowNand += len(res2)
	NowDFF += len(res3)			 
	Dict[filename] = (NowNand, NowDFF)
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
	
	sorted_dict = dict(sorted(Dict.items(), key = lambda d:d[1][MainIndex]))
	sorted_allfile = list(sorted_dict)
	# print(sorted_allfile)
	tb = PrettyTable()
	tb.field_names = ["Module Name", "Number of Nand Gates", "Number of DFF Gates"]
	for file in sorted_allfile:
		tb.add_row([file[3:-4], sorted_dict[file][0], sorted_dict[file][1]])
		
	print(tb)
