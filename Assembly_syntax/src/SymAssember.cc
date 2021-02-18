/*
* @Author: GUNK
* @Date:   2021-02-02 16:49:34
* @Last Modified by:   GUNK
* @Last Modified time: 2021-02-02 20:17:09
* @Edited with: sublime Text 3
* @Language: cpp
* @descriptions:
*/
#include <iostream>
#include <fstream>
#include <string>
#include <sstream>
#include "HackAsm.h"
#include "SymAssember.h"
#include "Parser.h"
namespace HackAsm
{
	using std::string;
	using std::endl;
	SymAssember::SymAssember(const string &infile, const string &outfile) : Parser(infile), fout(outfile) {
		MakeSymTable();
		fin.seekg(0, std::ios::beg);
		MakeVarTable();
		fin.seekg(0, std::ios::beg);
	}

	SymAssember::~SymAssember()
	{
		if(fout.is_open()){
			fout.close();
		}
	}
	void SymAssember::MakeSymTable()
	{
		while(hasMoreCommands())
		{
			advance();
			int Type = commandType();
			if(Type == Parser::L_COMMAND)
			{
				addEntry(symbol(), cnt);
			}
		}
	}
	void SymAssember::MakeVarTable()
	{
		while(hasMoreCommands())
		{
			advance();
			int Type = commandType();
			if(Type == Parser::A_COMMAND)
			{
				string index = symbol();
				if(!contains(index) && !IsNum(index))
				{
					addEntry(index, NowVarPos);
					NowVarPos++;
				}
			}
		}
	}
	
	void SymAssember::DealOut()
	{
		// for(auto it = SymbolTable::Table.begin(); it != SymbolTable::Table.end(); it++)
		// {
		// 	std::cout << it->first << " " << it->second << std::endl;
		// }
		while(hasMoreCommands())
		{
			advance();
			int Type = commandType();
			if(Type == Parser::A_COMMAND){
				string index = Parser::symbol();
				if(contains(index))
				{
					fout << Dec2Bin(std::to_string(GetAddress(index))) << endl;
				}
				else if(IsNum(index))
				{
					fout << Dec2Bin(index) << endl;
				}
			}
			else if(Type == Parser::C_COMMAND){
				fout << "111" << Code::comp(Parser::comp()) << Code::dest(Parser::dest()) << Code::jump(Parser::jump()) << endl; 
			}
		}
	}
}