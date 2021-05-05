/*
* @Author: GUNK
* @Date:   2021-02-14 16:07:33
* @Last Modified by:   GUNK
* @Last Modified time: 2021-02-24 19:41:57
* @Edited with: sublime Text 3
* @Language: cpp
* @descriptions:
*/
 
#ifndef _JACKCOMPILER_H
#define _JACKCOMPILER_H

#include <fstream>
#include <iostream>
#include <string>
#include "JackTokenizer.h"
#include "SymbolTable.h"
#include "VMWriter.h"
namespace JackCompiler {
	using std::string;
	class JackCompiler : public JackTokenizer, public SymbolTable, public VMWriter{
		private:
			// int TabCnt = 0;
			int IfCnt = 0;
			int WhileCnt = 0;
			int StrCallCnt = 0;
			const string PrintEndString[6] = {"", "keyword", "symbol", "identifier", "integerConstant", "stringConstant"};
			const string op = "+-*/&|<>=";		
			string ClassName;
			string op2str(const string& Op);
			string kind2seg(const string& kind);
		public:
			JackCompiler(const string& infile, const string& outfile);
			~JackCompiler();
			void compileClass();
			void complieClassVarDec();
			void compileSubroutine();
			void compileVarDecs();
			int compileParameterList();
			int compileVarDec();
			void compileStatements();
			void compileDo();
			void compileLet();
			void compileWhile();
			void compileReturn();
			void compileIf();
			void compileExpression();
			void compileTerm();
			int compileExpressionList();
			void compileCall();
	};
}

#endif