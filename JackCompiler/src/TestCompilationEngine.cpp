/*
* @Author: GUNK
* @Date:   2021-02-08 21:22:21
* @Last Modified by:   GUNK
* @Last Modified time: 2021-02-13 10:56:09
* @Edited with: sublime Text 3
* @Language: cpp
* @descriptions:

*/
#include "CompilationEngine.h"
#include <iostream>
#include <string>
#include <io.h>
int main(int argc, char const *argv[])
{
	using JackCompiler::CompilationEngine;
	std::string basename(argv[1]);
	std::string infile = basename + ".jack", outfile = "my" + basename + ".xml";
	CompilationEngine TestCompilationEngine(infile, outfile);
	TestCompilationEngine.compileClass();
	return 0;
}