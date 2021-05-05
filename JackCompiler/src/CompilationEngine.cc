/*
* @Author: GUNK
* @Date:   2021-02-10 10:44:42
* @Last Modified by:   GUNK
* @Last Modified time: 2021-02-14 16:28:12
* @Edited with: sublime Text 3
* @Language: cpp
* @descriptions:
*/
#include <fstream>
#include <iostream>
#include <string>
#include "CompilationEngine.h"
#define Print() 		fout << Tab << "<" << PrintEndString[Type] << "> " << PresentIns << " </" << PrintEndString[Type] << ">" << endl
#define PrintKey(key) 	fout << Tab << "<" << #key << ">" << endl;

namespace JackCompiler {
	using std::string;
	using std::cout;
	using std::endl;
	CompilationEngine::CompilationEngine(const string& infile, const string& outfile) 
		: JackTokenizer(infile), fout(outfile.c_str()) {};
	CompilationEngine::~CompilationEngine(){
		if(fout.is_open()){
			fout.close();
		}
		if(fout.is_open()){
			cout << "Output file close error" << endl;
		}
	}
	//class : 'class' className '{' classVarDec* subroutineDec* '}'
	void CompilationEngine::compileClass()	//No haed + No Tail
	{
		fout << "<class>" << endl;
		TabCnt++;
		string Tab(TabCnt, '\t');
		advance();	Print();	//'class'
		advance();	Print();	//className
		advance();	Print();	//{
		advance();
		while(PresentIns == "static" || PresentIns == "field"){
			PrintKey(classVarDec);
			complieClassVarDec();
			PrintKey(/classVarDec);
			advance();
		}
		//classVarDec*
		while(PresentIns == "constructor" || PresentIns == "function" || PresentIns == "method"){
			PrintKey(subroutineDec);
			compileSubroutine();
			PrintKey(/subroutineDec);
			advance();
		}
		//classSubroutineDec*
		Print();
		//'}'
		TabCnt--;
		fout << "</class>" << endl;
	}
	//classVarDec : ('static' | 'field') type varName (',' varName)* ';'
	void CompilationEngine::complieClassVarDec(){ //head + No Tail
		TabCnt++;
		string Tab(TabCnt, '\t');
		Print();					//'static' | 'field'
		advance();	Print();		//type
		advance();	Print();		//varName
		advance();
		while(PresentIns != ";"){
			Print();				//','
			advance();	Print();	//varName
			advance();
		}
		Print();					//';'
		TabCnt--;
	}
	//SubroutineDec : ('constructor' | 'function' | 'method') ('void' | type) subroutineName '(' parameterList ')' subroutineBody	
	void CompilationEngine::compileSubroutine(){ //haed + No Tail
		TabCnt++;
		string Tab(TabCnt, '\t');
		Print();				//('constructor' | 'function' | 'method')
		advance();	Print();	//('void' | type)
		advance();	Print();	//subroutineName
		advance();	Print();	//'('
		PrintKey(parameterList);
		compileParameterList();
		PrintKey(/parameterList);
		Print();				//')'
		
		PrintKey(subroutineBody);
		compileSubroutineBody();
		PrintKey(/subroutineBody);

		TabCnt--;
	}
	//SubroutineBody : '{' varDec* statements '}'
	void CompilationEngine::compileSubroutineBody(){ //no head + no tail
		TabCnt++;
		string Tab(TabCnt, '\t');
		advance();	Print();	//'{'
		advance();
		while(PresentIns == "var"){
			PrintKey(varDec);
			compileVarDec();
			PrintKey(/varDec);
			advance();
		}
		//varDec*
		PrintKey(statements);
		compileStatements();	// statements
		PrintKey(/statements);
		Print();	// '}'
		TabCnt--;
	}
	//ParameterList : ( (type varName) (',' type varName)* )?
	void CompilationEngine::compileParameterList() //no head + tail
	{
		TabCnt++;
		string Tab(TabCnt, '\t');
		advance();					
		while(PresentIns != ")"){
			if(PresentIns == ","){
				Print();
				advance();
			}
			Print();				//type
			advance();	Print();	//varName
			advance();
		}
		TabCnt--;
	}
	//varDec : 'var' type varName (',' varName)* ';'
	void CompilationEngine::compileVarDec() //head + no tail
	{
		TabCnt++;
		string Tab(TabCnt, '\t');
		Print();					//'var'
		advance();	Print();		//type
		advance();	Print();		//varName
		advance();
		while(PresentIns == ","){
			Print();			//','
			advance();	Print();	//varName
			advance();
		}
		Print();					//';'
		TabCnt--;
	}
	// statements : statement*
	// statement : letStatement | ifStatement | whileStatement | doStatement | returnStatement
	void CompilationEngine::compileStatements(){//head + tail
		TabCnt++;
		string Tab(TabCnt, '\t');
		string Key;
		while(PresentIns != "}")
		{
			Key = PresentIns;
			fout << Tab << "<" << Key << "Statement>" << endl;
			if(PresentIns == "let")		compileLet();
			if(PresentIns == "if")		compileIf();
			if(PresentIns == "while")	compileWhile();
			if(PresentIns == "do")		compileDo();
			if(PresentIns == "return")	compileReturn();
			fout << Tab << "</" << Key << "Statement>" << endl;
			advance();
		}
		TabCnt--;
	}
	// letStatement : 'let' varName ('[' expresion ']') ? '=' expression ';'
	void CompilationEngine::compileLet()	//head + no tail
	{
		TabCnt++;
		string Tab(TabCnt, '\t');
		Print();					//'let'
		advance();	Print();		//varName
		advance();
		if(PresentIns == "["){
			Print();				//'['
			advance();

			PrintKey(expression);
			compileExpression();
			PrintKey(/expression);
			
			Print();				//']'
		}
		Print();					//'='
		advance();

		PrintKey(expression);
		compileExpression();
		PrintKey(/expression);

		Print();					//';'
		TabCnt--;
	}
	// doStatement : 'do' subroutineCall
	void CompilationEngine::compileDo(){	//head + no tail
		TabCnt++;
		string Tab(TabCnt, '\t');
		Print();					//'do'
		advance();
		compileCall();
		Print();					//';'
		TabCnt--;
	}
	//whileStatement : 'while' '(' expression ')' '{' statements '}'
	void CompilationEngine::compileWhile(){	//head + no tail
		TabCnt++;
		string Tab(TabCnt, '\t');
		Print();					//'while'
		advance();	Print();		//'('
		advance();

		PrintKey(expression);
		compileExpression();
		PrintKey(/expression);

		Print();					//')'
		advance();	Print();		//'{'
		
		advance();
		PrintKey(statements);
		compileStatements();
		PrintKey(/statements);

		Print();					//'}'
		TabCnt--;
	}
	// returnStatement : 'return' expression ';'
	void CompilationEngine::compileReturn()//head + no tail
	{
		TabCnt++;
		string Tab(TabCnt, '\t');
		Print();					//'return'
		advance();
		if(PresentIns != ";"){
			PrintKey(expression);
			compileExpression();
			PrintKey(/expression);
		}
		Print();					// ';'
		TabCnt--;
	}
	// ifStatement : 'if' '(' expression ')' '{' statements '}' 
	void CompilationEngine::compileIf() //head + no tail
	{
		TabCnt++;
		string Tab(TabCnt, '\t');
		Print();						//'if'
		advance();	Print();			//'('
		advance();
		PrintKey(expression);
		compileExpression();
		PrintKey(/expression);
		Print();						//')'
		advance();	Print();			//'{'
		advance();
		PrintKey(statements);
		compileStatements();
		PrintKey(/statements);
		Print();						//'}'
		TabCnt--;
	}

	// expression : term (op term)*
	void CompilationEngine::compileExpression(){//head + tail
		TabCnt++;
		string Tab(TabCnt, '\t');

		PrintKey(term);
		compileTerm();
		PrintKey(/term);

		while(op.find(PresentIns) != string::npos)
		{
			if(PresentIns == "<")
				fout << Tab << "<symbol>" << "&lt;" << "</symbol>" << endl;
			else if(PresentIns == ">")
				fout << Tab << "<symbol>" << "&gt;" << "</symbol>" << endl;
			else if(PresentIns == "&")
				fout << Tab << "<symbol>" << "&amp;" << "</symbol>" << endl;		 
			else
				Print();					//op
			advance();

			PrintKey(term);
			compileTerm();
			PrintKey(/term);

		}
		TabCnt--;
	}
	//term : integerConstant | stringConstant | keywordConst | varName | varName '[' expression ']' | subroutineCall | '(' expression ')' | unaryOp term
	void CompilationEngine::compileTerm(){	//head + tail
		TabCnt++;
		string Tab(TabCnt, '\t');
		if(PresentIns == "("){
			Print();						//'('
			advance();

			PrintKey(expression);
			compileExpression();
			PrintKey(/expression);

			Print();						//')'
			advance();
		}
		else if(PresentIns == "-" || PresentIns == "~"){
			Print();						// "-" | "~"
			advance();						
			PrintKey(term);
			compileTerm();
			PrintKey(/term);
		}
		else {
			compileCall();
		}
		TabCnt--;
	}
	//expressionList : (expression (',' expression)* ) ?
	void CompilationEngine::compileExpressionList(){ // no head + tail
		TabCnt++;
		string Tab(TabCnt, '\t');
		advance();
		if(PresentIns != ")"){
			PrintKey(expression);
			compileExpression();
			PrintKey(/expression);
		}
		while(PresentIns != ")"){
			Print();				//','
			advance();
			PrintKey(expression);
			compileExpression();
			PrintKey(/expression);
		}
		TabCnt--;
	}

	// subroutineCall:	subroutineName '(' expresionList ')' | (className | varName) '.' subroutineName '(' expression ')'
	// Add function : It can also solve the tuple call, because other ways may change too many codes, so I choose to expand the 
	// 		function of compileCall so it can work successfully
	void CompilationEngine::compileCall(){ //head + tail
		string Tab(TabCnt, '\t');
		Print();	//subroutineName | (className | varname)
		advance();
		if(PresentIns == "["){
			Print();					//'['
			advance();
			PrintKey(expression);
			compileExpression();
			PrintKey(/expression);
			Print();					//']'
			advance();
		} 
		else if(PresentIns == "("){
			Print();					//'('
			PrintKey(expressionList);
			compileExpressionList();
			PrintKey(/expressionList);
			Print();					//')'
			advance();
		}
		else if(PresentIns == "."){
			Print();					//'.'
			advance();	Print();		//subroutineName
			advance();	Print();		//'('

			PrintKey(expressionList);	
			compileExpressionList();
			PrintKey(/expressionList);	
			
			Print();					//')'
			advance();
		}
	}
}
#undef Print
#undef PrintKey