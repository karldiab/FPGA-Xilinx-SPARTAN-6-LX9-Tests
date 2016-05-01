#!/bin/sh
# 
# PlanAhead(TM)
# runme.sh: PlanAhead-generated Script for launching ISim application
# Copyright 1986-1999, 2001-2012 Xilinx, Inc. All Rights Reserved.
# 
if [ -z "$PATH" ]; then
  PATH=%XILINX%\lib\%PLATFORM%;%XILINX%\bin\%PLATFORM%:C:/Xilinx/14.2/ISE_DS/EDK/bin/nt64;C:/Xilinx/14.2/ISE_DS/EDK/lib/nt64;C:/Xilinx/14.2/ISE_DS/ISE/bin/nt64;C:/Xilinx/14.2/ISE_DS/ISE/lib/nt64;C:/Xilinx/14.2/ISE_DS/common/bin/nt64;C:/Xilinx/14.2/ISE_DS/common/lib/nt64
else
  PATH=%XILINX%\lib\%PLATFORM%;%XILINX%\bin\%PLATFORM%:C:/Xilinx/14.2/ISE_DS/EDK/bin/nt64;C:/Xilinx/14.2/ISE_DS/EDK/lib/nt64;C:/Xilinx/14.2/ISE_DS/ISE/bin/nt64;C:/Xilinx/14.2/ISE_DS/ISE/lib/nt64;C:/Xilinx/14.2/ISE_DS/common/bin/nt64;C:/Xilinx/14.2/ISE_DS/common/lib/nt64:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=:
else
  LD_LIBRARY_PATH=::$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

#
# Setup env for Xilinx simulation libraries
#
XILINX_PLANAHEAD=C:/Xilinx/14.2/ISE_DS/PlanAhead
export XILINX_PLANAHEAD
ExecStep()
{
   "$@"
   RETVAL=$?
   if [ $RETVAL -ne 0 ]
   then
       exit $RETVAL
   fi
}


ExecStep fuse -intstyle pa -incremental --nodebug -L simprims_ver -L secureip -o spi_tb.exe --prj C:/Users/Karl/Documents/CSTProjects/mojo-base-project-master/Helloworld/Helloworld.sim/sim_1/spi_tb.prj -top work.spi_tb -top work.glbl