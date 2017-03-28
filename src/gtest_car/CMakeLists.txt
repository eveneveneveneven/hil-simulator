cmake_minimum_required(VERSION 2.8.3)
set(PROJECT_NAME gtest_car)
project(${PROJECT_NAME})

find_package(catkin REQUIRED COMPONENTS
  roscpp
  std_msgs
  genmsg
)
add_definitions(-std=c++11 -Wall -g)

include_directories(
  ${catkin_INCLUDE_DIRS}
)

add_message_files(FILES Num.msg)
add_service_files(FILES AddTwoInts.srv)


generate_messages(
  DEPENDENCIES
  std_msgs
)

catkin_package()

include_directories(  
	include/${PROJECT_NAME}
  	${catkin_INCLUDE_DIRS}
  	${GTEST_INCLUDE_DIRS}
)

add_executable(talker2 src/Talker.cpp)
target_link_libraries(talker2 ${catkin_LIBRARIES})
add_dependencies(talker2 gtest_car_gen_messages_cpp)

add_executable(listener2 src/Listener.cpp)
target_link_libraries(listener2 ${catkin_LIBRARIES})
add_dependencies(listener2 gtest_car_gen_messages_cpp)


#############
## Testing ##
#############


if(CATKIN_ENABLE_TESTING)
		##find_package(rostest REQUIRED)
		catkin_add_gtest(${PROJECT_NAME}-test launch/gtest.test src/Test.cpp)
  	target_link_libraries(${PROJECT_NAME}-test ${catkin_LIBRARIES})
endif()