/*
* @Author: GUNK
* @Date:   2021-02-14 10:32:44
* @Last Modified by:   GUNK
* @Last Modified time: 2021-02-16 16:14:28
* @Edited with: sublime Text 3
* @Language: cpp
* @descriptions:
*/
 
#ifndef _VMWRITER_H
#define _VMWRITER_H

#include <fstream>
#include <iostream>
#include <cstdlib>
#include <string>
namespace JackCompiler{
	using std::endl;
	using std::string;
	class VMWriter {
	protected:
		std::ofstream fout;
	public:
		VMWriter(const string& filename);
		~VMWriter();
		void writePush(string segment, int index);
		void writePop(string segment, int index);
		void writeArithmetic(string command);
		void writeLabel(string label, int index);
		void writeGoto(string label, int index);
		void writeIf(string label, int index);
		void writeCall(string name, int nArgs);
		void writeFunction(string name, int nArgs);
		void writeReturn();
	};
}

#endif