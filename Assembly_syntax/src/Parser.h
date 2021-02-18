/*
* @Author: GUNK
* @Date:   2021-01-31 09:00:31
* @Last Modified by:   GUNK
* @Last Modified time: 2021-02-02 18:11:51
* @Edited with: sublime Text 3
* @Language: cpp
* @descriptions:
*/
 
#ifndef _PARSER_H
#define _PARSER_H
#include "HackAsm.h"
#include <iostream>
#include <fstream>
#include <cstdio>
#include <string>
namespace HackAsm
{
	using std::string;
	using std::ifstream;

	class Parser
	{
	protected:
		enum TypeOfCommand{
			A_COMMAND,		//@Xxx为符号或者十进制数 
			C_COMMAND, 		//dest = comp;jump
			L_COMMAND,		//(Xxx)记录符号
			No_COMMAND
		};
		ifstream fin;
		string PrensentIns;	//当前指令
		int Type;
		int cnt = 0;
		void DeleteExplain(string& str);
	public:
		Parser(const string& filename);
		Parser(const char* filename); 	//打开输入流
		~Parser();
		bool hasMoreCommands();			//检查输入中是否还有更多命令
		void advance();					//从输入中读取下一条命令作为当前命令，当hasMoreCommands()为真时才能调用
		int commandType();				//返回当前指令的类型
		string symbol();				//返回当前指令的符号或者十进制值，当且仅当commandType()是A_COMMAND或L_COMMAND时才能调用
		string dest();					//返回当前C-指令的dest助记符（具有8种可能形式）， 仅当commandType是C_COMMAND才能调用
		string comp();					//返回当前C-指令的comp助记符（具体28种可能形式），
		string jump();					//返回当前C-指令的jump助记符（具有8种可能形式）， 仅当commandType() 是 C_COMMAND时可以调用
	};

}
#endif