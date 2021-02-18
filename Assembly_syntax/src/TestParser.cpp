/*
* @Author: GUNK
* @Date:   2021-02-01 17:05:27
* @Last Modified by:   GUNK
* @Last Modified time: 2021-02-02 11:03:53
* @Edited with: sublime Text 3
* @Language: cpp
* @descriptions:
*/
#include "Parser.h"
using HackAsm::Parser;
using std::cout;
using std::endl;
int main(int argc, char const *argv[])
{
	std::string TypeOfCommand[4] = {"A_COMMNAND", "C_COMMAND", "L_COMMAND", "No_COMMAND"};
	int ct = 1;
	Parser TestParser("MaxL.asm");
	while(TestParser.hasMoreCommands())
	{
		cout << "Instruction " << ct++ << ":" << endl;
		TestParser.advance();
		cout << "commandType : ***" << TypeOfCommand[TestParser.commandType()] << "***" << endl;
		cout << "symbol : ***" << TestParser.symbol() << "***" << endl;
		cout << "dest : ***" << TestParser.dest() << "***" << endl;
		cout << "comp : ***" << TestParser.comp() << "***" << endl;
		cout << "jump : ***" << TestParser.jump() << "***" << endl;
		cout << "########################################" << endl << endl;
	}
	return 0;
}