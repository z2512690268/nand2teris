/*
* @Author: GUNK
* @Date:   2021-02-02 12:47:35
* @Last Modified by:   GUNK
* @Last Modified time: 2021-02-02 12:52:39
* @Edited with: sublime Text 3
* @Language: cpp
* @descriptions:
*/
#include "SymbolTable.h"
#include <iostream>
int main(int argc, char const *argv[])
{
	using namespace std;
	HackAsm::SymbolTable ST;
	string key;
	int val;
	int type;
	for(int i = 0; i < 100; ++i)
	{
		cout << "Enter the operation type : (0 -- Add, 1 -- Query, 2 -- Get)" << endl;
		cin >> type;
		switch(type)
		{
			case 0:
				cout << "Enter the Key and Val: ";
				cin >> key >> val;
				ST.addEntry(key, val);
				break;
			case 1:
				cout << "Enter the Key: ";
				cin >> key;
				cout << ST.contains(key) << endl;
				break;
			case 2:
				cout << "Enter the Key: ";
				cin >> key;
				cout << ST.GetAddress(key) << endl;
				break;
			default:
				cout << "Enter Error!!!" << endl;
				break;
		}
	}
	return 0;
}