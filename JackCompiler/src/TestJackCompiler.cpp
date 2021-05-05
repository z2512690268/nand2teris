/*
* @Author: GUNK
* @Date:   2021-02-16 09:56:18
* @Last Modified by:   GUNK
* @Last Modified time: 2021-02-16 09:56:35
* @Edited with: sublime Text 3
* @Language: cpp
* @descriptions:
*/
#include "JackCompiler.h"
#include <iostream>
#include <string>
#include <io.h>
int main(int argc, char const *argv[])
{
	using JackCompiler::JackCompiler;
	std::string basename(argv[1]);
	std::string infile = basename + ".jack", outfile = "my" + basename + ".xml";
	JackCompiler TestCompilationEngine(infile, outfile);
	TestCompilationEngine.compileClass();
	return 0;
}