#!/bin/sh
bindir=$(pwd)
cd /Users/neowoodley/Projects/CLionProjects/Try4/misc05_picking/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/neowoodley/Projects/CLionProjects/Try4/cmake-build-debug/misc05_picking_custom 
	else
		"/Users/neowoodley/Projects/CLionProjects/Try4/cmake-build-debug/misc05_picking_custom"  
	fi
else
	"/Users/neowoodley/Projects/CLionProjects/Try4/cmake-build-debug/misc05_picking_custom"  
fi
