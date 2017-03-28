#ifndef GTEST_SAMPLES_SAMPLE1_H_
#define GTEST_SAMPLES_SAMPLE1_H_
#include <ros/ros.h>

class Math{
	public:
		int Adder(int a, int b);

		int Subtracter(int a, int b);

		int Multiplier(int a, int b);

		int Divider(int a, int b);
};

double GetParametersTest();



#endif 