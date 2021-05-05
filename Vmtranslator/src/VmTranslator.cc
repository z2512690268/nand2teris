/*
* @Author: GUNK
* @Date:   2021-02-02 23:38:37
* @Last Modified by:   GUNK
* @Last Modified time: 2021-02-18 09:20:33
* @Edited with: sublime Text 3
* @Language: cpp
* @descriptions:
*/
#include "Vmtranslator.h"
#include <string>
#include <cstdlib>
namespace VmTranslator
{
	using std::string;
	Vmtranslator::Vmtranslator(const string& InputFile, const string& OutputFile)  : Parser(InputFile), CodeWriter(OutputFile){
		setFileName(InputFile);
	}

	void Vmtranslator::ChangeFile(const string& NewFile){
		Parser::ChangeFile(NewFile);
		setFileName(NewFile);
	}

	void Vmtranslator::DealOut(){
		string str;
		while(hasMoreCommands()){
			advance();
			commandType();
			if(Type != NO_COMMAND)	fout << "//" << PrensentIns << endl;
			switch(Type){
				case C_PUSH:		WritePush(Arg1(), Arg2());		break;
				case C_POP:			WritePop(Arg1(), Arg2());		break;
				case C_ARITHMETIC:	WriteArithmetic(Cmd());			break;
				case C_JUDGE:		WriteJudge(Cmd());				break;
				case C_LABEL:		WriteLabel(Arg1());				break;
				case C_GOTO:		WriteGoto(Arg1());				break;
				case C_IF:			WriteIf(Arg1());				break;
				case C_FUNCTION:	WriteFunction(Arg1(), Arg2());	break;
				case C_CALL:		WriteCall(Arg1(), Arg2());		break;
				case C_RETURN:		WriteReturn();					break;
				default:			break;
			}
		}
	}

}