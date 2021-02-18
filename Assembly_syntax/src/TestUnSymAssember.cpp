/*
* @Author: GUNK
* @Date:   2021-02-01 20:46:19
* @Last Modified by:   GUNK
* @Last Modified time: 2021-02-02 11:11:10
* @Edited with: sublime Text 3
* @Language: cpp
* @descriptions:
*/
#include <iostream>
#include <cstdlib>
#include <cstring>
#include <string>
#include "Parser.h"
#include "Code.h"
#include "UnSymAssember.h"
using HackAsm::UnSymAssember;
using std::cout;
using std::endl;
int main(int argc, const char *argv[])
{
	// printf("%s", argv[1]);
	std::string basename(argv[1]);
	UnSymAssember TestUnSymAssember(basename + (std::string)".asm" , basename + (std::string)".hack");
	TestUnSymAssember.DealOut();
	return 0;
}