create_clock -period 10.000 -name CLK -waveform {0.000 5.000} [get_ports clk]

set_property PACKAGE_PIN W5 [get_ports clk]
set_property PACKAGE_PIN T18 [get_ports reset]
set_property PACKAGE_PIN U16 [get_ports {gpo[0]}]
set_property PACKAGE_PIN E19 [get_ports {gpo[1]}]
set_property PACKAGE_PIN U19 [get_ports {gpo[2]}]
set_property PACKAGE_PIN V19 [get_ports {gpo[3]}]
set_property PACKAGE_PIN W18 [get_ports {gpo[4]}]
set_property PACKAGE_PIN U15 [get_ports {gpo[5]}]
set_property PACKAGE_PIN U14 [get_ports {gpo[6]}]
set_property PACKAGE_PIN V14 [get_ports {gpo[7]}]
set_property PACKAGE_PIN V13 [get_ports {gpo[8]}]
set_property PACKAGE_PIN V3 [get_ports {gpo[9]}]
set_property PACKAGE_PIN W3 [get_ports {gpo[10]}]
set_property PACKAGE_PIN U3 [get_ports {gpo[11]}]
set_property PACKAGE_PIN P3 [get_ports {gpo[12]}]
set_property PACKAGE_PIN N3 [get_ports {gpo[13]}]
set_property PACKAGE_PIN P1 [get_ports {gpo[14]}]
set_property PACKAGE_PIN L1 [get_ports {gpo[15]}]
set_property PACKAGE_PIN A15 [get_ports {jtag_tms}]
set_property PACKAGE_PIN C15 [get_ports {jtag_tck}]
set_property PACKAGE_PIN A17 [get_ports {jtag_tdi}]
set_property PACKAGE_PIN C16 [get_ports {jtag_tdo}]

set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports reset]
set_property IOSTANDARD LVCMOS33 [get_ports {gpo[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpo[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpo[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpo[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpo[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpo[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpo[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpo[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpo[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpo[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpo[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpo[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpo[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpo[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpo[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpo[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {jtag_tms}]
set_property IOSTANDARD LVCMOS33 [get_ports {jtag_tck}]
set_property IOSTANDARD LVCMOS33 [get_ports {jtag_tdi}]
set_property IOSTANDARD LVCMOS33 [get_ports {jtag_tdo}]