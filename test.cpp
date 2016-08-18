#include <iostream>
//#include <CL/cl.h>
#include <CL/cl.hpp>
#include <vector>

int main(int argc, const char *argv[])
{
	std::vector<cl::Platform> all_platforms;
    cl::Platform::get(&all_platforms);		

	if(all_platforms.size()==0){
		std::cout<<" No platforms found. Check OpenCL installation!\n";
        exit(1);
    }

	cl::Platform default_platform=all_platforms[0];
    std::cout << "Using platform: "<<default_platform.getInfo<CL_PLATFORM_NAME>()<<"\n";

	return 0;
}
