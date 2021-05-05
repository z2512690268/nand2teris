/*
* @Author: GUNK
* @Date:   2021-02-14 09:28:05
* @Last Modified by:   GUNK
* @Last Modified time: 2021-02-14 23:11:52
* @Edited with: sublime Text 3
* @Language: cpp
* @descriptions:
*/
#include <iostream>
#include <string>
#include <map>
#include "SymbolTable.h"
namespace JackCompiler{
	using std::string;
	SymbolTable::SymbolTable(){
		KindCnt["arg"] = KindCnt["var"] = KindCnt["static"] = KindCnt["field"] = 0;
	};
	SymbolTable::~SymbolTable(){};
	//重置子程序作用表
	void SymbolTable::startSubroutine(){
		SubroutineTable.erase(SubroutineTable.begin(), SubroutineTable.end());
		KindCnt["arg"] = KindCnt["var"] = 0;
	}
	//加入一个新变量
	void SymbolTable::Define(const string& name, const string& type, const string& kind){
		if(kind == "static" || kind == "field"){
			ClassTable[name] = SymbolTabelElement(type, kind, KindCnt[kind]);
			KindCnt[kind]++;
		}
		else{
			SubroutineTable[name] = SymbolTabelElement(type, kind, KindCnt[kind]);
			KindCnt[kind]++;
		}
	} 
	//返回当前作用域特定种类的变量数
	int SymbolTable::varcount(string kind){
		return KindCnt[kind];
	}
	//返回标识符的种类
	string SymbolTable::KindOf(string name){
		if(SubroutineTable.find(name) != SubroutineTable.end()){
			return SubroutineTable[name].GetKind();
		}
		else if(ClassTable.find(name) != ClassTable.end())
		{
			return ClassTable[name].GetKind();
		}
		return "";
	}
	//返回当前作用域内标识符的类型
	string SymbolTable::TypeOf(string name){
		if(SubroutineTable.find(name) != SubroutineTable.end()){
			return SubroutineTable[name].GetType();
		}
		else if(ClassTable.find(name) != ClassTable.end())
		{
			return ClassTable[name].GetType();
		}
		return "";	
	}
	//返回标识符的索引		
	int SymbolTable::IndexOf(string name){
		if(SubroutineTable.find(name) != SubroutineTable.end()){
			return SubroutineTable[name].GetIndex();
		}
		else if(ClassTable.find(name) != ClassTable.end())
		{
			return ClassTable[name].GetIndex();
		}
		return -1;	
	}

	void SymbolTable::ShowTable(){
		std::map <string, SymbolTabelElement>::iterator iter;
		for (iter = ClassTable.begin(); iter != ClassTable.end(); iter++)
    	{
			std::cout << iter->first << " " << iter->second.GetKind() << " " << iter->second.GetType() << " " << iter->second.GetIndex() << std::endl;     
    	}
    	std::cout << "###############################" << std::endl;
		for (iter = SubroutineTable.begin(); iter != SubroutineTable.end(); iter++)
    	{
			std::cout << iter->first << " " << iter->second.GetKind() << " " << iter->second.GetType() << " " << iter->second.GetIndex() << std::endl;     
    	}
	}
}