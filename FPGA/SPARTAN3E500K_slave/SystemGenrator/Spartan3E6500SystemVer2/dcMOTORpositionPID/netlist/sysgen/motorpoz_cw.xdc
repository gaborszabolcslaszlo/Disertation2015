

# Global period constraint
create_clock -name clk -period 20.0 [get_ports clk]
# LOC constraints
set_property LOC Fixed [get_ports clk]
set_property LOC P89 [get_ports {led[3]}]
set_property LOC P83 [get_ports {led[2]}]
set_property LOC P78 [get_ports {led[1]}]
set_property LOC P68 [get_ports {led[0]}]
set_property LOC P9 [get_ports {pmod1[7]}]
set_property LOC P12 [get_ports {pmod1[6]}]
set_property LOC P16 [get_ports {pmod1[5]}]
set_property LOC P19 [get_ports {pmod1[4]}]
set_property LOC P31 [get_ports {pmod1[3]}]
set_property LOC P29 [get_ports {pmod1[2]}]
set_property LOC P25 [get_ports {pmod1[1]}]
set_property LOC P23 [get_ports {pmod1[0]}]
set_property LOC P8 [get_ports {pmod2[7]}]
set_property LOC P11 [get_ports {pmod2[6]}]
set_property LOC P15 [get_ports {pmod2[5]}]
set_property LOC P18 [get_ports {pmod2[4]}]
set_property LOC P30 [get_ports {pmod2[3]}]
set_property LOC P28 [get_ports {pmod2[2]}]
set_property LOC P24 [get_ports {pmod2[1]}]
set_property LOC P22 [get_ports {pmod2[0]}]
