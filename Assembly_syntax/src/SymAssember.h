/*
* @Author: GUNK
* @Date:   2021-02-02 13:00:42
* @Last Modified by:   GUNK
* @Last Modified time: 2021-02-02 18:07:15
* @Edited with: sublime Text 3
* @Language: cpp
* @descriptions:
*/
 
#ifndef _SYMASSEMBER_H
#define _SYMASSEMBER_H

#include <string>
#include <fstream>
#include "UnSymAssember.h"
#include "SymbolTable.h"
#include "Parser.h"
namespace HackAsm
{
	class SymAssember : public Parser, public Code, public SymbolTable
	{
	protected:
		int NowVarPos = 16;
		std::ofstream fout;
		void MakeSymTable();
		void MakeVarTable();
	public:
		SymAssember(const string &infile, const string &outfile);
		~SymAssember();
		
		void DealOut();
	};
}

#endif