/*
* @Author: GUNK
* @Date:   2021-02-08 19:47:47
* @Last Modified by:   GUNK
* @Last Modified time: 2021-02-17 21:43:37
* @Edited with: sublime Text 3
* @Language: cpp
* @descriptions:
*/
#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <cstring>
#include <sstream>
#include <cstdlib>
#include "JackTokenizer.h"
namespace JackCompiler
{
	using std::string;
	using std::cout;
	using std::endl;
	JackTokenizer::JackTokenizer(const string& filename)
		: fin(filename.c_str(), std::ios::in){
		if(!fin){
			std::cerr << "JackTokenizer : Input File open error" << endl;
			std::exit(EXIT_FAILURE);
		}
	}	
	JackTokenizer::~JackTokenizer()
	{ 
		if(fin.is_open())
		{
			fin.close();
		}
	}

	void JackTokenizer::Del_SingleExplain(string& str)
	{
		int pos = str.find("//");
		if (pos != string::npos)
		{
			str.erase(str.begin() + pos, str.end());
		}
		return ;
	}
	void JackTokenizer::Del_MultiExplain(string& str)
	{
		int pos, beg = 0;
		if(ExplainFlag == 0){
			pos = str.find("/*");
			if(pos != string::npos){
				beg = pos;
				ExplainFlag = 1;
			}
		}
		while(ExplainFlag == 1){
			pos = str.find("*/");
			if(pos != string::npos){
				str = str.replace(beg, pos - beg + 2, "");
				ExplainFlag = 0;
			}
			else {
				str = str.replace(beg, str.size(), "");
				return ;
			}
			pos = str.find("/*");
			if(pos != string::npos){
				beg = pos;
				ExplainFlag = 1;
			}
		}
	}
	void JackTokenizer::Add_space(string& str)
	{
		int pos = str.find_first_of(Symbols), StrFlag = 0;
		while(pos != string::npos){
			// std::cout << "End of Statement" << " " << TempIns << " #####(2) " << PresentIns << endl;
			if(str[pos] != '"'){
				if(StrFlag){	
					pos = str.find_first_of(Symbols, pos + 1);
					continue;
				}
			}
			else{
				StrFlag = !StrFlag;
			}
			str = str.substr(0, pos) + " " + str[pos] + " " + str.substr(pos + 1);
			pos = str.find_first_of(Symbols, pos + 2);
		}
	}

	bool JackTokenizer::IsNum(string str)
	{
		for(string::iterator it = str.begin(); it < str.end(); it++){
			if(!isdigit(*it))
				return false;
		}
		return true;
	}

	void JackTokenizer::ChangeFile(const string& NewFile)
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

	bool JackTokenizer::hasMoreCommands()
	{
		return (fin.peek() != EOF);
	}

	int JackTokenizer::advance(){
		int flag = 0;
		string StrTmp;
		int StrBeg, StrEnd;
		// std::cout << "End of Statement" << " " << TempIns << " #####(1) " << PresentIns << endl;
		while(!(OneLine >> PresentIns)){
			flag = 1;
			StrPos = 0;
			getline(fin, TempIns);
			Del_SingleExplain(TempIns);
			Del_MultiExplain(TempIns);
			Add_space(TempIns);
			OneLine.str("");
			OneLine.clear();
			OneLine.str(TempIns);
		}
		if(PresentIns == "\""){
			OneLine >> StrTmp;
			while(StrTmp != "\""){
				OneLine >> StrTmp;
			}
			StrBeg = TempIns.find('"', StrPos) + 2;
			StrEnd = TempIns.find('"', StrBeg + 1) - 2;
			StrPos = StrEnd + 1;
			PresentIns = StrTmp + TempIns.substr(StrBeg, StrEnd - StrBeg + 1) + StrTmp;
		}
		tokenType();
		return flag;
	}

	int JackTokenizer::tokenType()
	{
		stringstream ss;
		for(int i = 0; i < NumberOfKeywords; ++i){
			if(PresentIns == KeyWords[i])
				return Type = T_KEYWORD;
		}
		for(int i = 0; i < NumberOfSymbols; ++i){
			if(PresentIns == string(1, Symbols[i])){
				return Type = T_SYMBOL; 
			}
		}
		if(PresentIns.find('"') != string::npos){
			PresentIns = PresentIns.substr(1, PresentIns.size() - 2);
			return Type = T_STRING_CONST;
		}
		if(IsNum(PresentIns))
			return Type = T_INT_CONST;
		if(PresentIns.find('\'') != string::npos){
			ss << atoi(PresentIns.c_str());
			ss >> PresentIns;
			return Type = T_INT_CONST;
		}
		return Type = T_IDENTIFIER;
	}
	string JackTokenizer::keyword()
	{
		return PresentIns;
	}

	char JackTokenizer::symbol(){
		return PresentIns[0];
	}

	string JackTokenizer::identifier(){
		return PresentIns;
	}

	int JackTokenizer::intVal(){
		if(PresentIns[0] == '\'')
			return PresentIns[1];
		else
			return atoi(PresentIns.c_str());
	}

	string JackTokenizer::stringVal(){
		return PresentIns.substr(1, PresentIns.size() - 2);
	}
}