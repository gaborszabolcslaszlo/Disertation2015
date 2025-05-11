#
# Created by System Generator     Mon Feb 23 19:17:42 2015
#
# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator.
#

namespace eval ::xilinx::dsptool::iseproject::param {
    set SynthStrategyName {XST Defaults*}
    set ImplStrategyName {ISE Defaults*}
    set Compilation {Sparten3e500kpq208c4}
    set Project {motorspeed_cw}
    set DSPFamily {Spartan3E}
    set DSPDevice {xc3s500e}
    set DSPPackage {pq208}
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
        {{motorspeed_cw.vhd} -view All}
        {{motorspeed.vhd} -view All}
        {{motorspeed_cw.ucf}}
        {{motorspeed_cw.xdc}}
        {{C:\Users\laca\Desktop\iRoobo2014Ver3\Fpga\SPARTAN3E\Spartan3E6500SystemVer2\dcMOTORVelocityPID\MotorSpeed.slx}}
    }
    set TopLevelModule {motorspeed_cw}
    set SynthesisConstraintsFile {motorspeed_cw.xcf}
    set ImplementationStopView {Structural}
    set ProjectGenerator {SysgenDSP}
}
    source SgIseProject.tcl
    ::xilinx::dsptool::iseproject::create
