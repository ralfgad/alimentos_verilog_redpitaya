-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Wed Sep 22 08:40:34 2021
-- Host        : rafael-slimbook running 64-bit KDE neon User Edition 5.21
-- Command     : write_vhdl -force -mode synth_stub
--               /home/rgadea/investigacion_pollos_2021/v0.94/project/redpitaya.srcs/sources_1/ip/cordic_def/cordic_def_stub.vhdl
-- Design      : cordic_def
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cordic_def is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_cartesian_tvalid : in STD_LOGIC;
    s_axis_cartesian_tready : out STD_LOGIC;
    s_axis_cartesian_tdata : in STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end cordic_def;

architecture stub of cordic_def is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,s_axis_cartesian_tvalid,s_axis_cartesian_tready,s_axis_cartesian_tdata[95:0],m_axis_dout_tvalid,m_axis_dout_tdata[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "cordic_v6_0_16,Vivado 2020.1";
begin
end;
