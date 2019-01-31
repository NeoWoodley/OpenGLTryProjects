#!/bin/sh
bindir=$(pwd)
cd /Users/neowoodley/Projects/CLionProjects/Try4/test1/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/neowoodley/Projects/CLionProjects/Try4/cmake-build-debug/test1 
	else
		"/Users/neowoodley/Projects/CLionProjects/Try4/cmake-build-debug/test1"  
	fi
else
	"/Users/neowoodley/Projects/CLionProjects/Try4/cmake-build-debug/test1"  
fi
