@ECHO OFF
@REM ###########################################
@REM # Script file to run the flow 
@REM # 
@REM ###########################################
@REM #
@REM # Command line for ngdbuild
@REM #
ngdbuild -p xc3s500e-4pq208 -nt timestamp -intstyle xflow "C:\Users\laca\Desktop\iRoobo2014Ver3\Fpga\SPARTAN3E\Spartan3E6500SystemVer2\dcMOTORVelocityPID\netlist\xflow/jtagcosim_top.ngc" jtagcosim_top.ngd 

@REM #
@REM # Command line for map
@REM #
map -o jtagcosim_top_map.ncd -intstyle xflow -timing -pr b -ol high jtagcosim_top.ngd jtagcosim_top.pcf 

@REM #
@REM # Command line for par
@REM #
par -w -ol std -intstyle xflow jtagcosim_top_map.ncd jtagcosim_top.ncd jtagcosim_top.pcf 

@REM #
@REM # Command line for bitgen
@REM #
bitgen -w -intstyle xflow -g StartUpClk:JtagClk jtagcosim_top.ncd 

