

# Global period constraint
create_clock -name clk -period 20.0 [get_ports clk]

# ce_1000_832b210d_group and inner group constraint
set_property DONT_TOUCH true [get_nets ce_1000_sg_x1]
set enCellsFrom [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_1000_sg_x1]]]
set enCellsTo [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_1000_sg_x1]]]
set_multicycle_path -from $enCellsFrom -to $enCellsTo -setup 1000
set_multicycle_path -from $enCellsFrom -to $enCellsTo -hold 999

