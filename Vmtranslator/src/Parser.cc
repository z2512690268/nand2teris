/*
* @Author: GUNK
* @Date:   2021-02-01 08:28:05
* @Last Modified by:   GUNK
* @Last Modified time: 2021-02-18 06:39:58
* @Edited with: sublime Text 3
* @Language: cpp
* @descriptions:
*/
#include "Parser.h"
#include <iostream>
#include <string>
#include <cstdlib>
#include <cstdio>
#include <algorithm>
#include <sstream>
namespace VmTranslator
{
	using std::string;
	using std::cout;
	using std::endl;
	void Parser::Del_Explain(string& str)
	{
		int pos = str.find("//");
		if (pos != string::npos)
		{
			str.erase(str.begin() + pos, str.end());
		}
		return ;
	}
	void Parser::Del_space(string& str)
	{
		string::iterator end_pos = std::remove(str.begin(), str.end(), ' ');
		str.erase(end_pos, str.end());
	}
	Parser::Parser(const string& filename) : fin(filename.c_str(), std::ios::in){
		if(!fin){
			std::cerr << "Parser : File open error" << endl;
			std::exit(EXIT_FAILURE);
		}
	}	
	Parser::~Parser()
	{
		if(fin.is_open())
		{
			fin.close();
		}
	}
	void Parser::ChangeFile(const string& NewFile)
	{
		if(fin.is_open()){
			fin.close();
		}
		if(!fin.is_open()){
			fin.open(NewFile.c_str(), std::ios::in);
			if(!fin){
				std::cerr << "File open error" << endl;
				std::exit(EXIT_FAILURE);
			}
		}
	}
	bool Parser::hasMoreCommands()
	{
		return (fin.peek() != EOF);
	}
	void Parser::advance(){
		getline(fin, PrensentIns);
		Del_Explain(PrensentIns);
	}
	int Parser::commandType()
	{
		if(PrensentIns.find("push") != string::npos)		return Type = C_PUSH;
		if(PrensentIns.find("pop") != string::npos)			return Type = C_POP;
		if(PrensentIns.find("label") != string::npos)		return Type = C_LABEL;
		if(PrensentIns.find("function") != string::npos)	return Type = C_FUNCTION;
		if(PrensentIns.find("return") != string::npos)		return Type = C_RETURN;
		if(PrensentIns.find("if-goto") != string::npos)		return Type = C_IF;
		//if-goto必须在goto前面，否则就会被错误翻译成goto
		if(PrensentIns.find("goto") != string::npos)		return Type = C_GOTO;
		if(PrensentIns.find("call") != string::npos)		return Type = C_CALL;
		for(int i = 0; i < NumberOfAri; ++i){
			if(PrensentIns.find(ArithmeticCmd[i]) != string::npos) 
				return Type = C_ARITHMETIC;
		}
		for(int i = 0; i < NumberOfJud; ++i){
			if(PrensentIns.find(JudgeCmd[i]) != string::npos) 
				return Type = C_JUDGE;
		}
		return Type = NO_COMMAND;
	}
	string Parser::Cmd()
	{
		string cmd;
		std::stringstream ss(PrensentIns);
		ss >> cmd;
		return cmd;
	}
	string Parser::Arg1()
	{
		string cmd, first;
		std::stringstream ss(PrensentIns);
		ss >> cmd >> first;
		return first;
	}
	string Parser::Arg2()
	{
		string cmd, first, second;
		std::stringstream ss(PrensentIns);
		ss >> cmd >> first >> second;
		return second.c_str();
	}
}