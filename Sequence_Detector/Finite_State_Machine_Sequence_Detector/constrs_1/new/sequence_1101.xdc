
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_IBUF]
# Switches
set_property PACKAGE_PIN V17 [get_ports {clk}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {clk}]
set_property PACKAGE_PIN V16 [get_ports {rst}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {rst}]
set_property PACKAGE_PIN W16 [get_ports {in}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {in}]

 

# LEDs
set_property PACKAGE_PIN U16 [get_ports {out}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {out}]
