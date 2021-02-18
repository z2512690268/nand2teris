/*
* @Author: GUNK
* @Date:   2021-02-01 21:23:07
* @Last Modified by:   GUNK
* @Last Modified time: 2021-02-02 18:10:39
* @Edited with: sublime Text 3
* @Language: cpp
* @descriptions:
*/
#include "HackAsm.h"
#include <string>
#include <algorithm>
#include <iostream>
#include <iomanip>
#include <cctype>
namespace HackAsm
{
	using std::string;
	using std::cout;
	using std::endl;
	
	string Del_space(string str)
	{
		string::iterator end_pos = std::remove(str.begin(), str.end(), ' ');
		str.erase(end_pos, str.end());
		return str;
	}
	string Dec2Bin(string str)
	{
		int x = 0;
		string res = "";
		// cout << str << endl;
		for(string::iterator it = str.begin(); it < str.end(); ++it)
		{
			x = (x << 3) + (x << 1) + (*it) - '0';
		}
		// cout << x << endl;
		while(x)
		{
			char ch = (x & 1) + '0';
			res = res + ch;
			x >>= 1;
		}
		std::reverse(res.begin(), res.end());
		// std::cout << res << std::endl;
		res = std::string(16 - res.length(), '0') + res;
		return res;
	}
	bool IsNum(string str)
	{
		for(string::iterator it = str.begin(); it < str.end(); it++){
			if(!isdigit(*it))
				return false;
		}
		return true;
	}
}