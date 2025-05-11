
define_attribute {clk} syn_maxfan {1000000}
define_attribute {n:default_clock_driver.xlclockdriver_1000.ce_vec*} syn_keep {true}
define_attribute {n:default_clock_driver.xlclockdriver_1000.ce_vec*} max_fanout {"REDUCE"}

define_scope_collection ce_1000_832b210d_group \
  {find -seq * -in [ expand -hier -from {n:ce_1000_sg_x1} ]}

define_multicycle_path -from {$ce_1000_832b210d_group} \
  -to {$ce_1000_832b210d_group} 100
