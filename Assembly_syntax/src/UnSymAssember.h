/*
* @Author: GUNK
* @Date:   2021-02-01 20:48:43
* @Last Modified by:   GUNK
* @Last Modified time: 2021-02-02 16:44:10
* @Edited with: sublime Text 3
* @Language: cpp
* @descriptions:
*/
 
#ifndef _UNSYMASSEMBER_H
#define _UNSYMASSEMBER_H

#include <iostream>
#include <string>
#include <fstream>
#include "Parser.h"
#include "Code.h"
namespace HackAsm
{
	using std::string;
	class UnSymAssember : public Parser, public Code
	{
	protected:
		std::ofstream fout;
	public:
		UnSymAssember(const string& inputfile, const string& OutputFile);
		~UnSymAssember();
		void DealOut();
	};
}

#endif