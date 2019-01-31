#!/bin/sh
bindir=$(pwd)
cd /Users/neowoodley/Projects/CLionProjects/Try4/playground/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/neowoodley/Projects/CLionProjects/Try4/cmake-build-debug/playground 
	else
		"/Users/neowoodley/Projects/CLionProjects/Try4/cmake-build-debug/playground"  
	fi
else
	"/Users/neowoodley/Projects/CLionProjects/Try4/cmake-build-debug/playground"  
fi
