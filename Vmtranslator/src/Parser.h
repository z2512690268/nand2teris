/*
* @Author: GUNK
* @Date:   2021-01-31 09:00:31
* @Last Modified by:   GUNK
* @Last Modified time: 2021-02-18 08:47:04
* @Edited with: sublime Text 3
* @Language: cpp
* @descriptions:
*/
 
#ifndef _PARSER_H
#define _PARSER_H
#include <iostream>
#include <fstream>
#include <cstdio>
#include <string>
namespace VmTranslator
{
	using std::string;
	using std::ifstream;

	class Parser
	{
	protected:
		enum TypeOfCommand{
			NO_COMMAND,
			C_ARITHMETIC,
			C_JUDGE,
			C_PUSH,
			C_POP,
			C_LABEL,
			C_GOTO,
			C_IF,
			C_FUNCTION,
			C_RETURN,
			C_CALL
		};
		static const int NumberOfAri = 6;
		static const int NumberOfJud = 3;
		const string ArithmeticCmd[NumberOfAri] = {"add", "sub", "neg", "and", "or", "not"};
		const string JudgeCmd[NumberOfJud] = { "eq", "gt", "lt"};
		ifstream fin;
		string PrensentIns;	
		int Type;
		void Del_Explain(string& str);
		void Del_space(string& str);
	public:
		Parser(const string& filename);
		~Parser();
		void ChangeFile(const string& NewFile);
		bool hasMoreCommands();			
		void advance();					
		int commandType();
		string Cmd();				
		string Arg1();				
		string Arg2();					
	};
}
#endif