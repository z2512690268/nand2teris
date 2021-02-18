/*
* @Author: GUNK
* @Date:   2021-02-02 17:59:31
* @Last Modified by:   GUNK
* @Last Modified time: 2021-02-02 20:10:19
* @Edited with: sublime Text 3
* @Language: cpp
* @descriptions:
*/
#include <iostream>
#include <cstdlib>
#include <cstring>
#include <string>
#include <map>
#include "SymAssember.h"
using HackAsm::SymAssember;
using std::cout;
using std::endl;
int main(int argc, const char *argv[])
{
	// printf("%s", argv[1]);
	std::string basename(argv[1]);
	SymAssember TestSymAssember(basename + (std::string)".asm" , basename + (std::string)".hack");

	TestSymAssember.DealOut();
	return 0;
}