@ECHO OFF
@REM ###########################################
@REM # Script file to run the flow 
@REM # 
@REM ###########################################
@REM #
@REM # Command line for ngdbuild
@REM #
ngdbuild -p xc3s1200e-4fg320 -nt timestamp -intstyle xflow "E:\Allamvizsga\Spartan3E6500SystemVer2\ONOFF\netlist\xflow/jtagcosim_top.ngc" jtagcosim_top.ngd 

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

