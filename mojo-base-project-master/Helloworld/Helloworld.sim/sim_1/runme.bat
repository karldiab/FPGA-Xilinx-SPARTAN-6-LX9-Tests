@echo off


rem  PlanAhead(TM)
rem  runme.bat: a PlanAhead-generated ISim simulation Script
rem  Copyright 1986-1999, 2001-2012 Xilinx, Inc. All Rights Reserved.


set PATH=%XILINX%\lib\%PLATFORM%;%XILINX%\bin\%PLATFORM%;C:/Xilinx/14.2/ISE_DS/EDK/bin/nt64;C:/Xilinx/14.2/ISE_DS/EDK/lib/nt64;C:/Xilinx/14.2/ISE_DS/ISE/bin/nt64;C:/Xilinx/14.2/ISE_DS/ISE/lib/nt64;C:/Xilinx/14.2/ISE_DS/common/bin/nt64;C:/Xilinx/14.2/ISE_DS/common/lib/nt64;C:/Xilinx/14.2/ISE_DS/PlanAhead/bin;%PATH%

set XILINX_PLANAHEAD=C:/Xilinx/14.2/ISE_DS/PlanAhead

fuse -intstyle pa -incremental --nodebug -L simprims_ver -L secureip -o spi_tb.exe --prj C:/Users/Karl/Documents/CSTProjects/mojo-base-project-master/Helloworld/Helloworld.sim/sim_1/spi_tb.prj -top work.spi_tb -top work.glbl
if errorlevel 1 (
   cmd /c exit /b %errorlevel%
)
