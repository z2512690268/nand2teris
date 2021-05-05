/*
* @Author: GUNK
* @Date:   2021-02-07 20:29:30
* @Last Modified by:   GUNK
* @Last Modified time: 2021-02-17 21:41:37
* @Edited with: sublime Text 3
* @Language: cpp
* @descriptions:
*/

#ifndef _JACKTOKENIZER_H
#define _JACKTOKENIZER_H

#include <iostream>
#include <string>
#include <fstream>
#include <sstream>
namespace JackCompiler {
	using std::string;
	using std::ifstream;
	using std::stringstream;
	class JackTokenizer
	{
	private:
		stringstream OneLine;
		int ExplainFlag = false;
		int StrPos;
		void Del_SingleExplain(string& str);
		void Del_MultiExplain(string& str);
		void Add_space(string& str);
		bool IsNum(string str);
	protected:
		string TempIns;
		enum TokenTypes{
			T_NOTYPE,
			T_KEYWORD,
			T_SYMBOL,
			T_IDENTIFIER,
			T_INT_CONST,
			T_STRING_CONST
		};		
		static const int NumberOfSymbols = 20;
		static const int NumberOfKeywords = 21;
		const char Symbols[NumberOfSymbols + 1] = "{}()[].,;+-*/&|<>=~\"";
		const string KeyWords[NumberOfKeywords] = {
			"class",	"constructor",	"function",	"method",	"field",
			"static", 	"var", 			"int", 		"char", 	"boolean", 
			"void", 	"true", 		"false",	"null", 	"this",
			"let", 		"do", 			"if", 		"else", 	"while", 
			"return"
		};
		ifstream fin;
		string PresentIns;	
		int Type;
	public:
		JackTokenizer(const string& filename);
		~JackTokenizer();
		void ChangeFile(const string& NewFile);
		bool hasMoreCommands();			
		int advance();				
		int tokenType();						//放回字元类型		
		string keyword();						//返回关键字，当tokenType()为T_KEYWORD时使用
		char symbol();							//返回当前字元字符				
		string identifier();					//返回标识符
		int intVal();							//返回整数值
		string stringVal();						//返回字符串常量值
	};
}


#endif