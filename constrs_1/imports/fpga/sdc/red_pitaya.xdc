#
# $Id: red_pitaya.xdc 961 2014-01-21 11:40:39Z matej.oblak $
#
# @brief Red Pitaya location constraints.
#
# @Author Matej Oblak
#
# (c) Red Pitaya  http://www.redpitaya.com
#

############################################################################
# IO constraints                                                           #
############################################################################

### ADC

# ADC data
set_property IOSTANDARD LVCMOS18 [get_ports {adc_dat_i[*][*]}]
set_property IOB TRUE [get_ports {adc_dat_i[*][*]}]

# ADC 0 data
set_property PACKAGE_PIN V17 [get_ports {adc_dat_i[0][0]}]
set_property PACKAGE_PIN U17 [get_ports {adc_dat_i[0][1]}]
set_property PACKAGE_PIN Y17 [get_ports {adc_dat_i[0][2]}]
set_property PACKAGE_PIN W16 [get_ports {adc_dat_i[0][3]}]
set_property PACKAGE_PIN Y16 [get_ports {adc_dat_i[0][4]}]
set_property PACKAGE_PIN W15 [get_ports {adc_dat_i[0][5]}]
set_property PACKAGE_PIN W14 [get_ports {adc_dat_i[0][6]}]
set_property PACKAGE_PIN Y14 [get_ports {adc_dat_i[0][7]}]
set_property PACKAGE_PIN W13 [get_ports {adc_dat_i[0][8]}]
set_property PACKAGE_PIN V12 [get_ports {adc_dat_i[0][9]}]
set_property PACKAGE_PIN V13 [get_ports {adc_dat_i[0][10]}]
set_property PACKAGE_PIN T14 [get_ports {adc_dat_i[0][11]}]
set_property PACKAGE_PIN T15 [get_ports {adc_dat_i[0][12]}]
set_property PACKAGE_PIN V15 [get_ports {adc_dat_i[0][13]}]
set_property PACKAGE_PIN T16 [get_ports {adc_dat_i[0][14]}]
set_property PACKAGE_PIN V16 [get_ports {adc_dat_i[0][15]}]

# ADC 1 data
set_property PACKAGE_PIN T17 [get_ports {adc_dat_i[1][0]}]
set_property PACKAGE_PIN R16 [get_ports {adc_dat_i[1][1]}]
set_property PACKAGE_PIN R18 [get_ports {adc_dat_i[1][2]}]
set_property PACKAGE_PIN P16 [get_ports {adc_dat_i[1][3]}]
set_property PACKAGE_PIN P18 [get_ports {adc_dat_i[1][4]}]
set_property PACKAGE_PIN N17 [get_ports {adc_dat_i[1][5]}]
set_property PACKAGE_PIN R19 [get_ports {adc_dat_i[1][6]}]
set_property PACKAGE_PIN T20 [get_ports {adc_dat_i[1][7]}]
set_property PACKAGE_PIN T19 [get_ports {adc_dat_i[1][8]}]
set_property PACKAGE_PIN U20 [get_ports {adc_dat_i[1][9]}]
set_property PACKAGE_PIN V20 [get_ports {adc_dat_i[1][10]}]
set_property PACKAGE_PIN W20 [get_ports {adc_dat_i[1][11]}]
set_property PACKAGE_PIN W19 [get_ports {adc_dat_i[1][12]}]
set_property PACKAGE_PIN Y19 [get_ports {adc_dat_i[1][13]}]
set_property PACKAGE_PIN W18 [get_ports {adc_dat_i[1][14]}]
set_property PACKAGE_PIN Y18 [get_ports {adc_dat_i[1][15]}]

set_property IOSTANDARD DIFF_HSTL_I_18 [get_ports {adc_clk_i[*]}]
set_property PACKAGE_PIN U18 [get_ports {adc_clk_i[1]}]
set_property PACKAGE_PIN U19 [get_ports {adc_clk_i[0]}]

# Output ADC clock
set_property IOSTANDARD LVCMOS18 [get_ports {adc_clk_o[*]}]
set_property SLEW FAST [get_ports {adc_clk_o[*]}]
set_property DRIVE 8 [get_ports {adc_clk_o[*]}]
#set_property IOB        TRUE     [get_ports {adc_clk_o[*]}]

set_property PACKAGE_PIN N20 [get_ports {adc_clk_o[0]}]
set_property PACKAGE_PIN P20 [get_ports {adc_clk_o[1]}]

# ADC clock stabilizer
set_property IOSTANDARD LVCMOS18 [get_ports adc_cdcs_o]
set_property PACKAGE_PIN V18 [get_ports adc_cdcs_o]
set_property SLEW FAST [get_ports adc_cdcs_o]
set_property DRIVE 8 [get_ports adc_cdcs_o]

### DAC

# data
set_property IOSTANDARD LVCMOS33 [get_ports {dac_dat_o[*]}]
set_property SLEW FAST [get_ports {dac_dat_o[*]}]
set_property DRIVE 8 [get_ports {dac_dat_o[*]}]
#set_property IOB        TRUE     [get_ports {dac_dat_o[*]}]

set_property PACKAGE_PIN M19 [get_ports {dac_dat_o[0]}]
set_property PACKAGE_PIN M20 [get_ports {dac_dat_o[1]}]
set_property PACKAGE_PIN L19 [get_ports {dac_dat_o[2]}]
set_property PACKAGE_PIN L20 [get_ports {dac_dat_o[3]}]
set_property PACKAGE_PIN K19 [get_ports {dac_dat_o[4]}]
set_property PACKAGE_PIN J19 [get_ports {dac_dat_o[5]}]
set_property PACKAGE_PIN J20 [get_ports {dac_dat_o[6]}]
set_property PACKAGE_PIN H20 [get_ports {dac_dat_o[7]}]
set_property PACKAGE_PIN G19 [get_ports {dac_dat_o[8]}]
set_property PACKAGE_PIN G20 [get_ports {dac_dat_o[9]}]
set_property PACKAGE_PIN F19 [get_ports {dac_dat_o[10]}]
set_property PACKAGE_PIN F20 [get_ports {dac_dat_o[11]}]
set_property PACKAGE_PIN D20 [get_ports {dac_dat_o[12]}]
set_property PACKAGE_PIN D19 [get_ports {dac_dat_o[13]}]

# control
set_property IOSTANDARD LVCMOS33 [get_ports dac_clk_o]
set_property IOSTANDARD LVCMOS33 [get_ports dac_rst_o]
set_property IOSTANDARD LVCMOS33 [get_ports dac_sel_o]
set_property IOSTANDARD LVCMOS33 [get_ports dac_wrt_o]
set_property SLEW FAST [get_ports dac_*_o]
set_property DRIVE 8 [get_ports dac_clk_o]
set_property DRIVE 8 [get_ports dac_rst_o]
set_property DRIVE 8 [get_ports dac_sel_o]
set_property DRIVE 8 [get_ports dac_wrt_o]
#set_property IOB        TRUE     [get_ports dac_*_o]

set_property PACKAGE_PIN M17 [get_ports dac_wrt_o]
set_property PACKAGE_PIN N16 [get_ports dac_sel_o]
set_property PACKAGE_PIN M18 [get_ports dac_clk_o]
set_property PACKAGE_PIN N15 [get_ports dac_rst_o]

### PWM DAC
set_property IOSTANDARD LVCMOS18 [get_ports {dac_pwm_o[*]}]
set_property SLEW FAST [get_ports {dac_pwm_o[*]}]
set_property DRIVE 12 [get_ports {dac_pwm_o[*]}]
set_property IOB TRUE [get_ports {dac_pwm_o[*]}]

set_property PACKAGE_PIN T10 [get_ports {dac_pwm_o[0]}]
set_property PACKAGE_PIN T11 [get_ports {dac_pwm_o[1]}]
set_property PACKAGE_PIN P15 [get_ports {dac_pwm_o[2]}]
set_property PACKAGE_PIN U13 [get_ports {dac_pwm_o[3]}]

### XADC
set_property IOSTANDARD LVCMOS33 [get_ports {vinp_i[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vinn_i[*]}]
#AD0
#AD1
#AD8
#AD9
#V_0
set_property PACKAGE_PIN K9 [get_ports {vinp_i[4]}]
set_property PACKAGE_PIN L10 [get_ports {vinn_i[4]}]
set_property PACKAGE_PIN E18 [get_ports {vinp_i[3]}]
set_property PACKAGE_PIN E19 [get_ports {vinn_i[3]}]
set_property PACKAGE_PIN E17 [get_ports {vinp_i[2]}]
set_property PACKAGE_PIN D18 [get_ports {vinn_i[2]}]
set_property PACKAGE_PIN B19 [get_ports {vinp_i[0]}]
set_property PACKAGE_PIN A20 [get_ports {vinn_i[0]}]
set_property PACKAGE_PIN C20 [get_ports {vinp_i[1]}]
set_property PACKAGE_PIN B20 [get_ports {vinn_i[1]}]

### Expansion connector
set_property IOSTANDARD LVCMOS33 [get_ports {exp_p_io[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {exp_n_io[*]}]
set_property SLEW FAST [get_ports {exp_p_io[*]}]
set_property SLEW FAST [get_ports {exp_n_io[*]}]
set_property DRIVE 8 [get_ports {exp_p_io[*]}]
set_property DRIVE 8 [get_ports {exp_n_io[*]}]

set_property PACKAGE_PIN G17 [get_ports {exp_p_io[0]}]
set_property PACKAGE_PIN G18 [get_ports {exp_n_io[0]}]
set_property PACKAGE_PIN H16 [get_ports {exp_p_io[1]}]
set_property PACKAGE_PIN H17 [get_ports {exp_n_io[1]}]
set_property PACKAGE_PIN J18 [get_ports {exp_p_io[2]}]
set_property PACKAGE_PIN H18 [get_ports {exp_n_io[2]}]
set_property PACKAGE_PIN K17 [get_ports {exp_p_io[3]}]
set_property PACKAGE_PIN K18 [get_ports {exp_n_io[3]}]
set_property PACKAGE_PIN L14 [get_ports {exp_p_io[4]}]
set_property PACKAGE_PIN L15 [get_ports {exp_n_io[4]}]
set_property PACKAGE_PIN L16 [get_ports {exp_p_io[5]}]
set_property PACKAGE_PIN L17 [get_ports {exp_n_io[5]}]
set_property PACKAGE_PIN K16 [get_ports {exp_p_io[6]}]
set_property PACKAGE_PIN J16 [get_ports {exp_n_io[6]}]
set_property PACKAGE_PIN M14 [get_ports {exp_p_io[7]}]
set_property PACKAGE_PIN M15 [get_ports {exp_n_io[7]}]

#set_property PULLDOWN TRUE [get_ports {exp_p_io[0]}]
#set_property PULLDOWN TRUE [get_ports {exp_n_io[0]}]
#set_property PULLUP   TRUE [get_ports {exp_p_io[7]}]
#set_property PULLUP   TRUE [get_ports {exp_n_io[7]}]

set_property PACKAGE_PIN T12 [get_ports {daisy_p_o[0]}]
set_property PACKAGE_PIN U12 [get_ports {daisy_n_o[0]}]
set_property PACKAGE_PIN U14 [get_ports {daisy_p_o[1]}]
set_property PACKAGE_PIN U15 [get_ports {daisy_n_o[1]}]
set_property PACKAGE_PIN P14 [get_ports {daisy_p_i[0]}]
set_property PACKAGE_PIN R14 [get_ports {daisy_n_i[0]}]
set_property PACKAGE_PIN N18 [get_ports {daisy_p_i[1]}]
set_property PACKAGE_PIN P19 [get_ports {daisy_n_i[1]}]

### LED
set_property IOSTANDARD LVCMOS33 [get_ports {led_o[*]}]
set_property SLEW SLOW [get_ports {led_o[*]}]
set_property DRIVE 4 [get_ports {led_o[*]}]

set_property PACKAGE_PIN F16 [get_ports {led_o[0]}]
set_property PACKAGE_PIN F17 [get_ports {led_o[1]}]
set_property PACKAGE_PIN G15 [get_ports {led_o[2]}]
set_property PACKAGE_PIN H15 [get_ports {led_o[3]}]
set_property PACKAGE_PIN K14 [get_ports {led_o[4]}]
set_property PACKAGE_PIN G14 [get_ports {led_o[5]}]
set_property PACKAGE_PIN J15 [get_ports {led_o[6]}]
set_property PACKAGE_PIN J14 [get_ports {led_o[7]}]

############################################################################
# Clock constraints                                                        #
############################################################################

#NET "adc_clk" TNM_NET = "adc_clk";
#TIMESPEC TS_adc_clk = PERIOD "adc_clk" 125 MHz;

create_clock -period 8.000 -name adc_clk [get_ports {adc_clk_i[1]}]

set_input_delay -clock adc_clk 3.400 [get_ports {adc_dat_i[*][*]}]

create_clock -period 4.000 -name rx_clk [get_ports {daisy_p_i[1]}]

set_false_path -from [get_clocks adc_clk]     -to [get_clocks dac_clk_o]
set_false_path -from [get_clocks adc_clk]     -to [get_clocks dac_clk_2x]
set_false_path -from [get_clocks adc_clk]     -to [get_clocks dac_clk_2p]
set_false_path -from [get_clocks clk_fpga_0] -to [get_clocks adc_clk]
set_false_path -from [get_clocks clk_fpga_0]  -to [get_clocks dac_clk_1x]
set_false_path -from [get_clocks clk_fpga_0]  -to [get_clocks dac_clk_2x]
set_false_path -from [get_clocks clk_fpga_0]  -to [get_clocks dac_clk_2p]
set_false_path -from [get_clocks clk_fpga_0]  -to [get_clocks ser_clk]
set_false_path -from [get_clocks clk_fpga_0]  -to [get_clocks pdm_clk]
set_false_path -from [get_clocks dac_clk_o] -to [get_clocks dac_clk_2x]
set_false_path -from [get_clocks dac_clk_o] -to [get_clocks dac_clk_2p]


set_property MARK_DEBUG true [get_nets {i_asg/ch_a/Ucontrol/state1[0]}]
set_property MARK_DEBUG true [get_nets {i_asg/ch_a/Ucontrol/state1[2]_i_4_0[0]}]
set_property MARK_DEBUG true [get_nets {i_asg/ch_a/Ucontrol/state1[1]}]
connect_debug_port u_ila_0/probe0 [get_nets [list {i_asg/ch_a/Ucontrol/state1[2]_i_4_0[0]}]]

connect_debug_port u_ila_0/probe0 [get_nets [list {i_asg/ch_a/Ucontrol/contador_4_ciclosA_reg[0]_0[0]}]]
connect_debug_port u_ila_0/probe2 [get_nets [list {i_asg/ch_a/ADC_DB_reg2[0]} {i_asg/ch_a/ADC_DB_reg2[1]} {i_asg/ch_a/ADC_DB_reg2[2]} {i_asg/ch_a/ADC_DB_reg2[3]} {i_asg/ch_a/ADC_DB_reg2[4]} {i_asg/ch_a/ADC_DB_reg2[5]} {i_asg/ch_a/ADC_DB_reg2[6]} {i_asg/ch_a/ADC_DB_reg2[7]} {i_asg/ch_a/ADC_DB_reg2[8]} {i_asg/ch_a/ADC_DB_reg2[9]} {i_asg/ch_a/ADC_DB_reg2[10]} {i_asg/ch_a/ADC_DB_reg2[11]} {i_asg/ch_a/ADC_DB_reg2[12]} {i_asg/ch_a/ADC_DB_reg2[13]}]]
connect_debug_port u_ila_0/probe10 [get_nets [list {i_asg/ch_a/Ucontrol/contador_4_ciclosB_reg[0]_0[0]}]]





create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 4096 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list adc_clk]]
set_property PROBE_TYPE DATA [get_debug_ports u_ila_0/probe0]
set_property port_width 14 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {i_asg/ch_a/Ucontrol/auxB_reg[13]_0[0]} {i_asg/ch_a/Ucontrol/auxB_reg[13]_0[1]} {i_asg/ch_a/Ucontrol/auxB_reg[13]_0[2]} {i_asg/ch_a/Ucontrol/auxB_reg[13]_0[3]} {i_asg/ch_a/Ucontrol/auxB_reg[13]_0[4]} {i_asg/ch_a/Ucontrol/auxB_reg[13]_0[5]} {i_asg/ch_a/Ucontrol/auxB_reg[13]_0[6]} {i_asg/ch_a/Ucontrol/auxB_reg[13]_0[7]} {i_asg/ch_a/Ucontrol/auxB_reg[13]_0[8]} {i_asg/ch_a/Ucontrol/auxB_reg[13]_0[9]} {i_asg/ch_a/Ucontrol/auxB_reg[13]_0[10]} {i_asg/ch_a/Ucontrol/auxB_reg[13]_0[11]} {i_asg/ch_a/Ucontrol/auxB_reg[13]_0[12]} {i_asg/ch_a/Ucontrol/auxB_reg[13]_0[13]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA [get_debug_ports u_ila_0/probe1]
set_property port_width 14 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {i_asg/ch_a/Ucontrol/auxA_reg[13]_0[0]} {i_asg/ch_a/Ucontrol/auxA_reg[13]_0[1]} {i_asg/ch_a/Ucontrol/auxA_reg[13]_0[2]} {i_asg/ch_a/Ucontrol/auxA_reg[13]_0[3]} {i_asg/ch_a/Ucontrol/auxA_reg[13]_0[4]} {i_asg/ch_a/Ucontrol/auxA_reg[13]_0[5]} {i_asg/ch_a/Ucontrol/auxA_reg[13]_0[6]} {i_asg/ch_a/Ucontrol/auxA_reg[13]_0[7]} {i_asg/ch_a/Ucontrol/auxA_reg[13]_0[8]} {i_asg/ch_a/Ucontrol/auxA_reg[13]_0[9]} {i_asg/ch_a/Ucontrol/auxA_reg[13]_0[10]} {i_asg/ch_a/Ucontrol/auxA_reg[13]_0[11]} {i_asg/ch_a/Ucontrol/auxA_reg[13]_0[12]} {i_asg/ch_a/Ucontrol/auxA_reg[13]_0[13]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA [get_debug_ports u_ila_0/probe2]
set_property port_width 8 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {i_asg/ch_a/Ucontrol/direccion[0]} {i_asg/ch_a/Ucontrol/direccion[1]} {i_asg/ch_a/Ucontrol/direccion[2]} {i_asg/ch_a/Ucontrol/direccion[3]} {i_asg/ch_a/Ucontrol/direccion[4]} {i_asg/ch_a/Ucontrol/direccion[5]} {i_asg/ch_a/Ucontrol/direccion[6]} {i_asg/ch_a/Ucontrol/direccion[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 1 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {i_asg/r0_rd[4]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA [get_debug_ports u_ila_0/probe4]
set_property port_width 3 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {i_asg/ch_a/Ucontrol/contador_4_ciclosA[0]} {i_asg/ch_a/Ucontrol/contador_4_ciclosA[1]} {i_asg/ch_a/Ucontrol/contador_4_ciclosA[2]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA [get_debug_ports u_ila_0/probe5]
set_property port_width 8 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {i_asg/ch_a/Ucontrol/counts[0]} {i_asg/ch_a/Ucontrol/counts[1]} {i_asg/ch_a/Ucontrol/counts[2]} {i_asg/ch_a/Ucontrol/counts[3]} {i_asg/ch_a/Ucontrol/counts[4]} {i_asg/ch_a/Ucontrol/counts[5]} {i_asg/ch_a/Ucontrol/counts[6]} {i_asg/ch_a/Ucontrol/counts[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA [get_debug_ports u_ila_0/probe6]
set_property port_width 3 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list {i_asg/ch_a/Ucontrol/contador_4_ciclosB[0]} {i_asg/ch_a/Ucontrol/contador_4_ciclosB[1]} {i_asg/ch_a/Ucontrol/contador_4_ciclosB[2]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA [get_debug_ports u_ila_0/probe7]
set_property port_width 2 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list {i_asg/ch_a/Ucontrol/detect_a[0]} {i_asg/ch_a/Ucontrol/detect_a[1]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA [get_debug_ports u_ila_0/probe8]
set_property port_width 8 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list {i_asg/ch_a/Ucontrol/countb[0]} {i_asg/ch_a/Ucontrol/countb[1]} {i_asg/ch_a/Ucontrol/countb[2]} {i_asg/ch_a/Ucontrol/countb[3]} {i_asg/ch_a/Ucontrol/countb[4]} {i_asg/ch_a/Ucontrol/countb[5]} {i_asg/ch_a/Ucontrol/countb[6]} {i_asg/ch_a/Ucontrol/countb[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA [get_debug_ports u_ila_0/probe9]
set_property port_width 2 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list {i_asg/ch_a/Ucontrol/detect_b[0]} {i_asg/ch_a/Ucontrol/detect_b[1]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA [get_debug_ports u_ila_0/probe10]
set_property port_width 14 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list {i_asg/ch_a/Ucontrol/auxS_reg[13]_0[0]} {i_asg/ch_a/Ucontrol/auxS_reg[13]_0[1]} {i_asg/ch_a/Ucontrol/auxS_reg[13]_0[2]} {i_asg/ch_a/Ucontrol/auxS_reg[13]_0[3]} {i_asg/ch_a/Ucontrol/auxS_reg[13]_0[4]} {i_asg/ch_a/Ucontrol/auxS_reg[13]_0[5]} {i_asg/ch_a/Ucontrol/auxS_reg[13]_0[6]} {i_asg/ch_a/Ucontrol/auxS_reg[13]_0[7]} {i_asg/ch_a/Ucontrol/auxS_reg[13]_0[8]} {i_asg/ch_a/Ucontrol/auxS_reg[13]_0[9]} {i_asg/ch_a/Ucontrol/auxS_reg[13]_0[10]} {i_asg/ch_a/Ucontrol/auxS_reg[13]_0[11]} {i_asg/ch_a/Ucontrol/auxS_reg[13]_0[12]} {i_asg/ch_a/Ucontrol/auxS_reg[13]_0[13]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA [get_debug_ports u_ila_0/probe11]
set_property port_width 8 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list {i_asg/ch_a/Ucontrol/counta[0]} {i_asg/ch_a/Ucontrol/counta[1]} {i_asg/ch_a/Ucontrol/counta[2]} {i_asg/ch_a/Ucontrol/counta[3]} {i_asg/ch_a/Ucontrol/counta[4]} {i_asg/ch_a/Ucontrol/counta[5]} {i_asg/ch_a/Ucontrol/counta[6]} {i_asg/ch_a/Ucontrol/counta[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA [get_debug_ports u_ila_0/probe12]
set_property port_width 3 [get_debug_ports u_ila_0/probe12]
connect_debug_port u_ila_0/probe12 [get_nets [list {i_asg/ch_a/Ucontrol/state1[0]} {i_asg/ch_a/Ucontrol/state1[1]} {i_asg/ch_a/Ucontrol/state1[2]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA [get_debug_ports u_ila_0/probe13]
set_property port_width 1 [get_debug_ports u_ila_0/probe13]
connect_debug_port u_ila_0/probe13 [get_nets [list {i_asg/ch_a/Ucontrol/detect_s[0]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA [get_debug_ports u_ila_0/probe14]
set_property port_width 1 [get_debug_ports u_ila_0/probe14]
connect_debug_port u_ila_0/probe14 [get_nets [list i_asg/ch_a/Ucontrol/p_0_in]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA [get_debug_ports u_ila_0/probe15]
set_property port_width 1 [get_debug_ports u_ila_0/probe15]
connect_debug_port u_ila_0/probe15 [get_nets [list {i_asg/ch_a/Ucontrol/state2_reg_n_0_[0]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA [get_debug_ports u_ila_0/probe16]
set_property port_width 1 [get_debug_ports u_ila_0/probe16]
connect_debug_port u_ila_0/probe16 [get_nets [list {i_asg/ch_a/Ucontrol/state2_reg_n_0_[1]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA [get_debug_ports u_ila_0/probe17]
set_property port_width 1 [get_debug_ports u_ila_0/probe17]
connect_debug_port u_ila_0/probe17 [get_nets [list {i_asg/ch_a/Ucontrol/state2_reg_n_0_[2]}]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets adc_clk]
