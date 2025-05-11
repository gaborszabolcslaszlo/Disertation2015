#
# Created by System Generator     Mon Mar  2 11:23:33 2015
#
# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator.
#

namespace eval ::xilinx::dsptool::iseproject::param {
    set SynthStrategyName {XST Defaults*}
    set ImplStrategyName {ISE Defaults*}
    set Compilation {Nexys2iROOBO}
    set Project {onoff_cw}
    set DSPFamily {Spartan3E}
    set DSPDevice {xc3s1200e}
    set DSPPackage {fg320}
    set DSPSpeed {-4}
    set HDLLanguage {vhdl}
    set SynthesisTool {XST}
    set Simulator {Modelsim-SE}
    set ReadCores {False}
    set MapEffortLevel {High}
    set ParEffortLevel {High}
    set Frequency {50}
    set CreateInterfaceDocument {off}
    set NewXSTParser {0}
	if { [ string equal $Compilation {IP Packager} ] == 1 } {
		set PostProjectCreationProc {dsp_package_for_vivado_ip_integrator}
		set IP_Library_Text {SysGen}
		set IP_Vendor_Text {Xilinx}
		set IP_Version_Text {1.0}
		set IP_Categories_Text {System Generator for DSP}
		set IP_Common_Repos {0}
		set IP_Dir {}
		set IP_LifeCycle_Menu {1}
		set IP_Description    {}
		
	}
    set ProjectFiles {
        {{onoff_cw.vhd} -view All}
        {{onoff.vhd} -view All}
        {{onoff_cw.ucf}}
        {{onoff_cw.xdc}}
        {{E:\Allamvizsga\Spartan3E6500SystemVer2\ONOFF\onOff.slx}}
    }
    set TopLevelModule {onoff_cw}
    set SynthesisConstraintsFile {onoff_cw.xcf}
    set ImplementationStopView {Structural}
    set ProjectGenerator {SysgenDSP}
}
    source SgIseProject.tcl
    ::xilinx::dsptool::iseproject::create
