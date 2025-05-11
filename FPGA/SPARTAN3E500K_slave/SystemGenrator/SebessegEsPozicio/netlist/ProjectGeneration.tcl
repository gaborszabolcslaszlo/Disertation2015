#
# Created by System Generator     Mon Jun 22 13:41:38 2015
#
# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator.
#

namespace eval ::xilinx::dsptool::iseproject::param {
    set SynthStrategyName {XST Defaults*}
    set ImplStrategyName {ISE Defaults*}
    set Compilation {meresv2}
    set Project {meresholtidomotrok_cw}
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
        {{meresholtidomotrok_cw.vhd} -view All}
        {{meresholtidomotrok.vhd} -view All}
        {{meresholtidomotrok_cw.ucf}}
        {{meresholtidomotrok_cw.xdc}}
        {{C:\Diak\gl\SPARTAN3E500K_slave\SystemGenrator\SebessegEsPozicio\MeresHoltidoMotrok.slx}}
    }
    set TopLevelModule {meresholtidomotrok_cw}
    set SynthesisConstraintsFile {meresholtidomotrok_cw.xcf}
    set ImplementationStopView {Structural}
    set ProjectGenerator {SysgenDSP}
}
    source SgIseProject.tcl
    ::xilinx::dsptool::iseproject::create
