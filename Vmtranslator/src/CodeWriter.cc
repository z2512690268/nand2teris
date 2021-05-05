/*
* @Author: GUNK
* @Date:   2021-02-04 08:10:01
* @Last Modified by:   GUNK
* @Last Modified time: 2021-02-18 12:51:08
* @Edited with: sublime Text 3
* @Language: cpp
* @descriptions:
*/
#include <fstream>
#include <cstdlib>
#include <iostream>
#include "CodeWriter.h"

namespace VmTranslator{
	using std::endl;
	CodeWriter::CodeWriter(const string& filename) : fout(filename.c_str(), std::ios::out){
		fout.close();
		fout.open(filename.c_str(), std::ios::app);
		if(!fout){
			std::cerr << "CodeWriter : Output file open error" << endl;
			std::exit(EXIT_FAILURE);
		}
		ConstTable["local"] = "LCL";
		ConstTable["argument"] = "ARG";
		ConstTable["this"] = "THIS";
		ConstTable["that"] = "THAT";
		JudgeCnt = CallCnt = 0;
	}
	CodeWriter::~CodeWriter(){
		if(fout.is_open()){
			fout.close();
		}	
	}
	void CodeWriter::setFileName(const string& NewName){
		int pos = NewName.rfind("\\");
		int pt = NewName.rfind(".");
		if(pos != string::npos)
			NowFile = NewName.substr(pos + 1, pt - pos - 1);
		else
			NowFile = NewName.substr(0, pt);
		return;
	}
	void CodeWriter::setFuncName(const string& Funcname){
		NowFunc = Funcname;
	}
	void CodeWriter::WriteInit(){
		fout << "@256" << endl;
		fout << "D = A" << endl;
		fout << "@SP" << endl; 
		fout << "M = D" << endl; 
		fout << "@Sys.init" << endl; 
		fout << "0 ; JMP" << endl;
		//************************************
		fout << "(eq_command)" << endl;
		fout << "@R15" << endl;
		fout << "M = D" << endl;
		fout << "@SP" << endl;
		fout << "AM = M - 1" << endl;
		fout << "D = M" << endl;
		fout << "A = A - 1" << endl;
		fout << "D = M - D" << endl;
		fout << "M = 0" << endl;
		fout << "@R15" << endl;
		fout << "A = M" << endl;
		fout << "D ; JNE" << endl;
		fout << "@SP" << endl;
		fout << "A = M - 1" << endl;
		fout << "M = -1" << endl;
		fout << "@R15" << endl;
		fout << "A = M" << endl;
		fout << "0 ; JMP" << endl;
		//*********************************
		fout << "(lt_command)" << endl;
		fout << "@R15" << endl;
		fout << "M = D" << endl;
		fout << "@SP" << endl;
		fout << "AM = M - 1" << endl;
		fout << "D = M" << endl;
		fout << "A = A - 1" << endl;
		fout << "D = M - D" << endl;
		fout << "M = 0" << endl;
		fout << "@R15" << endl;
		fout << "A = M" << endl;
		fout << "D ; JGE" << endl;
		fout << "@SP" << endl;
		fout << "A = M - 1" << endl;
		fout << "M = -1" << endl;
		fout << "@R15" << endl;
		fout << "A = M" << endl;
		fout << "0 ; JMP" << endl;
		//**********************************
		fout << "(gt_command)" << endl;
		fout << "@R15" << endl;
		fout << "M = D" << endl;
		fout << "@SP" << endl;
		fout << "AM = M - 1" << endl;
		fout << "D = M" << endl;
		fout << "A = A - 1" << endl;
		fout << "D = M - D" << endl;
		fout << "M = 0" << endl;
		fout << "@R15" << endl;
		fout << "A = M" << endl;
		fout << "D ; JLE" << endl;
		fout << "@SP" << endl;
		fout << "A = M - 1" << endl;
		fout << "M = -1" << endl;
		fout << "@R15" << endl;
		fout << "A = M" << endl;
		fout << "0 ; JMP" << endl;
		//***********************************
		fout << "(call_command)" << endl;
		fout << "@SP" << endl;
		fout << "M = M + 1" << endl;
		fout << "A = M - 1" << endl;
		fout << "M = D" << endl;	 
		WritePush("segment", "LCL");
		WritePush("segment", "ARG");
		WritePush("segment", "THIS");
		WritePush("segment", "THAT");
		fout << "@SP" << endl;
		fout << "D = M" << endl;
		fout << "@LCL" << endl;
		fout << "M = D" << endl;
		fout << "@R14" << endl;
		fout << "D = D - M" << endl; 
		fout << "@5" << endl;
		fout << "D = D - A" << endl;
		fout << "@ARG" << endl;
		fout << "M = D" << endl;
		//ARG = SP - n - 5
		//LCL = SP
		fout << "@R15" << endl;
		fout << "0 ; JMP" << endl;
		//***************************************
		fout << "(return_command)" << endl;
		fout << "@LCL" << endl;
		fout << "D = M" << endl;
		fout << "@5" << endl;
		fout << "A = D - A" << endl;
		fout << "D = M" << endl;
		fout << "@R14" << endl;
		fout << "M = D" << endl;

		fout << "@SP" << endl;
		fout << "A = M - 1" << endl;
		fout << "D = M" << endl;
		fout << "@ARG" << endl;
		fout << "A = M" << endl;
		fout << "M = D" << endl;

		fout << "@ARG" << endl;
		fout << "D = M + 1" << endl;
		fout << "@SP" << endl;
		fout << "M = D" << endl;

		fout << "@LCL" << endl;
		fout << "AM = M - 1" << endl;
		fout << "D = M" << endl;
		fout << "@THAT" << endl;
		fout << "M = D" << endl;
		//pop that
		fout << "@LCL" << endl;
		fout << "AM = M - 1" << endl;
		fout << "D = M" << endl;
		fout << "@THIS" << endl;
		fout << "M = D" << endl;
		//pop this
		fout << "@LCL" << endl;
		fout << "AM = M - 1" << endl;
		fout << "D = M" << endl;
		fout << "@ARG" << endl;
		fout << "M = D" << endl;
		//pop arg
		fout << "@LCL" << endl;
		fout << "AM = M - 1" << endl;
		fout << "D = M" << endl;
		fout << "@LCL" << endl;
		fout << "M = D" << endl;
		//pop lcl
		fout << "@R14" << endl;
		fout << "A = M" << endl;
		//pop ret
		fout << "0 ; JMP" << endl;
	}
	void CodeWriter::WritePush(const string& segment, const string& index){
		// std::cout << index << endl;
		if(segment == "constant"){
			fout << "@" << index << endl;
			fout << "D = A" << endl;
			fout << "@SP" << endl;
			fout << "M = M + 1" << endl;
			fout << "A = M - 1" << endl;
			fout << "M = D" << endl;			
		}
		else if(segment == "pointer"){
			fout << "@" << 3 + std::atoi(index.c_str()) << endl;
			fout << "D = M" << endl;
			fout << "@SP" << endl;
			fout << "M = M + 1" << endl;
			fout << "A = M - 1" << endl;
			fout << "M = D" << endl;
		}
		else if(segment == "temp"){
			fout << "@" << 5 + std::atoi(index.c_str()) << endl;
			fout << "D = M" << endl;
			fout << "@SP" << endl;
			fout << "M = M + 1" << endl;
			fout << "A = M - 1" << endl;
			fout << "M = D" << endl;
		}
		else if(segment == "static"){
			fout << "@" << NowFile << "." << index <<endl;
			fout << "D = M" << endl;
			fout << "@SP" << endl;
			fout << "M = M + 1" << endl;
			fout << "A = M - 1" << endl;
			fout << "M = D" << endl;
		}
		else if(segment == "segment"){
			fout << "@" << index << endl;
			fout << "D = M" << endl;
			fout << "@SP" << endl;
			fout << "M = M + 1" << endl;
			fout << "A = M - 1" << endl;
			fout << "M = D" << endl;
		}
		else {
			fout << "@" << index << endl;
			fout << "D = A" << endl;
			fout << "@" << ConstTable[segment] << endl;
			fout << "A = D + M" << endl;
			fout << "D = M" << endl;
			fout << "@SP" << endl;
			fout << "M = M + 1" << endl;
			fout << "A = M - 1" << endl;
			fout << "M = D" << endl;
		}
	}

	void CodeWriter::WritePop(const string& segment, const string& index){
		//这里会用到R13，其他函数不要在这前面用R13保存临时数据
		if(segment == "pointer"){
			fout << "@SP" << endl;
			fout << "AM = M - 1" << endl;
			fout << "D = M" << endl;
			fout << "@" << 3 + std::atoi(index.c_str()) << endl;
			fout << "M = D" << endl;
		} 
		else if(segment == "temp"){
			fout << "@SP" << endl;
			fout << "AM = M - 1" << endl;
			fout << "D = M" << endl;
			fout << "@" << 5 + std::atoi(index.c_str()) << endl;
			fout << "M = D" << endl;
		}
		else if(segment == "static"){
			fout << "@SP" << endl;
			fout << "AM = M - 1" << endl;
			fout << "D = M" << endl;
			fout << "@" << NowFile << "." << index << endl;
			fout << "M = D" << endl; 
		}
		else if(segment == "segment"){
			fout << "@SP" << endl;
			fout << "AM = M - 1" << endl;
			fout << "D = M" << endl;
			fout << "@" << index << endl;
			fout << "M = D" << endl; 
		}
		else{
			fout << "@" << ConstTable[segment] << endl;
			fout << "D = M" << endl;
			fout << "@" << index << endl;
			fout << "D = D + A" << endl;
			fout << "@R13" << endl;
			fout << "M = D" << endl;
			fout << "@SP" << endl;
			fout << "AM = M - 1" << endl;
			fout << "D = M" << endl;
			fout << "@R13" << endl;
			fout << "A = M" << endl;
			fout << "M = D" << endl;
		}
	}
	void CodeWriter::WriteArithmetic(const string& Command){
		if(Command == "not"){
			fout << "@SP" << endl;
			fout << "A = M - 1" << endl;
			fout << "M = !M" << endl;
		}
		else if(Command == "neg"){
			fout << "@SP" << endl;
			fout << "A = M - 1" << endl;
			fout << "M = -M" << endl;
		}
		else{
			fout << "@SP" << endl;
			fout << "AM = M - 1" << endl;
			fout << "D = M" << endl;
			fout << "A = A - 1" << endl;
			if(Command == "add")			{fout << "M = D + M" << endl;}		
			else if(Command == "sub")		{fout << "M = M - D" << endl;}
			else if(Command == "and")	 	{fout << "M = D & M" << endl;}
			else if(Command == "or")	 	{fout << "M = D | M" << endl;}
		}		
	}

	void CodeWriter::WriteJudge(const string& Command){
		fout << "@" << Command << "_end" << JudgeCnt << endl;
		fout << "D = A" << endl;
		fout << "@" << Command << "_command" << endl;
		fout << "0 ; JMP" << endl;
		fout << "(" << Command << "_end" << JudgeCnt << ")" << endl;
		JudgeCnt++;
	}

	void CodeWriter::WriteLabel(const string& labelname)
	{
		fout << "(" << NowFunc << "$" << labelname << ")" << endl;
	}

	void CodeWriter::WriteGoto(const string& labelname){
		fout << "@" << NowFunc << "$" << labelname << endl;
		fout << "0 ; JMP" << endl;
	}

	void CodeWriter::WriteIf(const string& labelname){
		fout << "@SP" << endl;
		fout << "AM = M - 1" << endl;
		fout << "D = M" << endl;
		fout << "@" << NowFunc << "$" << labelname << endl;
		fout << "D ; JNE" << endl;
	}

	void CodeWriter::WriteCall(const string& funcname, const string& numArgs)
	{
		fout << "@" << funcname << endl;
		fout << "D = A" << endl;
		fout << "@R15" << endl;
		fout << "M = D" << endl;
		fout << "@" << numArgs << endl;
		fout << "D = A" << endl;
		fout << "@R14" << endl;
		fout << "M = D" << endl;
		fout << "@RET_CALL_" << CallCnt << endl;
		fout << "D = A" << endl;
		fout << "@call_command" << endl;
		fout << "0 ; JMP" << endl;
		fout << "(" << "RET_CALL_" << CallCnt << ")" << endl;
		CallCnt++;
	}

	void CodeWriter::WriteFunction(const string& funcname, const string& numLocals)
	{
		int times = atoi(numLocals.c_str());
		setFuncName(funcname);
		fout << "(" << funcname << ")" << endl;
		while(times--)
			WritePush("constant", "0");
		return ;
	}

	void CodeWriter::WriteReturn()
	{
		fout << "@return_command" << endl;
		fout << "0 ; JMP" << endl;
	}
}