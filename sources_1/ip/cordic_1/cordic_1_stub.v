// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Thu Sep 16 11:47:24 2021
// Host        : rafael-slimbook running 64-bit KDE neon User Edition 5.21
// Command     : write_verilog -force -mode synth_stub
//               /home/rgadea/investigacion_pollos_2021/v0.94/project/redpitaya.srcs/sources_1/ip/cordic_1/cordic_1_stub.v
// Design      : cordic_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "cordic_v6_0_16,Vivado 2020.1" *)
module cordic_1(s_axis_cartesian_tvalid, 
  s_axis_cartesian_tdata, m_axis_dout_tvalid, m_axis_dout_tdata)
/* synthesis syn_black_box black_box_pad_pin="s_axis_cartesian_tvalid,s_axis_cartesian_tdata[63:0],m_axis_dout_tvalid,m_axis_dout_tdata[31:0]" */;
  input s_axis_cartesian_tvalid;
  input [63:0]s_axis_cartesian_tdata;
  output m_axis_dout_tvalid;
  output [31:0]m_axis_dout_tdata;
endmodule
