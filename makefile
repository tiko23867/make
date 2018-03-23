#
# PROGRAM:    assign3
# PROGRAMMER: Jaxson Reynolds
# LOGON ID:   z1776180
# DATE DUE:   Feb 22 2016
#

# Compiler variables
CCFLAGS = -ansi -Wall -std=c++11

# Rule to link object code files to create executable file
assign5: assign5.o NIUString.o 
	g++ $(CCFLAGS) -o assign5 assign5.o NIUString.o 

# Rules to compile source code file to object code
assign5.o: assign5.cpp NIUString.h
	g++ $(CCFLAGS) -c assign5.cpp

NIUString.o: NIUString.cpp NIUString.h
	g++ $(CCFLAGS) -c NIUString.cpp

# Pseudo-target to remove object code and executable files
clean:
	-rm *.o assign5

