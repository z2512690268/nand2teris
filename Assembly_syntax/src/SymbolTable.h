/*
* @Author: GUNK
* @Date:   2021-02-02 12:14:07
* @Last Modified by:   GUNK
* @Last Modified time: 2021-02-02 17:36:02
* @Edited with: sublime Text 3
* @Language: cpp
* @descriptions:
*/
 
#ifndef _SYMBOLTABLE_H
#define _SYMBOLTABLE_H
#include <map>
#include <string>
namespace HackAsm
{
	using std::string;
	using std::map;
	class SymbolTable
	{
		protected:
			map<string, int> Table;
		public:
			SymbolTable();
			~SymbolTable() {};
			void addEntry(const string& symbol, const int& address);
			bool contains(const string& symbol);
			int GetAddress(const string& symbol);	
	};

}
#endif