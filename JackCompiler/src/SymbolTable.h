/*
* @Author: GUNK
* @Date:   2021-02-14 07:46:44
* @Last Modified by:   GUNK
* @Last Modified time: 2021-02-15 07:52:22
* @Edited with: sublime Text 3
* @Language: cpp
* @descriptions:
*/
 
#ifndef _SYMBOLTABLE_H
#define _SYMBOLTABLE_H

#include <iostream>
#include <string>
#include <map>
namespace JackCompiler{
	using std::string;
	class SymbolTabelElement{
	private:
		string Type;
		string Kind;
		int Index;
	public:
		SymbolTabelElement(){};
		SymbolTabelElement(const string& type, const string& kind, const int& index)
			: Type(type), Kind(kind), Index(index){};
		SymbolTabelElement(const SymbolTabelElement& STE)
			: Type(STE.Type), Kind(STE.Kind), Index(STE.Index){}
		string GetType(){return Type;}
		string GetKind(){return Kind;}
		int GetIndex()	{return Index;}
	};

	class SymbolTable {
	protected:
		std::map <string, SymbolTabelElement> ClassTable;
		std::map <string, SymbolTabelElement> SubroutineTable;
		std::map <string, int> KindCnt;
	public:
		SymbolTable();
		~SymbolTable();
		void startSubroutine();
		//重置子程序作用表
		void Define(const string& name, const string& type, const string& kind); 
		//加入一个新变量
		int varcount(string kind);
		//返回当前作用域特定种类的变量数
		string KindOf(string name);
		//返回标识符的种类
		string TypeOf(string name);
		//返回当前作用域内标识符的类型
		int IndexOf(string name);
		//返回标识符的索引		
		void ShowTable();
		//遍历table,并输出
	};
}

#endif