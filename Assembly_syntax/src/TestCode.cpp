/*
* @Author: GUNK
* @Date:   2021-02-01 20:28:47
* @Last Modified by:   GUNK
* @Last Modified time: 2021-02-01 20:39:15
* @Edited with: sublime Text 3
* @Language: cpp
* @descriptions:
*/
#include <iostream>
#include "Code.h"
int main(int argc, char const *argv[])
{
	using namespace std;
	HackAsm::Code TestCode;
	int N, Type;
	string src;
	cout << "Enter the numbers of tests : (Empty line to quit)" << endl;
	cin >> N;
	for (int i = 0; i < N; ++i)
	{
		cout << "Enter the Type of test : ";
		cin >> Type;
		switch(Type)
		{
			case 0:
				cout << "Enter the Name : ";
				cin >> src;
				cout << "The binary expression of src is " << TestCode.dest(src) << endl;
				break;
			case 1:
				cout << "Enter the Name : ";
				cin >> src;
				cout << "The binary expression of src is " << TestCode.comp(src) << endl;
				break;
			case 2:
				cout << "Enter the Name : ";
				cin >> src;
				cout << "The binary expression of src is " << TestCode.jump(src) << endl;
				break;
			default:
				cout << "Type error!!!";
				break;	
		}
	}
	return 0;
}