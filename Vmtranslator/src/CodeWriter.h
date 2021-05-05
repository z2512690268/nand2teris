/*
* @Author: GUNK
* @Date:   2021-02-02 22:33:41
* @Last Modified by:   GUNK
* @Last Modified time: 2021-02-18 09:14:05
* @Edited with: sublime Text 3
* @Language: cpp
* @descriptions:
*/
 
#ifndef _CODEWRITER_H
#define _CODEWRITER_H

#include <fstream>
#include <string>
#include <map>

namespace VmTranslator
{
	using std::string;
	class CodeWriter
	{
	protected:
		std::ofstream fout;
		std::map<string, string> ConstTable;
		string NowFile;
		string NowFunc;
		int JudgeCnt;
		int CallCnt;
	public:
		CodeWriter(const string& filename);
		~CodeWriter();
		void setFileName(const string& filename);
		void setFuncName(const string& funcname);
		void WriteInit();
		void WriteArithmetic(const string& Command);
		void WriteJudge(const string& Command);
		void WritePush(const string& segment, const string& index);
		void WritePop(const string& segment, const string& index);
		void WriteLabel(const string& labelname);
		void WriteGoto(const string& labelname);
		void WriteIf(const string& labelname);
		void WriteCall(const string& funcname, const string& numArgs);
		void WriteReturn();
		void WriteFunction(const string& funcname, const string& numLocals);
	};
}

#endif