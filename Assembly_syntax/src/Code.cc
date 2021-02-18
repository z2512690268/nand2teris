/*
* @Author: GUNK
* @Date:   2021-02-01 20:01:41
* @Last Modified by:   GUNK
* @Last Modified time: 2021-02-01 21:14:07
* @Edited with: sublime Text 3
* @Language: cpp
* @descriptions:
*/
#include <iostream>
#include <cstdlib>
#include "Code.h"
namespace HackAsm
{
	using std::string;
	string Code::dest(string src)
	{
		int Aim = -1;
		for(int i = 0; i < NumberOfDest; ++i)
			if(DestType[i] == src)
				Aim = i;
		switch(Aim)
		{
			case 0:
				return "000";
			case 1:
				return "001";
			case 2:
				return "010";
			case 3:
				return "011";
			case 4:
				return "100";
			case 5:
				return "101";
			case 6:
				return "110";
			case 7:
				return "111";
			default:
				return "000";
		}
	}
	string Code::comp(string src)
	{
		int Aim = -1;
		for(int i = 0; i < NumberOfComp; ++i)
			if(CompType[i] == src)
				Aim = i;
		switch(Aim)
		{
			case 0:
				return "0101010";
			case 1:
				return "0111111";
			case 2:
				return "0111010";
			case 3:
				return "0001100";
			case 4:
				return "0110000";
			case 5:
				return "0001101";
			case 6:
				return "0110001";
			case 7:
				return "0001111";
			case 8:
				return "0110011";
			case 9:
				return "0011111";
			case 10:
				return "0110111";
			case 11:
				return "0001110";
			case 12:
				return "0110010";
			case 13:
				return "0000010";
			case 14:
				return "0010011";
			case 15:
				return "0000111";
			case 16:
				return "0000000";
			case 17:
				return "0010101";
			case 18:
				return "1110000";
			case 19:
				return "1110001";
			case 20:
				return "1110011";
			case 21:
				return "1110111";
			case 22:
				return "1110010";
			case 23:
				return "1000010";
			case 24:
				return "1010011";
			case 25:
				return "1000111";
			case 26:
				return "1000000";
			case 27:
				return "1010101";
			default:
				std::cerr << "Undefination of CompType : " << src << std::endl; 
				exit(EXIT_FAILURE);
		}
	}
	string Code::jump(string src)
	{
		int Aim = -1;
		for(int i = 0; i < NumberOfJump; ++i)
			if(JumpType[i] == src)
				Aim = i;
		switch(Aim)
		{
			case 0:
				return "000";
			case 1:
				return "001";
			case 2:
				return "010";
			case 3:
				return "011";
			case 4:
				return "100";
			case 5:
				return "101";
			case 6:
				return "110";
			case 7:
				return "111";
			default:
				return "000";
		}
	}
}