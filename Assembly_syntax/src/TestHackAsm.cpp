/*
* @Author: GUNK
* @Date:   2021-02-02 09:57:47
* @Last Modified by:   GUNK
* @Last Modified time: 2021-02-02 11:40:02
* @Edited with: sublime Text 3
* @Language: cpp
* @descriptions:
*/
#include <string>
#include <iostream>
#include "HackAsm.h"
using namespace std;
int main(int argc, char const *argv[])
{
	string a = "10";
	cout << HackAsm::Dec2Bin(a) << endl;
	return 0;
}