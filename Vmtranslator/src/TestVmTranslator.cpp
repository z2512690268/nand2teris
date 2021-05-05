/*
* @Author: GUNK
* @Date:   2021-02-04 08:49:29
* @Last Modified by:   GUNK
* @Last Modified time: 2021-02-18 08:38:44
* @Edited with: sublime Text 3
* @Language: cpp
* @descriptions:
*/
#include "Vmtranslator.h"
#include <iostream>
#include <string>
#include <io.h>
using namespace std;
int main(int argc, char const *argv[])
{
	using VmTranslator::Vmtranslator;
	string name(argv[1]);
	int pos = name.find(".");
	string basename;
	string outputfile;
	Vmtranslator *TestVm2Asm;
	_finddata_t fileinfo;
	long handle;
	if(pos != string::npos){
		// cout << "***************" << basename << " " << name.find(".") << endl;
		basename = name.substr(0, pos);
		TestVm2Asm = new Vmtranslator(name, basename + (string)".asm");
		TestVm2Asm->DealOut();
	}
	else{
		outputfile = name + (string)".asm";
		basename = name + "\\*.vm";
		handle = _findfirst(basename.c_str(), &fileinfo);
		// cout << "##############" << name + ".\\" + name + "\\" + (string)fileinfo.name << endl;
		TestVm2Asm = new Vmtranslator(".\\" + name + "\\" + (string)fileinfo.name, outputfile);
		if(handle == -1){
			cerr << "No input file" << endl;
			return -1;
		}
		TestVm2Asm->WriteInit();
		TestVm2Asm->DealOut();
		while (!_findnext(handle, &fileinfo)){
			// system("Pause");
			TestVm2Asm->ChangeFile(".\\" + name + "\\" + (string)fileinfo.name);
			TestVm2Asm->DealOut();
		}
		delete TestVm2Asm;
	}
	return 0;
}