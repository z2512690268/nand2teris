/*
* @Author: GUNK
* @Date:   2021-02-01 21:23:45
* @Last Modified by:   GUNK
* @Last Modified time: 2021-02-02 18:10:46
* @Edited with: sublime Text 3
* @Language: cpp
* @descriptions:
*/
 
#ifndef _HACKASM_H
#define _HACKASM_H

#include <string>
namespace HackAsm
{
	using std::string;
	string Del_space(string str);
	string Dec2Bin(string str);
	bool IsNum(string str);
}

#endif