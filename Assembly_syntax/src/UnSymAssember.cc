/*
* @Author: GUNK
* @Date:   2021-02-01 20:54:54
* @Last Modified by:   GUNK
* @Last Modified time: 2021-02-02 18:12:51
* @Edited with: sublime Text 3
* @Language: cpp
* @descriptions:
*/
#include "UnSymAssember.h"
#include "HackAsm.h"
#include <iomanip>
namespace HackAsm
{
	using std::endl;
	UnSymAssember::UnSymAssember(const string& inputfile, const string& OutputFile) : Parser(inputfile), fout(OutputFile)
	{
		if(!fout){
			std::cerr << "Output File open error" << endl;
			std::exit(EXIT_FAILURE);
		}
	}
	UnSymAssember::~UnSymAssember()
	{
		if(fout.is_open()){
			fout.close();
		}
	}
	void UnSymAssember::DealOut()
	{
		while(Parser::hasMoreCommands())
		{
			Parser::advance();
			int Type = Parser::commandType();
			if(Type == Parser::A_COMMAND)
				fout << Dec2Bin(Parser::symbol()) << endl;
			else if(Type == Parser::C_COMMAND)
				fout << "111" << Code::comp(Parser::comp()) << Code::dest(Parser::dest()) << Code::jump(Parser::jump()) << endl; 
		}
	}
}