/*
* @Author: GUNK
* @Date:   2021-02-02 23:38:23
* @Last Modified by:   GUNK
* @Last Modified time: 2021-02-18 08:46:15
* @Edited with: sublime Text 3
* @Language: cpp
* @descriptions:
*/
 
#ifndef _VMTRANSLATOR_H
#define _VMTRANSLATOR_H

#include <iostream>
#include <string>
#include <algorithm>
#include <fstream>
#include "Parser.h"
#include "CodeWriter.h"
namespace VmTranslator
{
	using std::string;
	using std::cout;
	using std::endl;
	class Vmtranslator : public Parser, public CodeWriter{
	public:
		Vmtranslator(const string& InputFile, const string& OutputFile);
		void ChangeFile(const string& NewFile);
		void DealOut();
	};
}

#endif