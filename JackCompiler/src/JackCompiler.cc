/*
* @Author: GUNK
* @Date:   2021-02-14 16:12:17
* @Last Modified by:   GUNK
* @Last Modified time: 2021-02-24 19:47:21
* @Edited with: sublime Text 3
* @Language: cpp
* @descriptions:
*/
#include <fstream>
#include <iostream>
#include <string>
#include "JackCompiler.h"
#define DDEBUG
#ifdef DDEBUG
#define Print()			fout << Tab << "<" << PrintEndString[Type] << "> " << PresentIns << " </" << PrintEndString[Type] << ">" << endl; 
#define PrintKey(key) 	fout << Tab << "<" << #key << ">" << endl;
#define advance()		if(advance()){fout << "//" << TempIns << endl;}
#endif
namespace JackCompiler {
	using std::string;
	using std::cout;
	using std::endl;
	JackCompiler::JackCompiler(const string& infile, const string& outfile) 
		: JackTokenizer(infile), VMWriter(outfile.c_str()) {};
	JackCompiler::~JackCompiler(){}
	string JackCompiler::op2str(const string& Op){
		if(Op == "+")	return "add";
		if(Op == "-")	return "sub";
		if(Op == "&")	return "and";
		if(Op == "|")	return "or";
		if(Op == "<")	return "lt";
		if(Op == ">")	return "gt";
		if(Op == "=")	return "eq";
		if(Op == "*")	return "call Math.multiply 2";
		if(Op == "/")	return "call Math.divide 2";
		return "";
	}
	string JackCompiler::kind2seg(const string& kind){
		if(kind == "var")		return "local";
		if(kind == "arg")		return "argument";
		if(kind == "static")	return "static";
		if(kind == "field")		return "this";
		return "";
	}
	//class : 'class' className '{' classVarDec* subroutineDec* '}'
	void JackCompiler::compileClass()	//No haed + No Tail
	{
		// fout << "<class>" << endl;
		// TabCnt++;
		// string Tab(TabCnt, '\t');
		advance();	//Print();	//'class'
		advance();	//Print();	//className
		ClassName = PresentIns;
		advance();	//Print();	//{
		advance();
		while(PresentIns == "static" || PresentIns == "field"){
			// PrintKey(classVarDec);
			complieClassVarDec();
			// PrintKey(/classVarDec);
			advance();
		}
		//classVarDec*
		while(PresentIns == "constructor" || PresentIns == "function" || PresentIns == "method"){
			// PrintKey(subroutineDec);
			compileSubroutine();
			// PrintKey(/subroutineDec);
			advance();
		}
		//classSubroutineDec*
		// Print();
		//'}'
		// TabCnt--;
		// fout << "</class>" << endl;
	}
	//classVarDec : ('static' | 'field') type varName (',' varName)* ';'
	void JackCompiler::complieClassVarDec(){ //head + No Tail
		// TabCnt++;
		// string Tab(TabCnt, '\t');
		string kind, type;
		// Print();	
		kind = PresentIns;								//'static' | 'field'
		advance();	//Print();
		type = PresentIns;					//type
		advance();	//Print();
		Define(PresentIns, type, kind);		//varName
		advance();
		while(PresentIns != ";"){
			//Print();				//','
			advance();	//Print();
			Define(PresentIns, type, kind);	//varName
			advance();
		}
		//Print();					//';'
		// TabCnt--;
	}
	//SubroutineDec : ('constructor' | 'function' | 'method') ('void' | type) subroutineName '(' parameterList ')' subroutineBody	
	void JackCompiler::compileSubroutine(){ //haed + No Tail
		// TabCnt++;
		// string Tab(TabCnt, '\t');
		string subroutineName, SubType;
		startSubroutine();
		// Print();				//('constructor' | 'function' | 'method')
		SubType = PresentIns;
		if(SubType == "method"){
			KindCnt["arg"] = 1;
		}
		advance();	//Print();	//('void' | type)
		advance();	//Print();	//subroutineName
		subroutineName = PresentIns;
		advance();	//Print();	//'('
		// PrintKey(parameterList);
		compileParameterList();
		// PrintKey(/parameterList);
		// Print();				//')'
		// PrintKey(subroutineBody);
		compileVarDecs();
		writeFunction(ClassName + "." + subroutineName, varcount("var"));
		if(SubType == "constructor"){
			writePush("constant", varcount("field"));
			writeCall("Memory.alloc", 1);
			writePop("pointer", 0);
		}
		if(SubType == "method"){
			writePush("argument", 0);
			writePop("pointer", 0);
		}
		// PrintKey(statements);
		compileStatements();	// statements
		// PrintKey(/statements);
		// PrintKey(/subroutineBody);
		// Print();	// '}'

		// TabCnt--;
	}
	//Vardecs : '{' varDec* statements '}'
	void JackCompiler::compileVarDecs(){ //no head + tail
		// TabCnt++;
		// string Tab(TabCnt, '\t');
		int nArgs = 0;
		advance();	//Print();	//'{'
		advance();
		while(PresentIns == "var"){
			// PrintKey(varDec);
			nArgs += compileVarDec();
			// PrintKey(/varDec);
			advance();
		}
		//varDec*
		// TabCnt--;
		return;
	}
	//ParameterList : ( (type varName) (',' type varName)* )?
	int JackCompiler::compileParameterList() //no head + tail
	{
		// TabCnt++;
		// string Tab(TabCnt, '\t');
		int cnt = 0;
		string type;
		advance();					
		while(PresentIns != ")"){
			if(PresentIns == ","){
				// Print()
				advance();
			}
			// Print();	
			type = PresentIns;		//type
			advance();	//Print();
			Define(PresentIns, type, "arg");	//varName
			cnt++;
			advance();
		}
		return cnt;
		// TabCnt--;
	}
	//varDec : 'var' type varName (',' varName)* ';'
	int JackCompiler::compileVarDec() //head + no tail
	{
		// TabCnt++;
		// string Tab(TabCnt, '\t');
		string type;
		int nArgs = 0;
		// Print();													//'var'
		advance();	//Print();	
		type = PresentIns;					//type
		advance();	//Print();
		Define(PresentIns, type, "var");	//varName
		nArgs++;
		advance();
		while(PresentIns == ","){
			// Print();				//','
			advance();	//Print();	
			Define(PresentIns,  type, "var");	//varName
			nArgs++;
			advance();
		}
		// Print();					//';'
		// TabCnt--;
		return nArgs;
	}
	// statements : statement*
	// statement : letStatement | ifStatement | whileStatement | doStatement | returnStatement
	void JackCompiler::compileStatements(){//head + tail
		// TabCnt++;
		// string Tab(TabCnt, '\t');
		// string Key;
		while(PresentIns != "}")
		{
			// Key = PresentIns;
			// fout << Tab << "<" << Key << "Statement>" << endl;
			if(PresentIns == "if")		compileIf();
			else{
				if(PresentIns == "let")		compileLet();
				if(PresentIns == "while")	compileWhile();
				if(PresentIns == "do")		compileDo();
				if(PresentIns == "return")	compileReturn();
			// fout << Tab << "</" << Key << "Statement>" << endl;
				advance();
			}
		}
		// TabCnt--;
	}
	// letStatement : 'let' varName ('[' expresion ']') ? '=' expression ';'
	void JackCompiler::compileLet()	//head + no tail
	{
		// TabCnt++;
		// string Tab(TabCnt, '\t');
		// Print();					//'let'
		advance();	//Print();		//varName
		string varName = PresentIns;
		int ArrayFlag = 0;
		advance();
		if(PresentIns == "["){
			// Print();				//'['
			writePush(kind2seg(KindOf(varName)), IndexOf(varName));
			advance();

			// PrintKey(expression);
			compileExpression();
			// PrintKey(/expression);
			
			// Print();				//']'
			writeArithmetic("add");
			writePop("temp", 1);
			ArrayFlag = 1;
			advance();
		}
		// Print();					//'='
		advance();

		// PrintKey(expression);
		compileExpression();
		// PrintKey(/expression);

		if(ArrayFlag){
			writePush("temp", 1);
			writePop("pointer", 1);
			writePop("that", 0);
		}
		else{
			writePop(kind2seg(KindOf(varName)), IndexOf(varName));
		}
		// Print();					//';'
		// TabCnt--;
		return;
	}
	// doStatement : 'do' subroutineCall
	void JackCompiler::compileDo(){	//head + no tail
		// TabCnt++;
		// string Tab(TabCnt, '\t');
		// Print();					//'do'
		
		advance();
		compileCall();
		// Print();					//';'
		writePop("temp", 0);
		// TabCnt--;
	}
	//whileStatement : 'while' '(' expression ')' '{' statements '}'
	void JackCompiler::compileWhile(){	//head + no tail
		// TabCnt++;
		// string Tab(TabCnt, '\t');
		// Print();					//'while'
		int NowWhileCnt = WhileCnt;
		WhileCnt++;
		advance();	//Print();		//'('
		advance();

		writeLabel("WHILE_EXP", NowWhileCnt);
		// PrintKey(expression);
		compileExpression();
		// PrintKey(/expression);
		writeArithmetic("not");
		// Print();					//')'
		advance();	//Print();		//'{'
		
		advance();
		writeIf("WHILE_END", NowWhileCnt);
		// PrintKey(statements);
		compileStatements();
		// PrintKey(/statements);
		writeGoto("WHILE_EXP", NowWhileCnt);
		writeLabel("WHILE_END", NowWhileCnt);

		// Print();					//'}'
		// TabCnt--;
	}
	// returnStatement : 'return' expression ';'
	void JackCompiler::compileReturn()//head + no tail
	{
		// TabCnt++;
		// string Tab(TabCnt, '\t');
		// Print();					//'return'
		advance();
		if(PresentIns != ";"){
			// PrintKey(expression);
			compileExpression();
			// PrintKey(/expression);
		}
		else{
			writePush("constant", 0);
		}
		writeReturn();
		// Print();					// ';'
		// TabCnt--;
	}
	// ifStatement : 'if' '(' expression ')' '{' statements '}' ('else' '{' statements '}' )?
	void JackCompiler::compileIf() //head + tail
	{
		int NowIfCnt = IfCnt;
		IfCnt++;
		// TabCnt++;
		// string Tab(TabCnt, '\t');
		// Print();						//'if'
		advance();	//Print();			//'('
		advance();
		// PrintKey(expression);
		compileExpression();
		// PrintKey(/expression);
		// Print();						//')'
		advance();	//Print();			//'{'
		advance();
		// PrintKey(statements);
		writeIf("IF_TRUE", NowIfCnt);
		writeGoto("IF_FALSE", NowIfCnt);
		writeLabel("IF_TRUE", NowIfCnt);
		compileStatements();
		advance();
		if(PresentIns != "else")
			writeLabel("IF_FALSE", NowIfCnt);
		else{
			// Print();					//'else'
			writeGoto("IF_END", NowIfCnt);
			writeLabel("IF_FALSE", NowIfCnt);
			advance();	//Print();		//'{'
			advance();
			compileStatements();
			writeLabel("IF_END", NowIfCnt);
			//Print();					//'}'
			advance();
		}
		// PrintKey(/statements);
		// Print();						
		// TabCnt--;
	}

	// expression : term (op term)*
	void JackCompiler::compileExpression(){//head + tail
		// TabCnt++;
		// string Tab(TabCnt, '\t');
		string NowOp;
		// PrintKey(term);
		compileTerm();
		// PrintKey(/term);

		while(op.find(PresentIns) != string::npos)
		{
			// if(PresentIns == "<")
			// 	fout << Tab << "<symbol>" << "&lt;" << "</symbol>" << endl;
			// else if(PresentIns == ">")
			// 	fout << Tab << "<symbol>" << "&gt;" << "</symbol>" << endl;
			// else if(PresentIns == "&")
			// 	fout << Tab << "<symbol>" << "&amp;" << "</symbol>" << endl;		 
			// else
			// 	Print();					//op
			NowOp = PresentIns;
			advance();

			// PrintKey(term);
			compileTerm();
			// PrintKey(/term);

			writeArithmetic(op2str(NowOp));
		}
		// TabCnt--;
	}
	//term : integerConstant | stringConstant | keywordConst | varName | varName '[' expression ']' | subroutineCall | '(' expression ')' | unaryOp term
	void JackCompiler::compileTerm(){	//head + tail
		// TabCnt++;
		// string Tab(TabCnt, '\t');
		string NowOp;
		if(PresentIns == "("){
			// Print();						//'('
			advance();

			// PrintKey(expression);
			compileExpression();
			// PrintKey(/expression);

			// Print();						//')'
			advance();
		}
		else if(PresentIns == "-" || PresentIns == "~"){
			// Print();						// "-" | "~"
			NowOp = PresentIns;
			advance();						
			// PrintKey(term);
			compileTerm();
			// PrintKey(/term);
			if(NowOp == "-")
				writeArithmetic("neg");
			else
				writeArithmetic("not");
		}
		else {
			compileCall();
		}
		// TabCnt--;
	}
	//expressionList : (expression (',' expression)* ) ?
	int JackCompiler::compileExpressionList(){ // no head + tail
		// TabCnt++;
		// string Tab(TabCnt, '\t');
		int nArgs = 0;
		advance();
		if(PresentIns != ")"){
			// PrintKey(expression);
			compileExpression();
			// PrintKey(/expression);
			nArgs++;
		}
		while(PresentIns != ")"){
			// Print();				//','
			advance();
			// PrintKey(expression);
			compileExpression();
			// PrintKey(/expression);
			nArgs++;
		}
		// TabCnt--;
		return nArgs;
	}

	// subroutineCall:	subroutineName '(' expresionList ')' | (className | varName) '.' subroutineName '(' expression ')'
	// Add function : It can also solve the tuple call, because other ways may change too many codes, so I choose to expand the 
	// 		function of compileCall so it can work successfully
	void JackCompiler::compileCall(){ //head + tail
		// string Tab(TabCnt, '\t');
		// Print();	//subroutineName | (className | varname)
		string Name = PresentIns, SubName;
		int NameType = Type, size;
		int nArgs = 0;
		advance();
		if(PresentIns == "["){
			writePush(kind2seg(KindOf(Name)), IndexOf(Name));
			// Print();					//'['
			advance();
			// PrintKey(expression);
			compileExpression();
			// PrintKey(/expression);
			// Print();					//']'
			writeArithmetic("add");
			writePop("pointer", 1);
			writePush("that", 0);
			advance();
		} 
		else if(PresentIns == "("){
			// Print();					//'('
			// PrintKey(expressionList);
			writePush("pointer", 0);
			nArgs = compileExpressionList();
			// PrintKey(/expressionList);
			writeCall(ClassName + "." + Name, nArgs + 1);
			// Print();					//')'
			advance();
		}
		else if(PresentIns == "."){
			// Print();					//'.'
			advance();	//Print();		//subroutineName
			SubName = PresentIns;
			advance();	//Print();		//'('

			// PrintKey(expressionList);	
			// PrintKey(/expressionList);	
			if(TypeOf(Name) != ""){
				writePush(kind2seg(KindOf(Name)), IndexOf(Name));
				Name = TypeOf(Name);
				nArgs = compileExpressionList();
				writeCall(Name + "." + SubName, nArgs + 1);
			}
			else{
				nArgs = compileExpressionList();
				writeCall(Name + "." + SubName, nArgs);
			}
			// Print();					//')'
			advance();
		}
		else{
			if(NameType == T_INT_CONST){
					writePush("constant", std::atoi(Name.c_str()));
			}
			else if(NameType == T_STRING_CONST){
				size = Name.size();
				writePush("constant", size);
				writeCall("String.new", 1);
				for(int i = 0; i < size; ++i){
					writePush("constant", Name[i]);
					writeCall("String.appendChar", 2);
				}
			}
			else{
				if(Name == "true"){
					writePush("constant", 1);
					writeArithmetic("neg");
				}
				else if(Name == "false" || Name == "null"){
					writePush("constant", 0);
				}
				else if(Name == "this"){
					writePush("pointer", 0);
				}
				else
					writePush(kind2seg(KindOf(Name)), IndexOf(Name));
			}
		}
	}
}