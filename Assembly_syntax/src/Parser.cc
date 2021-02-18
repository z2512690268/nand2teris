/*
* @Author: GUNK
* @Date:   2021-02-01 08:28:05
* @Last Modified by:   GUNK
* @Last Modified time: 2021-02-02 18:12:33
* @Edited with: sublime Text 3
* @Language: cpp
* @descriptions:
*/
#include <iostream>
#include <string>
#include <cstdlib>
#include <cstdio>
#include "Parser.h"
namespace HackAsm
{
	using std::string;
	using std::cout;
	using std::endl;
	void Parser::DeleteExplain(string& str)
	{
		int pos = str.find("//");
		if (pos != string::npos)
		{
			str.erase(str.begin() + pos, str.end());
		}
		return ;
	}
	Parser::Parser(const char * filename) : fin(filename, std::ios::in){
		if(!fin){
			std::cerr << "File open error" << endl;
			std::exit(EXIT_FAILURE);
		}
	}		
	Parser::Parser(const string& filename) : fin(filename.c_str(), std::ios::in){
		if(!fin){
			std::cerr << "File open error" << endl;
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
	bool Parser::hasMoreCommands()
	{
		return (fin.peek() != EOF);
	}
	void Parser::advance(){
		getline(fin, PrensentIns);
		DeleteExplain(PrensentIns);
	}
	int Parser::commandType()
	{
		int first = PrensentIns.find_first_not_of(" ");
		if(first != string::npos){
			if(PrensentIns[first] == '@'){
				cnt++;
				return Type = A_COMMAND;
			}
			else if(PrensentIns[first] == '('){
				return Type = L_COMMAND;
			}
			else if(PrensentIns[first] == '/')
				return Type = No_COMMAND;
			else {
				cnt++;
				return Type = C_COMMAND;
			}
		}
		else
			return Type = No_COMMAND;
	}
	string Parser::symbol()
	{
		if(Type == A_COMMAND) {
			int first = PrensentIns.find_first_not_of(" @\n");
			return Del_space(PrensentIns.substr(first));
		}
		if(Type == L_COMMAND) {
			int first = PrensentIns.find_first_of("(");
			int last = PrensentIns.find_first_of(")");
			return Del_space(PrensentIns.substr(first + 1, last - first - 1));
		}
		return "";
	}
	string Parser::dest()
	{
		if(Type == C_COMMAND) {
			int first = PrensentIns.find_first_not_of(" ");
			int semi = PrensentIns.find_first_of("=");
			if(semi != string::npos)
				return Del_space(PrensentIns.substr(first, semi - first));
			else
				return "";
		}
		return "";
	}
	string Parser::comp()
	{
		if(Type == C_COMMAND) {
			int first = PrensentIns.find_first_of("=");
			int semi = PrensentIns.find(";");
			if(first != string::npos) {
				if(semi != string::npos)
					return Del_space(PrensentIns.substr(first + 1, semi - first - 1));
				else
					return Del_space(PrensentIns.substr(first + 1));
			}
			else
				if(semi != string::npos)
					return Del_space(PrensentIns.substr(0, semi));
				else
					return Del_space(PrensentIns);
		}	
		return "";
	}
	string Parser::jump()
	{
		if(Type == C_COMMAND) {
			int first = PrensentIns.find_first_of(";");
			if(first != string::npos)
				return Del_space(PrensentIns.substr(first + 1));
			else
				return "";
		}
		return "";
	}
}