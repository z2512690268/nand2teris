/*
* @Author: GUNK
* @Date:   2021-01-31 16:13:35
* @Last Modified by:   GUNK
* @Last Modified time: 2021-02-01 21:24:56
* @Edited with: sublime Text 3
* @Language: cpp
* @descriptions:
*/
 
#ifndef _CODE_H
#define _CODE_H
#include "HackAsm.h"
#include <string>
namespace HackAsm
{
	using std::string;
	class Code
	{
	protected:
		static const int NumberOfDest = 8;
		static const int NumberOfComp = 28;
		static const int NumberOfJump = 8;
		const string DestType[NumberOfDest]{
			"Null", "M", "D", "MD", "A", "AM", "AD", "AMD"
		};
		const string CompType[NumberOfComp]{
			"0", "1", "-1", 
			"D", "A", "!D", "!A", "-D", "-A", "D+1", "A+1", "D-1", "A-1", "D+A", "D-A", "A-D", "D&A", "D|A",
			"M", "!M", "-M", "M+1", "M-1", "D+M", "D-M", "M-D", "D&M", "D|M"
		};
		const string JumpType[NumberOfJump]{
			"null", "JGT", "JEQ", "JGE", "JLT", "JNE", "JLE", "JMP"
		};
	public:
		string dest(string src);	//返回dest助记符的二进制码
		string comp(string src);	//返回comp助记符的二进制码
		string jump(string src);	//返回jump助记符的二进制码
	};
}

#endif