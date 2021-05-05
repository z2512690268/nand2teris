/*
* @Author: GUNK
* @Date:   2021-02-12 23:55:36
* @Last Modified by:   GUNK
* @Last Modified time: 2021-02-13 08:14:37
* @Edited with: sublime Text 3
* @Language: cpp
* @descriptions:
*/
#include "JackTokenizer.h"
#include <iostream>
#include <string>
int main(int argc, char const *argv[])
{
	using JackCompiler::JackTokenizer;
	JackTokenizer TestJackTokenzier("Main.jack");

	while(TestJackTokenzier.hasMoreCommands()){
		TestJackTokenzier.advance();
		std::cout << TestJackTokenzier.keyword() << " " << TestJackTokenzier.tokenType() << std::endl;
	}
	return 0;
}