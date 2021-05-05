/*
* @Author: GUNK
* @Date:   2021-02-07 20:47:33
* @Last Modified by:   GUNK
* @Last Modified time: 2021-02-14 16:08:33
* @Edited with: sublime Text 3
* @Language: cpp
* @descriptions:
*/
 
#ifndef _COMPILATIONENGINE_H
#define _COMPILATIONENGINE_H

#include <fstream>
#include <iostream>
#include <string>
#include "JackTokenizer.h"
namespace JackCompiler {
	using std::string;
	class CompilationEngine : public JackTokenizer{
		private:
			int TabCnt = 0;
			std::ofstream fout;
			const string PrintEndString[6] = {"", "keyword", "symbol", "identifier", "integerConstant", "stringConstant"};
			const string op = "+-*/&|<>=";		
		public:
			CompilationEngine(const string& infile, const string& outfile);
			~CompilationEngine();
			void compileClass();
			void complieClassVarDec();
			void compileSubroutine();
			void compileSubroutineBody();
			void compileParameterList();
			void compileVarDec();
			void compileStatements();
			void compileDo();
			void compileLet();
			void compileWhile();
			void compileReturn();
			void compileIf();
			void compileExpression();
			void compileTerm();
			void compileExpressionList();
			void compileCall();
	};
}

#endif