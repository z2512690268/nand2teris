/*
* @Author: GUNK
* @Date:   2021-02-16 18:27:13
* @Last Modified by:   GUNK
* @Last Modified time: 2021-02-18 08:39:12
* @Edited with: sublime Text 3
* @Language: cpp
* @descriptions:
*/
#include "JackCompiler.h"
#include <iostream>
#include <string>
#include <io.h>
#include <cstdlib>
int main(int argc, char const *argv[])
{
	using JackCompiler::JackCompiler;
	using std::string;
	string basename(argv[1]);				//输入的路径名
	string filename;						//当前处理文件名的base
	string outputfile, inputfile;			//当前输出文件，输入文件名
	JackCompiler* Jack2Vm;					//指向编译器对象的指针
	_finddata_t fileinfo;					//文件信息结构
	long handle;							//文件句柄
	int pos;

	inputfile = basename + "\\*.jack";		//获得输入文件的通配符
	handle = _findfirst(inputfile.c_str(), &fileinfo);
	//找到第一个文件的句柄
	// cout << "##############" << basename + ".\\" + basename + "\\" + (string)fileinfo.basename << endl;
	if(handle == -1){
		std::cerr << "No input file" << std::endl;
		return -1;
	}
	do{
		filename = ((string)fileinfo.name);
		pos = filename.find(".");
		filename = filename.substr(0, pos);
		inputfile = ".\\" + basename + "\\" + filename + ".jack";
		outputfile = ".\\" + basename + "\\" + filename + ".vm";
		Jack2Vm = new JackCompiler(inputfile, outputfile);
		Jack2Vm->compileClass();
		delete Jack2Vm;
	}while (!_findnext(handle, &fileinfo));
	
	return 0;
}