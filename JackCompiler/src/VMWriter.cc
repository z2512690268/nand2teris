/*
* @Author: GUNK
* @Date:   2021-02-14 10:37:00
* @Last Modified by:   GUNK
* @Last Modified time: 2021-02-16 16:15:05
* @Edited with: sublime Text 3
* @Language: cpp
* @descriptions:
*/

#include "VMWriter.h"
#include <iostream>
#include <fstream>
namespace JackCompiler{
	using std::endl;
	 VMWriter::VMWriter(const string& filename) : fout(filename) {
		if(!fout.is_open()){
			std::cerr << "Output file opened error!" << endl;
			exit(EXIT_FAILURE);
		}
	}
	VMWriter::~VMWriter(){
		fout.close();
		if(fout.is_open()){
			std::cerr << "Output file closed error!" << endl;
			exit(EXIT_FAILURE);
		}
	}
	void VMWriter::writePush(string segment, int index){
		fout << "push " << segment << " " << index << endl;
	}
	void VMWriter::writePop(string segment, int index){
		fout << "pop " << segment << " " << index << endl;
	}
	void VMWriter::writeArithmetic(string command){
		fout << command << endl;
	}
	void VMWriter::writeLabel(string label, int index){
		fout << "label " << label << index << endl; 
	}
	void VMWriter::writeGoto(string label, int index){
		fout << "goto " << label << index << endl;
	}
	void VMWriter::writeIf(string label, int index){
		fout << "if-goto " << label << index << endl;
	}
	void VMWriter::writeCall(string name, int nArgs){
		fout << "call " << name << " " << nArgs << endl;
	}
	void VMWriter::writeFunction(string name, int nArgs){
		fout << "function " << name << " " << nArgs << endl; 
	}
	void VMWriter::writeReturn(){
		fout << "return" << endl;
	}

}