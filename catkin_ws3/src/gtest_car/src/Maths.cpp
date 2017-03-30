#include "Maths.h"
#include <ros/ros.h>

int Math::Adder(int a, int b){
	return a+b;
}
int Math::Subtracter(int a, int b){
	return a-b;
}
int Math::Multiplier(int a, int b){
	return a*b;
}
int Math::Divider(int a, int b){
	return a/b;
}
double GetParametersTest(){
	double M;
	ros::NodeHandle nh;
	if(!nh.getParam("mass", M)){
		return 10;
	}
	return M;
}