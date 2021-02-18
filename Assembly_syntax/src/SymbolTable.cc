/*
* @Author: GUNK
* @Date:   2021-02-02 12:20:01
* @Last Modified by:   GUNK
* @Last Modified time: 2021-02-02 17:40:03
* @Edited with: sublime Text 3
* @Language: cpp
* @descriptions:
*/
#include "SymbolTable.h"
#include <map>
namespace HackAsm
{
	SymbolTable::SymbolTable()
	{
		addEntry("R0", 0);
		addEntry("R1", 1);
		addEntry("R2", 2);
		addEntry("R3", 3);
		addEntry("R4", 4);
		addEntry("R5", 5);
		addEntry("R6", 6);
		addEntry("R7", 7);
		addEntry("R8", 8);
		addEntry("R9", 9);
		addEntry("R10", 10);
		addEntry("R11", 11);
		addEntry("R12", 12);
		addEntry("R13", 13);
		addEntry("R14", 14);
		addEntry("R15", 15);
		addEntry("SP", 0);
		addEntry("LCL", 1);
		addEntry("ARG", 2);
		addEntry("THIS", 3);
		addEntry("THAT", 4);
		addEntry("SCREEN", 0x4000);
		addEntry("KBD", 0x6000);
	}
	void SymbolTable::addEntry(const string& symbol, const int& address){
		Table[symbol] = address;
	}
	bool SymbolTable::contains(const string& symbol)
	{
		return Table.find(symbol) != Table.end();
	}
	int SymbolTable::GetAddress(const string& symbol)
	{
		return Table[symbol];
	}
}