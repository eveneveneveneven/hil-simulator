#include <ros/ros.h>
#include "Maths.h"
#include "Maths.cpp"
#include <gtest/gtest.h>
#include <thread>


TEST(MathTest, adderTest){
  Math math;
  ASSERT_EQ(5, math.Adder(2, 3));
}
TEST(MathTest, subtracterTest){
  Math math;
  ASSERT_EQ(-1, math.Subtracter(2, 3));
}
TEST(MathTest, multiplierTest){
  Math math;
  ASSERT_EQ(6, math.Multiplier(2, 3));
}
TEST(MathTest, dividerTest){
  Math math;
  ASSERT_EQ(0, math.Divider(2, 3));
}
TEST(ParamTest, getParameter){
  EXPECT_EQ(3300, GetParametersTest());
}
int main(int argc, char** argv){
  ros::init(argc, argv, "GTestTestNode");
  testing::InitGoogleTest(&argc, argv);

  std::thread t([]{while(ros::ok()) ros::spin();});

  auto res = RUN_ALL_TESTS();

  ros::shutdown();
  return res;
}