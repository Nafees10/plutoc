#!/bin/bash

if [ $# = 0 ]; then
	echo "building release config";
	g++ -shared src/*.h src/*.cpp -s -O3 -fPIC -o falcon.so -std=c++11;
elif [ $1 = "debug" ]; then
	echo "building debug config";
	g++ -shared -DDEBUG src/*.h src/*.cpp -fPIC -g -o falcon.so -std=c++11;
elif [ $1 = "test" ]; then
	echo "building debug test config"
	g++ -DDEBUG src/*.h src/*.cpp test.cpp -fPIC -g -o falcon.so -std=c++11;
fi
