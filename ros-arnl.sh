#!/bin/bash

ARNLBASE=arnl-base_1.9.2prerelease20160802+ubuntu12_amd64.deb
LIBARNL=libarnl_1.9.2prerelease20160802+ubuntu12_amd64.deb
CATKIN=~/proj/catkin

# install arnl-base
curl -O -u microsoft http://robots.mobilerobots.com/BaseArnl/download/prerelease/$ARNLBASE
sudo dpkg -i $ARNLBASE
rm -f $ARNLBASE

# install libarnl
curl -O -u microsoft http://robots.mobilerobots.com/ARNL/download/prerelease/$LIBARNL
sudo dpkg -i $LIBARNL
rm -f $LIBARNL

# ros-arnl
cd $CATKIN
git clone https://github.com/MobileRobots/ros-arnl src
catkin_make

[100%] Linking CXX executable /home/ashleyf/proj/setup/devel/lib/rosarnl/rosarnl_node
CMakeFiles/rosarnl_node.dir/ArnlSystem.cpp.o: In function `ArnlSystem::setup()':
ArnlSystem.cpp:(.text+0x1c4d): undefined reference to `ArServerHandlerMapping::ArServerHandlerMapping(ArServerBase*, ArRobot*, ArLaser*, char const*, char const*, bool, ArLaser*, char const*, char const*, std::__cxx11::list<ArLaser*, std::allocator<ArLaser*> >*)'
ArnlSystem.cpp:(.text+0x1ffa): undefined reference to `ArConfig::parseFile(char const*, bool, bool, char*, unsigned long, std::__cxx11::list<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >*, ArPriority::Priority, ArPriority::Priority, ArConfigArg::RestartLevel*)'
CMakeFiles/rosarnl_node.dir/ArnlSystem.cpp.o: In function `ArRangeDevice::getCurrentBuffer[abi:cxx11]() const':
ArnlSystem.cpp:(.text._ZNK13ArRangeDevice16getCurrentBufferB5cxx11Ev[_ZNK13ArRangeDevice16getCurrentBufferB5cxx11Ev]+0x18): undefined reference to `ArRangeBuffer::getBuffer[abi:cxx11]() const'
CMakeFiles/rosarnl_node.dir/ArnlSystem.cpp.o: In function `ArRangeDevice::getCumulativeBuffer[abi:cxx11]() const':
ArnlSystem.cpp:(.text._ZNK13ArRangeDevice19getCumulativeBufferB5cxx11Ev[_ZNK13ArRangeDevice19getCumulativeBufferB5cxx11Ev]+0x1a): undefined reference to `ArRangeBuffer::getBuffer[abi:cxx11]() const'
CMakeFiles/rosarnl_node.dir/ArnlSystem.cpp.o: In function `ArRangeDevice::getCurrentBuffer[abi:cxx11]()':
ArnlSystem.cpp:(.text._ZN13ArRangeDevice16getCurrentBufferB5cxx11Ev[_ZN13ArRangeDevice16getCurrentBufferB5cxx11Ev]+0x18): undefined reference to `ArRangeBuffer::getBuffer[abi:cxx11]()'
CMakeFiles/rosarnl_node.dir/ArnlSystem.cpp.o: In function `ArRangeDevice::getCumulativeBuffer[abi:cxx11]()':
ArnlSystem.cpp:(.text._ZN13ArRangeDevice19getCumulativeBufferB5cxx11Ev[_ZN13ArRangeDevice19getCumulativeBufferB5cxx11Ev]+0x1a): undefined reference to `ArRangeBuffer::getBuffer[abi:cxx11]()'
CMakeFiles/rosarnl_node.dir/LaserPublisher.cpp.o: In function `LaserPublisher::publishPointCloud()':
LaserPublisher.cpp:(.text+0x12bb): undefined reference to `ArRangeBuffer::getBuffer[abi:cxx11]()'
collect2: error: ld returned 1 exit status
CMakeFiles/rosarnl_node.dir/build.make:207: recipe for target '/home/ashleyf/proj/setup/devel/lib/rosarnl/rosarnl_node' failed
make[2]: *** [/home/ashleyf/proj/setup/devel/lib/rosarnl/rosarnl_node] Error 1
CMakeFiles/Makefile2:2238: recipe for target 'CMakeFiles/rosarnl_node.dir/all' failed
make[1]: *** [CMakeFiles/rosarnl_node.dir/all] Error 2
Makefile:138: recipe for target 'all' failed
make: *** [all] Error 2
Invoking "make -j16 -l16" failed
