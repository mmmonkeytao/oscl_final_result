// usr/bin/clang++ read_parameters.cpp -o read_parameters -O3 -Wall -I/usr/local/Cellar/eigen/3.2.2/include/eigen3 -std=c++11 -stdlib=libc++
#include <iostream>
#include <fstream>
#include <Eigen/Dense>
#include <string>
#include <vector>

using namespace std;
using namespace Eigen;

int main(int argc, char** argv)
{
  const uint type_num = argc - 3;
  vector<string> types;
  const uint qtimes = atoi(argv[2]);
  vector<VectorXd> vec;
  
  for(uint i = 3; i < argc; ++i)
    {
      string s(argv[i]);
      types.push_back(s);
    }

  for(uint i = 0; i < type_num; ++i)
    {
      ifstream ifile(argv[1]);
      VectorXd v{qtimes};
	
      string line;

      uint count = 0;
      while(count < qtimes && !ifile.eof())
	{
	  getline(ifile, line);
	  size_t start = line.find( types[i] ); 
	  if( start != string::npos)
	    {
	      size_t pos = line.find_last_of(' ');
	      ++pos;
	      v(count) = atof(line.substr(pos,string::npos).c_str());
	      ++count;
	    }
	}
      vec.push_back(v);
      ifile.close();
    }

  ofstream of1("typeNames.dat"), of2("charaVars.dat");
  
  for(auto &x: types)
    of1 << x << endl;
  of1.close();

  for(auto &x: vec)
    of2 << x.transpose() << endl;
  of2.close();
  

  return 0;
}
