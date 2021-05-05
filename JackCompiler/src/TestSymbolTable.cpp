/*
* @Author: GUNK
* @Date:   2021-02-14 10:29:25
* @Last Modified by:   GUNK
* @Last Modified time: 2021-02-14 23:41:27
* @Edited with: sublime Text 3
* @Language: cpp
* @descriptions:
*/
#include "JackCompiler.h"
#include <iostream>
using namespace std; 
int main(int argc, char const *argv[])
{
	JackCompiler::JackCompiler TestJC("Ball.jack", "Ball.xml");
	TestJC.compileClass();
	TestJC.ShowTable();
	return 0;
}