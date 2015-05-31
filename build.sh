#!/bin/bash
if [ -f "agent.so" ]; then
	echo "Removing old agent"
	rm agent.so 
fi; 
g++ -shared -o agent.so -fPIC -I/opt/oracle-jdk-bin-1.8.0.31/include/ -I/opt/oracle-jdk-bin-1.7.0.72/include/linux agent.c  &&
java -agentpath:"$(pwd)/agent.so" Main
