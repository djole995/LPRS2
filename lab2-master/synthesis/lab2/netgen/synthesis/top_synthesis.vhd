--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.68d
--  \   \         Application: netgen
--  /   /         Filename: top_synthesis.vhd
-- /___/   /\     Timestamp: Wed Mar 22 00:23:27 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm top -w -dir netgen/synthesis -ofmt vhdl -sim top.ngc top_synthesis.vhd 
-- Device	: xc6slx45-2-fgg676
-- Input file	: top.ngc
-- Output file	: D:\RT-RK\LPRS2\Zad1\LPRS2\lab2-master\synthesis\lab2\netgen\synthesis\top_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: top
-- Xilinx	: C:\Xilinx\14.6\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------


-- synthesis translate_off
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity top is
  port (
    clk_i : in STD_LOGIC := 'X'; 
    reset_n_i : in STD_LOGIC := 'X'; 
    vga_hsync_o : out STD_LOGIC; 
    vga_vsync_o : out STD_LOGIC; 
    blank_o : out STD_LOGIC; 
    pix_clock_o : out STD_LOGIC; 
    psave_o : out STD_LOGIC; 
    sync_o : out STD_LOGIC; 
    red_o : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    green_o : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    blue_o : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end top;

architecture Structure of top is
  component char_rom_def
    port (
      clk : in STD_LOGIC := 'X'; 
      dout : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
      addr : in STD_LOGIC_VECTOR ( 8 downto 0 ) 
    );
  end component;
  signal reset_n_i_IBUF_1 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_horiz_sync_out_r_14 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_vert_sync_out_r_15 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_blank_r_16 : STD_LOGIC; 
  signal vga_top_i_vga_i_clk_s : STD_LOGIC; 
  signal vga_top_i_vga_i_locked_del_reg_r_18 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_psave_r_19 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_sync_r_20 : STD_LOGIC; 
  signal run_reg_r_q_0_37 : STD_LOGIC; 
  signal draw_reg_r_q_0_91 : STD_LOGIC; 
  signal pix_clock_o_OBUF_92 : STD_LOGIC; 
  signal pix_clock_n : STD_LOGIC; 
  signal mem_r_13_GND_5_o_add_51_OUT_13_Q : STD_LOGIC; 
  signal mem_r_13_GND_5_o_add_51_OUT_12_Q : STD_LOGIC; 
  signal mem_r_13_GND_5_o_add_51_OUT_11_Q : STD_LOGIC; 
  signal mem_r_13_GND_5_o_add_51_OUT_10_Q : STD_LOGIC; 
  signal mem_r_13_GND_5_o_add_51_OUT_9_Q : STD_LOGIC; 
  signal mem_r_13_GND_5_o_add_51_OUT_8_Q : STD_LOGIC; 
  signal mem_r_13_GND_5_o_add_51_OUT_7_Q : STD_LOGIC; 
  signal mem_r_13_GND_5_o_add_51_OUT_6_Q : STD_LOGIC; 
  signal mem_r_13_GND_5_o_add_51_OUT_5_Q : STD_LOGIC; 
  signal mem_r_13_GND_5_o_add_51_OUT_4_Q : STD_LOGIC; 
  signal mem_r_13_GND_5_o_add_51_OUT_3_Q : STD_LOGIC; 
  signal mem_r_13_GND_5_o_add_51_OUT_2_Q : STD_LOGIC; 
  signal mem_r_13_GND_5_o_add_51_OUT_1_Q : STD_LOGIC; 
  signal mem_r_13_GND_5_o_add_51_OUT_0_Q : STD_LOGIC; 
  signal run_s_i : STD_LOGIC; 
  signal graph_mem_r_19_GND_5_o_add_67_OUT_14_Q : STD_LOGIC; 
  signal graph_mem_r_19_GND_5_o_add_67_OUT_13_Q : STD_LOGIC; 
  signal graph_mem_r_19_GND_5_o_add_67_OUT_12_Q : STD_LOGIC; 
  signal graph_mem_r_19_GND_5_o_add_67_OUT_11_Q : STD_LOGIC; 
  signal graph_mem_r_19_GND_5_o_add_67_OUT_10_Q : STD_LOGIC; 
  signal graph_mem_r_19_GND_5_o_add_67_OUT_9_Q : STD_LOGIC; 
  signal graph_mem_r_19_GND_5_o_add_67_OUT_8_Q : STD_LOGIC; 
  signal graph_mem_r_19_GND_5_o_add_67_OUT_7_Q : STD_LOGIC; 
  signal graph_mem_r_19_GND_5_o_add_67_OUT_6_Q : STD_LOGIC; 
  signal graph_mem_r_19_GND_5_o_add_67_OUT_5_Q : STD_LOGIC; 
  signal graph_mem_r_19_GND_5_o_add_67_OUT_4_Q : STD_LOGIC; 
  signal graph_mem_r_19_GND_5_o_add_67_OUT_3_Q : STD_LOGIC; 
  signal graph_mem_r_19_GND_5_o_add_67_OUT_2_Q : STD_LOGIC; 
  signal graph_mem_r_19_GND_5_o_add_67_OUT_1_Q : STD_LOGIC; 
  signal graph_mem_r_19_GND_5_o_add_67_OUT_0_Q : STD_LOGIC; 
  signal pixel_colon_r_15_GND_5_o_add_73_OUT_2_Q : STD_LOGIC; 
  signal pixel_colon_r_15_GND_5_o_add_73_OUT_1_Q : STD_LOGIC; 
  signal pixel_colon_r_15_GND_5_o_add_73_OUT_0_Q : STD_LOGIC; 
  signal pixel_row_r_15_GND_5_o_add_70_OUT_15_Q : STD_LOGIC; 
  signal pixel_row_r_15_GND_5_o_add_70_OUT_14_Q : STD_LOGIC; 
  signal pixel_row_r_15_GND_5_o_add_70_OUT_13_Q : STD_LOGIC; 
  signal pixel_row_r_15_GND_5_o_add_70_OUT_12_Q : STD_LOGIC; 
  signal pixel_row_r_15_GND_5_o_add_70_OUT_11_Q : STD_LOGIC; 
  signal pixel_row_r_15_GND_5_o_add_70_OUT_10_Q : STD_LOGIC; 
  signal pixel_row_r_15_GND_5_o_add_70_OUT_9_Q : STD_LOGIC; 
  signal pixel_row_r_15_GND_5_o_add_70_OUT_8_Q : STD_LOGIC; 
  signal pixel_row_r_15_GND_5_o_add_70_OUT_7_Q : STD_LOGIC; 
  signal pixel_row_r_15_GND_5_o_add_70_OUT_6_Q : STD_LOGIC; 
  signal pixel_row_r_15_GND_5_o_add_70_OUT_5_Q : STD_LOGIC; 
  signal pixel_row_r_15_GND_5_o_add_70_OUT_4_Q : STD_LOGIC; 
  signal pixel_row_r_15_GND_5_o_add_70_OUT_3_Q : STD_LOGIC; 
  signal pixel_row_r_15_GND_5_o_add_70_OUT_2_Q : STD_LOGIC; 
  signal pixel_row_r_15_GND_5_o_add_80_OUT_15_Q : STD_LOGIC; 
  signal pixel_row_r_15_GND_5_o_add_80_OUT_14_Q : STD_LOGIC; 
  signal pixel_row_r_15_GND_5_o_add_80_OUT_13_Q : STD_LOGIC; 
  signal pixel_row_r_15_GND_5_o_add_80_OUT_12_Q : STD_LOGIC; 
  signal pixel_row_r_15_GND_5_o_add_80_OUT_11_Q : STD_LOGIC; 
  signal pixel_row_r_15_GND_5_o_add_80_OUT_10_Q : STD_LOGIC; 
  signal pixel_row_r_15_GND_5_o_add_80_OUT_9_Q : STD_LOGIC; 
  signal pixel_row_r_15_GND_5_o_add_80_OUT_8_Q : STD_LOGIC; 
  signal pixel_row_r_15_GND_5_o_add_80_OUT_7_Q : STD_LOGIC; 
  signal pixel_row_r_15_GND_5_o_add_80_OUT_6_Q : STD_LOGIC; 
  signal pixel_row_r_15_GND_5_o_add_80_OUT_5_Q : STD_LOGIC; 
  signal pixel_row_r_15_GND_5_o_add_80_OUT_4_Q : STD_LOGIC; 
  signal pixel_row_r_15_GND_5_o_add_80_OUT_3_Q : STD_LOGIC; 
  signal pixel_row_r_15_GND_5_o_add_80_OUT_2_Q : STD_LOGIC; 
  signal pixel_row_r_15_GND_5_o_add_80_OUT_1_Q : STD_LOGIC; 
  signal pixel_row_r_15_GND_5_o_add_80_OUT_0_Q : STD_LOGIC; 
  signal draw_r_0_GND_5_o_AND_144_o : STD_LOGIC; 
  signal run_s_0_mem_r_13_AND_140_o : STD_LOGIC; 
  signal GND_5_o_GND_5_o_equal_50_o : STD_LOGIC; 
  signal print_sig : STD_LOGIC; 
  signal GND_5_o_run_s_0_OR_57_o : STD_LOGIC; 
  signal GND_5_o_GND_5_o_equal_67_o : STD_LOGIC; 
  signal pixel_address_19_GND_5_o_equal_70_o : STD_LOGIC; 
  signal draw_i : STD_LOGIC; 
  signal pixel_address_19_GND_5_o_equal_72_o : STD_LOGIC; 
  signal GND_5_o_GND_5_o_equal_80_o : STD_LOGIC; 
  signal pixel_we : STD_LOGIC; 
  signal vga_top_i_vga_i_rst_n_i_inv : STD_LOGIC; 
  signal vga_top_i_vga_i_locked_del_s : STD_LOGIC; 
  signal vga_top_i_vga_i_locked_s : STD_LOGIC; 
  signal vga_top_i_vga_i_res_1_dcm25_i_clkfx : STD_LOGIC; 
  signal vga_top_i_vga_i_res_1_dcm25_i_clkin1 : STD_LOGIC; 
  signal graphics_reg_Mcount_r_q_eqn_0 : STD_LOGIC; 
  signal graphics_reg_Mcount_r_q_eqn_1 : STD_LOGIC; 
  signal graphics_reg_Mcount_r_q_eqn_2 : STD_LOGIC; 
  signal graphics_reg_Mcount_r_q_eqn_3 : STD_LOGIC; 
  signal graphics_reg_Mcount_r_q_eqn_4 : STD_LOGIC; 
  signal graphics_reg_Mcount_r_q_eqn_5 : STD_LOGIC; 
  signal graphics_reg_Mcount_r_q_eqn_6 : STD_LOGIC; 
  signal graphics_reg_Mcount_r_q_eqn_7 : STD_LOGIC; 
  signal graphics_reg_Mcount_r_q_eqn_8 : STD_LOGIC; 
  signal graphics_reg_Mcount_r_q_eqn_9 : STD_LOGIC; 
  signal graphics_reg_Mcount_r_q_eqn_10 : STD_LOGIC; 
  signal graphics_reg_Mcount_r_q_eqn_11 : STD_LOGIC; 
  signal graphics_reg_Mcount_r_q_eqn_12 : STD_LOGIC; 
  signal graphics_reg_Mcount_r_q_eqn_13 : STD_LOGIC; 
  signal Result_0_1 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal Result_2_1 : STD_LOGIC; 
  signal Result_3_1 : STD_LOGIC; 
  signal Result_4_1 : STD_LOGIC; 
  signal Result_5_1 : STD_LOGIC; 
  signal Result_6_1 : STD_LOGIC; 
  signal Result_7_1 : STD_LOGIC; 
  signal Result_8_1 : STD_LOGIC; 
  signal Result_9_1 : STD_LOGIC; 
  signal Result_10_1 : STD_LOGIC; 
  signal Result_11_1 : STD_LOGIC; 
  signal Result_12_1 : STD_LOGIC; 
  signal Result_13_1 : STD_LOGIC; 
  signal Result_14_1 : STD_LOGIC; 
  signal Result_15_1 : STD_LOGIC; 
  signal Result_16_1 : STD_LOGIC; 
  signal Result_17_1 : STD_LOGIC; 
  signal Result_18_1 : STD_LOGIC; 
  signal Result_19_1 : STD_LOGIC; 
  signal char_reg_Mcount_r_q : STD_LOGIC; 
  signal char_reg_Mcount_r_q1 : STD_LOGIC; 
  signal Madd_mem_r_13_GND_5_o_add_51_OUT_lut_0_Q : STD_LOGIC; 
  signal Madd_mem_r_13_GND_5_o_add_51_OUT_cy_0_Q_365 : STD_LOGIC; 
  signal Madd_mem_r_13_GND_5_o_add_51_OUT_cy_1_Q_366 : STD_LOGIC; 
  signal Madd_mem_r_13_GND_5_o_add_51_OUT_cy_2_Q_367 : STD_LOGIC; 
  signal Madd_mem_r_13_GND_5_o_add_51_OUT_cy_3_Q_368 : STD_LOGIC; 
  signal Madd_mem_r_13_GND_5_o_add_51_OUT_cy_4_Q_369 : STD_LOGIC; 
  signal Madd_mem_r_13_GND_5_o_add_51_OUT_cy_5_Q_370 : STD_LOGIC; 
  signal Madd_mem_r_13_GND_5_o_add_51_OUT_cy_6_Q_371 : STD_LOGIC; 
  signal Madd_mem_r_13_GND_5_o_add_51_OUT_cy_7_Q_372 : STD_LOGIC; 
  signal Madd_mem_r_13_GND_5_o_add_51_OUT_cy_8_Q_373 : STD_LOGIC; 
  signal Madd_mem_r_13_GND_5_o_add_51_OUT_cy_9_Q_374 : STD_LOGIC; 
  signal Madd_mem_r_13_GND_5_o_add_51_OUT_cy_10_Q_375 : STD_LOGIC; 
  signal Madd_mem_r_13_GND_5_o_add_51_OUT_cy_11_Q_376 : STD_LOGIC; 
  signal Madd_mem_r_13_GND_5_o_add_51_OUT_cy_12_Q_377 : STD_LOGIC; 
  signal Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_1_Q_378 : STD_LOGIC; 
  signal Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_2_Q : STD_LOGIC; 
  signal Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_2_Q_380 : STD_LOGIC; 
  signal Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_3_Q : STD_LOGIC; 
  signal Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_3_Q_382 : STD_LOGIC; 
  signal Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_4_Q : STD_LOGIC; 
  signal Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_4_Q_384 : STD_LOGIC; 
  signal Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_5_Q : STD_LOGIC; 
  signal Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_5_Q_386 : STD_LOGIC; 
  signal Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_6_Q : STD_LOGIC; 
  signal Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_6_Q_388 : STD_LOGIC; 
  signal Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_7_Q : STD_LOGIC; 
  signal Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_7_Q_390 : STD_LOGIC; 
  signal Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_8_Q : STD_LOGIC; 
  signal Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_8_Q_392 : STD_LOGIC; 
  signal Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_9_Q : STD_LOGIC; 
  signal Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_9_Q_394 : STD_LOGIC; 
  signal Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_10_Q : STD_LOGIC; 
  signal Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_10_Q_396 : STD_LOGIC; 
  signal Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_11_Q : STD_LOGIC; 
  signal Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_11_Q_398 : STD_LOGIC; 
  signal Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_12_Q : STD_LOGIC; 
  signal Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_12_Q_400 : STD_LOGIC; 
  signal Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_13_Q : STD_LOGIC; 
  signal Madd_graph_mem_r_19_GND_5_o_add_67_OUT_lut_0_Q : STD_LOGIC; 
  signal Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_0_Q_403 : STD_LOGIC; 
  signal Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_1_Q_404 : STD_LOGIC; 
  signal Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_2_Q_405 : STD_LOGIC; 
  signal Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_3_Q_406 : STD_LOGIC; 
  signal Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_4_Q_407 : STD_LOGIC; 
  signal Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_5_Q_408 : STD_LOGIC; 
  signal Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_6_Q_409 : STD_LOGIC; 
  signal Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_7_Q_410 : STD_LOGIC; 
  signal Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_8_Q_411 : STD_LOGIC; 
  signal Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_9_Q_412 : STD_LOGIC; 
  signal Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_10_Q_413 : STD_LOGIC; 
  signal Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_11_Q_414 : STD_LOGIC; 
  signal Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_12_Q_415 : STD_LOGIC; 
  signal Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_13_Q_416 : STD_LOGIC; 
  signal Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q : STD_LOGIC; 
  signal Madd_pixel_colon_r_15_GND_5_o_add_73_OUT_lut_0_Q : STD_LOGIC; 
  signal Madd_pixel_colon_r_15_GND_5_o_add_73_OUT_cy_0_Q_419 : STD_LOGIC; 
  signal Madd_pixel_colon_r_15_GND_5_o_add_73_OUT_cy_1_Q_420 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_80_OUT_lut_0_Q : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_0_Q_422 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_1_Q_423 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_2_Q_424 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_3_Q_425 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_4_Q_426 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_5_Q_427 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_6_Q_428 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_7_Q_429 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_8_Q_430 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_9_Q_431 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_10_Q_432 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_11_Q_433 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_12_Q_434 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_13_Q_435 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_14_Q_436 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_70_OUT_lut_2_Q : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_2_Q_492 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_3_Q_493 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_4_Q_494 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_5_Q_495 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_70_OUT_lut_6_Q : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_6_Q_497 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_7_Q_498 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_8_Q_499 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_70_OUT_lut_9_Q : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_9_Q_501 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_70_OUT_lut_10_Q : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_10_Q_503 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_11_Q_504 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_12_Q_505 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_13_Q_506 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_14_Q_507 : STD_LOGIC; 
  signal Mcompar_pixel_address_19_GND_5_o_equal_70_o_lut_0_Q_508 : STD_LOGIC; 
  signal Mcompar_pixel_address_19_GND_5_o_equal_70_o_cy_0_Q_509 : STD_LOGIC; 
  signal Mcompar_pixel_address_19_GND_5_o_equal_70_o_lut_1_Q_510 : STD_LOGIC; 
  signal Mcompar_pixel_address_19_GND_5_o_equal_70_o_cy_1_Q_511 : STD_LOGIC; 
  signal Mcompar_pixel_address_19_GND_5_o_equal_70_o_lut_2_Q_512 : STD_LOGIC; 
  signal Mcompar_pixel_address_19_GND_5_o_equal_70_o_cy_2_Q_513 : STD_LOGIC; 
  signal Mcompar_pixel_address_19_GND_5_o_equal_70_o_lut_3_Q_514 : STD_LOGIC; 
  signal Mcompar_pixel_address_19_GND_5_o_equal_70_o_cy_3_Q_515 : STD_LOGIC; 
  signal Mcompar_pixel_address_19_GND_5_o_equal_70_o_lut_4_Q_516 : STD_LOGIC; 
  signal Mcompar_pixel_address_19_GND_5_o_equal_70_o_cy_4_Q_517 : STD_LOGIC; 
  signal Mcompar_pixel_address_19_GND_5_o_equal_70_o_lut_5_Q : STD_LOGIC; 
  signal Mcompar_pixel_address_19_GND_5_o_equal_72_o_lut_0_Q_519 : STD_LOGIC; 
  signal Mcompar_pixel_address_19_GND_5_o_equal_72_o_cy_0_Q_520 : STD_LOGIC; 
  signal Mcompar_pixel_address_19_GND_5_o_equal_72_o_lut_1_Q_521 : STD_LOGIC; 
  signal Mcompar_pixel_address_19_GND_5_o_equal_72_o_cy_1_Q_522 : STD_LOGIC; 
  signal Mcompar_pixel_address_19_GND_5_o_equal_72_o_lut_2_Q_523 : STD_LOGIC; 
  signal Mcompar_pixel_address_19_GND_5_o_equal_72_o_cy_2_Q_524 : STD_LOGIC; 
  signal Mcompar_pixel_address_19_GND_5_o_equal_72_o_lut_3_Q_525 : STD_LOGIC; 
  signal Mcompar_pixel_address_19_GND_5_o_equal_72_o_cy_3_Q_526 : STD_LOGIC; 
  signal Mcompar_pixel_address_19_GND_5_o_equal_72_o_lut_4_Q_527 : STD_LOGIC; 
  signal Mcompar_pixel_address_19_GND_5_o_equal_72_o_cy_4_Q_528 : STD_LOGIC; 
  signal Mcompar_pixel_address_19_GND_5_o_equal_72_o_lut_5_Q : STD_LOGIC; 
  signal Mmux_char_address101 : STD_LOGIC; 
  signal Mmux_char_address102 : STD_LOGIC; 
  signal GND_5_o_GND_5_o_equal_48_o_13_1 : STD_LOGIC; 
  signal Mmux_char_address15 : STD_LOGIC; 
  signal GND_5_o_GND_5_o_equal_50_o_19_1_534 : STD_LOGIC; 
  signal Mmux_char_address1021 : STD_LOGIC; 
  signal print_sig2_536 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Result_9_1 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Result_8_1 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Result_7_1 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Result_6_1 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Result_5_1 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Result_4_1 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Result_3_1 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Result_2_1 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Result_1_1 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Result_0_1 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_val_567 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_val_578 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_vert_sync_r_0 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_GND_16_o_INV_26_o_580 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_GND_16_o_INV_22_o : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_enable_s : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_active_frame : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_h_pixels_10_v_lines_10_OR_16_o_584 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_GND_16_o_BUS_0008_equal_24_o_585 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_vert_sync_r_586 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_horiz_sync_r_587 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_sync_d_r_588 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_blank_d_r_589 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_vert_sync_out_d_r_590 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_horiz_sync_out_d_r_591 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_psave_d_r_592 : STD_LOGIC; 
  signal vga_top_i_graphics_mem_i_Mmux_rd_data_o_3 : STD_LOGIC; 
  signal colon_reg_in_rst_inv : STD_LOGIC; 
  signal GND_5_o_GND_5_o_equal_67_o_19_1_624 : STD_LOGIC; 
  signal GND_5_o_GND_5_o_AND_143_o1_625 : STD_LOGIC; 
  signal GND_5_o_GND_5_o_AND_143_o2_626 : STD_LOGIC; 
  signal GND_5_o_GND_5_o_AND_143_o3_627 : STD_LOGIC; 
  signal GND_5_o_GND_5_o_equal_80_o_19_1_629 : STD_LOGIC; 
  signal GND_5_o_GND_5_o_equal_80_o_19_2_630 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal run_s_0_mem_r_13_AND_140_o1_633 : STD_LOGIC; 
  signal run_s_0_mem_r_13_AND_140_o2_634 : STD_LOGIC; 
  signal GND_5_o_GND_5_o_equal_48_o_13_11_635 : STD_LOGIC; 
  signal GND_5_o_GND_5_o_equal_48_o_13_12_636 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_active_frame1_638 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_active_frame2_639 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_active_frame3_640 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_active_frame4_641 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_active_frame5_642 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_active_frame6_643 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal vga_top_i_graphics_mem_i_index_2_t_30_GND_45_o_LessThan_14_o2 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_red_r_0_glue_set_681 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_green_r_0_glue_set_682 : STD_LOGIC; 
  signal Madd_mem_r_13_GND_5_o_add_51_OUT_cy_1_rt_683 : STD_LOGIC; 
  signal Madd_mem_r_13_GND_5_o_add_51_OUT_cy_2_rt_684 : STD_LOGIC; 
  signal Madd_mem_r_13_GND_5_o_add_51_OUT_cy_3_rt_685 : STD_LOGIC; 
  signal Madd_mem_r_13_GND_5_o_add_51_OUT_cy_4_rt_686 : STD_LOGIC; 
  signal Madd_mem_r_13_GND_5_o_add_51_OUT_cy_5_rt_687 : STD_LOGIC; 
  signal Madd_mem_r_13_GND_5_o_add_51_OUT_cy_6_rt_688 : STD_LOGIC; 
  signal Madd_mem_r_13_GND_5_o_add_51_OUT_cy_7_rt_689 : STD_LOGIC; 
  signal Madd_mem_r_13_GND_5_o_add_51_OUT_cy_8_rt_690 : STD_LOGIC; 
  signal Madd_mem_r_13_GND_5_o_add_51_OUT_cy_9_rt_691 : STD_LOGIC; 
  signal Madd_mem_r_13_GND_5_o_add_51_OUT_cy_10_rt_692 : STD_LOGIC; 
  signal Madd_mem_r_13_GND_5_o_add_51_OUT_cy_11_rt_693 : STD_LOGIC; 
  signal Madd_mem_r_13_GND_5_o_add_51_OUT_cy_12_rt_694 : STD_LOGIC; 
  signal Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_1_rt_695 : STD_LOGIC; 
  signal Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_1_rt_696 : STD_LOGIC; 
  signal Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_2_rt_697 : STD_LOGIC; 
  signal Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_3_rt_698 : STD_LOGIC; 
  signal Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_4_rt_699 : STD_LOGIC; 
  signal Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_5_rt_700 : STD_LOGIC; 
  signal Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_6_rt_701 : STD_LOGIC; 
  signal Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_7_rt_702 : STD_LOGIC; 
  signal Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_8_rt_703 : STD_LOGIC; 
  signal Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_9_rt_704 : STD_LOGIC; 
  signal Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_10_rt_705 : STD_LOGIC; 
  signal Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_11_rt_706 : STD_LOGIC; 
  signal Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_12_rt_707 : STD_LOGIC; 
  signal Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_13_rt_708 : STD_LOGIC; 
  signal Madd_pixel_colon_r_15_GND_5_o_add_73_OUT_cy_1_rt_709 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_1_rt_710 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_2_rt_711 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_3_rt_712 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_4_rt_713 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_5_rt_714 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_6_rt_715 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_7_rt_716 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_8_rt_717 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_9_rt_718 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_10_rt_719 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_11_rt_720 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_12_rt_721 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_13_rt_722 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_14_rt_723 : STD_LOGIC; 
  signal Madd_sh_graph_cnt_cy_1_rt_724 : STD_LOGIC; 
  signal Madd_sh_graph_cnt_cy_2_rt_725 : STD_LOGIC; 
  signal Madd_sh_graph_cnt_cy_3_rt_726 : STD_LOGIC; 
  signal Madd_sh_graph_cnt_cy_4_rt_727 : STD_LOGIC; 
  signal Madd_sh_graph_cnt_cy_5_rt_728 : STD_LOGIC; 
  signal Madd_sh_graph_cnt_cy_6_rt_729 : STD_LOGIC; 
  signal Madd_sh_graph_cnt_cy_7_rt_730 : STD_LOGIC; 
  signal Madd_sh_graph_cnt_cy_8_rt_731 : STD_LOGIC; 
  signal Madd_sh_graph_cnt_cy_9_rt_732 : STD_LOGIC; 
  signal Madd_sh_graph_cnt_cy_10_rt_733 : STD_LOGIC; 
  signal Madd_sh_graph_cnt_cy_11_rt_734 : STD_LOGIC; 
  signal Madd_sh_graph_cnt_cy_12_rt_735 : STD_LOGIC; 
  signal Madd_sh_graph_cnt_cy_13_rt_736 : STD_LOGIC; 
  signal Madd_sh_graph_cnt_cy_14_rt_737 : STD_LOGIC; 
  signal Madd_sh_graph_cnt_cy_15_rt_738 : STD_LOGIC; 
  signal Madd_sh_graph_cnt_cy_16_rt_739 : STD_LOGIC; 
  signal Madd_sh_graph_cnt_cy_17_rt_740 : STD_LOGIC; 
  signal Madd_sh_graph_cnt_cy_18_rt_741 : STD_LOGIC; 
  signal sh_graph_reg_Mcount_r_q_cy_1_rt_742 : STD_LOGIC; 
  signal sh_graph_reg_Mcount_r_q_cy_2_rt_743 : STD_LOGIC; 
  signal sh_graph_reg_Mcount_r_q_cy_3_rt_744 : STD_LOGIC; 
  signal sh_graph_reg_Mcount_r_q_cy_4_rt_745 : STD_LOGIC; 
  signal sh_graph_reg_Mcount_r_q_cy_5_rt_746 : STD_LOGIC; 
  signal sh_graph_reg_Mcount_r_q_cy_6_rt_747 : STD_LOGIC; 
  signal sh_graph_reg_Mcount_r_q_cy_7_rt_748 : STD_LOGIC; 
  signal sh_graph_reg_Mcount_r_q_cy_8_rt_749 : STD_LOGIC; 
  signal sh_graph_reg_Mcount_r_q_cy_9_rt_750 : STD_LOGIC; 
  signal sh_graph_reg_Mcount_r_q_cy_10_rt_751 : STD_LOGIC; 
  signal sh_graph_reg_Mcount_r_q_cy_11_rt_752 : STD_LOGIC; 
  signal sh_graph_reg_Mcount_r_q_cy_12_rt_753 : STD_LOGIC; 
  signal sh_graph_reg_Mcount_r_q_cy_13_rt_754 : STD_LOGIC; 
  signal sh_graph_reg_Mcount_r_q_cy_14_rt_755 : STD_LOGIC; 
  signal sh_graph_reg_Mcount_r_q_cy_15_rt_756 : STD_LOGIC; 
  signal sh_graph_reg_Mcount_r_q_cy_16_rt_757 : STD_LOGIC; 
  signal sh_graph_reg_Mcount_r_q_cy_17_rt_758 : STD_LOGIC; 
  signal sh_graph_reg_Mcount_r_q_cy_18_rt_759 : STD_LOGIC; 
  signal graphics_reg_Mcount_r_q_cy_1_rt_760 : STD_LOGIC; 
  signal graphics_reg_Mcount_r_q_cy_2_rt_761 : STD_LOGIC; 
  signal graphics_reg_Mcount_r_q_cy_3_rt_762 : STD_LOGIC; 
  signal graphics_reg_Mcount_r_q_cy_4_rt_763 : STD_LOGIC; 
  signal graphics_reg_Mcount_r_q_cy_5_rt_764 : STD_LOGIC; 
  signal graphics_reg_Mcount_r_q_cy_6_rt_765 : STD_LOGIC; 
  signal graphics_reg_Mcount_r_q_cy_7_rt_766 : STD_LOGIC; 
  signal graphics_reg_Mcount_r_q_cy_8_rt_767 : STD_LOGIC; 
  signal graphics_reg_Mcount_r_q_cy_9_rt_768 : STD_LOGIC; 
  signal graphics_reg_Mcount_r_q_cy_10_rt_769 : STD_LOGIC; 
  signal graphics_reg_Mcount_r_q_cy_11_rt_770 : STD_LOGIC; 
  signal graphics_reg_Mcount_r_q_cy_12_rt_771 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_3_rt_772 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_4_rt_773 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_5_rt_774 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_7_rt_775 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_8_rt_776 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_11_rt_777 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_12_rt_778 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_13_rt_779 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_14_rt_780 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_8_rt_781 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_7_rt_782 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_6_rt_783 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_5_rt_784 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_4_rt_785 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_3_rt_786 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_2_rt_787 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_1_rt_788 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_8_rt_789 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_7_rt_790 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_6_rt_791 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_5_rt_792 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_4_rt_793 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_3_rt_794 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_2_rt_795 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_1_rt_796 : STD_LOGIC; 
  signal Madd_mem_r_13_GND_5_o_add_51_OUT_xor_13_rt_797 : STD_LOGIC; 
  signal Madd_pixel_colon_r_15_GND_5_o_add_73_OUT_xor_2_rt_798 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_80_OUT_xor_15_rt_799 : STD_LOGIC; 
  signal Madd_sh_graph_cnt_xor_19_rt_800 : STD_LOGIC; 
  signal sh_graph_reg_Mcount_r_q_xor_19_rt_801 : STD_LOGIC; 
  signal graphics_reg_Mcount_r_q_xor_13_rt_802 : STD_LOGIC; 
  signal Madd_pixel_row_r_15_GND_5_o_add_70_OUT_xor_15_rt_803 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_xor_9_rt_804 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_xor_9_rt_805 : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal N45 : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_CARRYOUTF_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_CARRYOUT_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_BCOUT_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_BCOUT_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_BCOUT_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_BCOUT_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_BCOUT_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_BCOUT_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_BCOUT_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_BCOUT_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_BCOUT_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_BCOUT_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_BCOUT_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_BCOUT_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_BCOUT_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_BCOUT_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_BCOUT_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_BCOUT_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_BCOUT_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_BCOUT_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_47_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_46_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_45_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_44_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_43_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_42_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_41_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_40_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_39_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_38_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_37_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_36_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCIN_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_P_47_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_P_46_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_P_45_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_P_44_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_P_43_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_P_42_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_P_41_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_P_40_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_P_39_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_P_38_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_P_37_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_P_36_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_P_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_P_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_P_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_P_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_P_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_P_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_P_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_P_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_P_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_P_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_P_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_P_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_P_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_P_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_P_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_P_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_P_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_P_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_P_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_P_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_P_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_47_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_46_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_45_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_44_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_43_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_42_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_41_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_40_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_39_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_38_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_37_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_36_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_PCOUT_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_M_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_M_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_M_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_M_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_M_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_M_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_M_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_M_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_M_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_M_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_M_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_M_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_M_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_M_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_M_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_M_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_M_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_M_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_M_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_M_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_M_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_M_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_M_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_M_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_M_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_M_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_M_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_M_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_M_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_M_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_M_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_M_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_M_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_M_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_M_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0100_M_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_CARRYOUTF_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_CARRYOUT_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_BCOUT_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_BCOUT_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_BCOUT_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_BCOUT_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_BCOUT_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_BCOUT_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_BCOUT_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_BCOUT_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_BCOUT_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_BCOUT_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_BCOUT_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_BCOUT_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_BCOUT_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_BCOUT_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_BCOUT_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_BCOUT_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_BCOUT_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_BCOUT_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_47_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_46_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_45_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_44_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_43_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_42_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_41_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_40_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_39_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_38_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_37_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_36_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_47_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_46_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_45_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_44_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_43_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_42_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_41_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_40_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_39_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_38_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_37_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_36_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_47_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_46_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_45_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_44_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_43_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_42_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_41_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_40_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_39_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_38_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_37_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_36_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_CLK2X180_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_CLK2X_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_CLK180_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_CLK270_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_CLK0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_CLKFX180_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_CLKDV_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_PSDONE_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_CLK90_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_STATUS_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_STATUS_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_STATUS_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_STATUS_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_STATUS_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_STATUS_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_STATUS_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_STATUS_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIPA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIPA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIPA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIPA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_ADDRA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_ADDRB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOPA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOPA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOPA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOPA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIPB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIPB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIPB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIPB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOPB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOPB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOPB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOPB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIPA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIPA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIPA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIPA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_ADDRA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_ADDRB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOPA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOPA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOPA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOPA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIPB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIPB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIPB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIPB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOPB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOPB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOPB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOPB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIPA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIPA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIPA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIPA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_ADDRA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_ADDRB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOPA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOPA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOPA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOPA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIPB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIPB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIPB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIPB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOPB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOPB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOPB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOPB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIPA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIPA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIPA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIPA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOPA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOPA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOPA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOPA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIPB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIPB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIPB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIPB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOPB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOPB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOPB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOPB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_char_rom_i_BRAM_MEM_I_dout_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_char_rom_i_BRAM_MEM_I_dout_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_char_rom_i_BRAM_MEM_I_dout_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_char_rom_i_BRAM_MEM_I_dout_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_char_rom_i_BRAM_MEM_I_dout_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_char_rom_i_BRAM_MEM_I_dout_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_char_rom_i_BRAM_MEM_I_dout_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_char_rom_i_BRAM_MEM_I_dout_0_UNCONNECTED : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_h_count_r : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_top_i_vga_i_vga_sync_i_red_r : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal vga_top_i_vga_i_vga_sync_i_green_r : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal mem_reg_r_q : STD_LOGIC_VECTOR ( 13 downto 0 ); 
  signal char_reg_r_q : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal graphics_reg_r_q : STD_LOGIC_VECTOR ( 13 downto 0 ); 
  signal colon_reg_r_q : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal row_reg_r_q : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal sh_graph_reg_r_q : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal GND_5_o_GND_5_o_sub_51_OUT : STD_LOGIC_VECTOR ( 13 downto 1 ); 
  signal sh_graph_cnt : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal char_address : STD_LOGIC_VECTOR ( 13 downto 0 ); 
  signal pixel_address : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal pixel_colon : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal pixel_row : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal char_value : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal vga_top_i_txt_rom_addr_c : STD_LOGIC_VECTOR ( 13 downto 0 ); 
  signal vga_top_i_graph_pixel_addr_c : STD_LOGIC_VECTOR ( 19 downto 5 ); 
  signal vga_top_i_char_addr_s : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal vga_top_i_vga_i_vga_sync_i_v_count_r : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_top_i_text_mem_i_index : STD_LOGIC_VECTOR ( 12 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 13 downto 0 ); 
  signal Madd_sh_graph_cnt_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Madd_sh_graph_cnt_cy : STD_LOGIC_VECTOR ( 18 downto 0 ); 
  signal sh_graph_reg_Mcount_r_q_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal sh_graph_reg_Mcount_r_q_cy : STD_LOGIC_VECTOR ( 18 downto 0 ); 
  signal graphics_reg_Mcount_r_q_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal graphics_reg_Mcount_r_q_cy : STD_LOGIC_VECTOR ( 12 downto 0 ); 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal vga_top_i_vga_i_vga_sync_i_Result : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_top_i_graphics_mem_i_index_0 : STD_LOGIC_VECTOR ( 13 downto 0 ); 
  signal vga_top_i_graphics_mem_i_index_2 : STD_LOGIC_VECTOR ( 13 downto 0 ); 
  signal GND_5_o_GND_5_o_equal_67_o_0 : STD_LOGIC_VECTOR ( 19 downto 19 ); 
  signal GND_5_o_GND_5_o_equal_80_o_1 : STD_LOGIC_VECTOR ( 19 downto 19 ); 
begin
  XST_VCC : VCC
    port map (
      P => pixel_we
    );
  XST_GND : GND
    port map (
      G => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q
    );
  vga_top_i_vga_i_locked_del_reg_r : FDR
    port map (
      C => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_locked_del_s,
      R => vga_top_i_vga_i_rst_n_i_inv,
      Q => vga_top_i_vga_i_locked_del_reg_r_18
    );
  draw_reg_r_q_0 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => draw_i,
      Q => draw_reg_r_q_0_91
    );
  run_reg_r_q_0 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => run_s_i,
      Q => run_reg_r_q_0_37
    );
  vga_top_i_Maddsub_n0100 : DSP48A1
    generic map(
      A0REG => 0,
      A1REG => 0,
      B0REG => 0,
      B1REG => 0,
      DREG => 0,
      MREG => 0,
      PREG => 0,
      CREG => 1,
      OPMODEREG => 0,
      CARRYINREG => 0,
      CARRYOUTREG => 0,
      CARRYINSEL => "OPMODE5",
      RSTTYPE => "SYNC"
    )
    port map (
      CECARRYIN => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      RSTC => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_val_567,
      RSTCARRYIN => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      CED => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      RSTD => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      CEOPMODE => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      CEC => pixel_we,
      CARRYOUTF => NLW_vga_top_i_Maddsub_n0100_CARRYOUTF_UNCONNECTED,
      RSTOPMODE => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      RSTM => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      CLK => vga_top_i_vga_i_clk_s,
      RSTB => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      CEM => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      CEB => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      CARRYIN => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      CEP => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      CEA => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      CARRYOUT => NLW_vga_top_i_Maddsub_n0100_CARRYOUT_UNCONNECTED,
      RSTA => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      RSTP => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      B(17) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      B(16) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      B(15) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      B(14) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      B(13) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      B(12) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      B(11) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      B(10) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      B(9) => vga_top_i_vga_i_vga_sync_i_v_count_r(9),
      B(8) => vga_top_i_vga_i_vga_sync_i_v_count_r(8),
      B(7) => vga_top_i_vga_i_vga_sync_i_v_count_r(7),
      B(6) => vga_top_i_vga_i_vga_sync_i_v_count_r(6),
      B(5) => vga_top_i_vga_i_vga_sync_i_v_count_r(5),
      B(4) => vga_top_i_vga_i_vga_sync_i_v_count_r(4),
      B(3) => vga_top_i_vga_i_vga_sync_i_v_count_r(3),
      B(2) => vga_top_i_vga_i_vga_sync_i_v_count_r(2),
      B(1) => vga_top_i_vga_i_vga_sync_i_v_count_r(1),
      B(0) => vga_top_i_vga_i_vga_sync_i_v_count_r(0),
      BCOUT(17) => NLW_vga_top_i_Maddsub_n0100_BCOUT_17_UNCONNECTED,
      BCOUT(16) => NLW_vga_top_i_Maddsub_n0100_BCOUT_16_UNCONNECTED,
      BCOUT(15) => NLW_vga_top_i_Maddsub_n0100_BCOUT_15_UNCONNECTED,
      BCOUT(14) => NLW_vga_top_i_Maddsub_n0100_BCOUT_14_UNCONNECTED,
      BCOUT(13) => NLW_vga_top_i_Maddsub_n0100_BCOUT_13_UNCONNECTED,
      BCOUT(12) => NLW_vga_top_i_Maddsub_n0100_BCOUT_12_UNCONNECTED,
      BCOUT(11) => NLW_vga_top_i_Maddsub_n0100_BCOUT_11_UNCONNECTED,
      BCOUT(10) => NLW_vga_top_i_Maddsub_n0100_BCOUT_10_UNCONNECTED,
      BCOUT(9) => NLW_vga_top_i_Maddsub_n0100_BCOUT_9_UNCONNECTED,
      BCOUT(8) => NLW_vga_top_i_Maddsub_n0100_BCOUT_8_UNCONNECTED,
      BCOUT(7) => NLW_vga_top_i_Maddsub_n0100_BCOUT_7_UNCONNECTED,
      BCOUT(6) => NLW_vga_top_i_Maddsub_n0100_BCOUT_6_UNCONNECTED,
      BCOUT(5) => NLW_vga_top_i_Maddsub_n0100_BCOUT_5_UNCONNECTED,
      BCOUT(4) => NLW_vga_top_i_Maddsub_n0100_BCOUT_4_UNCONNECTED,
      BCOUT(3) => NLW_vga_top_i_Maddsub_n0100_BCOUT_3_UNCONNECTED,
      BCOUT(2) => NLW_vga_top_i_Maddsub_n0100_BCOUT_2_UNCONNECTED,
      BCOUT(1) => NLW_vga_top_i_Maddsub_n0100_BCOUT_1_UNCONNECTED,
      BCOUT(0) => NLW_vga_top_i_Maddsub_n0100_BCOUT_0_UNCONNECTED,
      PCIN(47) => NLW_vga_top_i_Maddsub_n0100_PCIN_47_UNCONNECTED,
      PCIN(46) => NLW_vga_top_i_Maddsub_n0100_PCIN_46_UNCONNECTED,
      PCIN(45) => NLW_vga_top_i_Maddsub_n0100_PCIN_45_UNCONNECTED,
      PCIN(44) => NLW_vga_top_i_Maddsub_n0100_PCIN_44_UNCONNECTED,
      PCIN(43) => NLW_vga_top_i_Maddsub_n0100_PCIN_43_UNCONNECTED,
      PCIN(42) => NLW_vga_top_i_Maddsub_n0100_PCIN_42_UNCONNECTED,
      PCIN(41) => NLW_vga_top_i_Maddsub_n0100_PCIN_41_UNCONNECTED,
      PCIN(40) => NLW_vga_top_i_Maddsub_n0100_PCIN_40_UNCONNECTED,
      PCIN(39) => NLW_vga_top_i_Maddsub_n0100_PCIN_39_UNCONNECTED,
      PCIN(38) => NLW_vga_top_i_Maddsub_n0100_PCIN_38_UNCONNECTED,
      PCIN(37) => NLW_vga_top_i_Maddsub_n0100_PCIN_37_UNCONNECTED,
      PCIN(36) => NLW_vga_top_i_Maddsub_n0100_PCIN_36_UNCONNECTED,
      PCIN(35) => NLW_vga_top_i_Maddsub_n0100_PCIN_35_UNCONNECTED,
      PCIN(34) => NLW_vga_top_i_Maddsub_n0100_PCIN_34_UNCONNECTED,
      PCIN(33) => NLW_vga_top_i_Maddsub_n0100_PCIN_33_UNCONNECTED,
      PCIN(32) => NLW_vga_top_i_Maddsub_n0100_PCIN_32_UNCONNECTED,
      PCIN(31) => NLW_vga_top_i_Maddsub_n0100_PCIN_31_UNCONNECTED,
      PCIN(30) => NLW_vga_top_i_Maddsub_n0100_PCIN_30_UNCONNECTED,
      PCIN(29) => NLW_vga_top_i_Maddsub_n0100_PCIN_29_UNCONNECTED,
      PCIN(28) => NLW_vga_top_i_Maddsub_n0100_PCIN_28_UNCONNECTED,
      PCIN(27) => NLW_vga_top_i_Maddsub_n0100_PCIN_27_UNCONNECTED,
      PCIN(26) => NLW_vga_top_i_Maddsub_n0100_PCIN_26_UNCONNECTED,
      PCIN(25) => NLW_vga_top_i_Maddsub_n0100_PCIN_25_UNCONNECTED,
      PCIN(24) => NLW_vga_top_i_Maddsub_n0100_PCIN_24_UNCONNECTED,
      PCIN(23) => NLW_vga_top_i_Maddsub_n0100_PCIN_23_UNCONNECTED,
      PCIN(22) => NLW_vga_top_i_Maddsub_n0100_PCIN_22_UNCONNECTED,
      PCIN(21) => NLW_vga_top_i_Maddsub_n0100_PCIN_21_UNCONNECTED,
      PCIN(20) => NLW_vga_top_i_Maddsub_n0100_PCIN_20_UNCONNECTED,
      PCIN(19) => NLW_vga_top_i_Maddsub_n0100_PCIN_19_UNCONNECTED,
      PCIN(18) => NLW_vga_top_i_Maddsub_n0100_PCIN_18_UNCONNECTED,
      PCIN(17) => NLW_vga_top_i_Maddsub_n0100_PCIN_17_UNCONNECTED,
      PCIN(16) => NLW_vga_top_i_Maddsub_n0100_PCIN_16_UNCONNECTED,
      PCIN(15) => NLW_vga_top_i_Maddsub_n0100_PCIN_15_UNCONNECTED,
      PCIN(14) => NLW_vga_top_i_Maddsub_n0100_PCIN_14_UNCONNECTED,
      PCIN(13) => NLW_vga_top_i_Maddsub_n0100_PCIN_13_UNCONNECTED,
      PCIN(12) => NLW_vga_top_i_Maddsub_n0100_PCIN_12_UNCONNECTED,
      PCIN(11) => NLW_vga_top_i_Maddsub_n0100_PCIN_11_UNCONNECTED,
      PCIN(10) => NLW_vga_top_i_Maddsub_n0100_PCIN_10_UNCONNECTED,
      PCIN(9) => NLW_vga_top_i_Maddsub_n0100_PCIN_9_UNCONNECTED,
      PCIN(8) => NLW_vga_top_i_Maddsub_n0100_PCIN_8_UNCONNECTED,
      PCIN(7) => NLW_vga_top_i_Maddsub_n0100_PCIN_7_UNCONNECTED,
      PCIN(6) => NLW_vga_top_i_Maddsub_n0100_PCIN_6_UNCONNECTED,
      PCIN(5) => NLW_vga_top_i_Maddsub_n0100_PCIN_5_UNCONNECTED,
      PCIN(4) => NLW_vga_top_i_Maddsub_n0100_PCIN_4_UNCONNECTED,
      PCIN(3) => NLW_vga_top_i_Maddsub_n0100_PCIN_3_UNCONNECTED,
      PCIN(2) => NLW_vga_top_i_Maddsub_n0100_PCIN_2_UNCONNECTED,
      PCIN(1) => NLW_vga_top_i_Maddsub_n0100_PCIN_1_UNCONNECTED,
      PCIN(0) => NLW_vga_top_i_Maddsub_n0100_PCIN_0_UNCONNECTED,
      C(47) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(46) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(45) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(44) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(43) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(42) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(41) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(40) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(39) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(38) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(37) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(36) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(35) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(34) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(33) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(32) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(31) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(30) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(29) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(28) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(27) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(26) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(25) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(24) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(23) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(22) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(21) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(20) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(19) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(18) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(17) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(16) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(15) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(14) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(13) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(12) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(11) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(10) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(9) => vga_top_i_vga_i_vga_sync_i_Result_9_1,
      C(8) => vga_top_i_vga_i_vga_sync_i_Result_8_1,
      C(7) => vga_top_i_vga_i_vga_sync_i_Result_7_1,
      C(6) => vga_top_i_vga_i_vga_sync_i_Result_6_1,
      C(5) => vga_top_i_vga_i_vga_sync_i_Result_5_1,
      C(4) => vga_top_i_vga_i_vga_sync_i_Result_4_1,
      C(3) => vga_top_i_vga_i_vga_sync_i_Result_3_1,
      C(2) => vga_top_i_vga_i_vga_sync_i_Result_2_1,
      C(1) => vga_top_i_vga_i_vga_sync_i_Result_1_1,
      C(0) => vga_top_i_vga_i_vga_sync_i_Result_0_1,
      P(47) => NLW_vga_top_i_Maddsub_n0100_P_47_UNCONNECTED,
      P(46) => NLW_vga_top_i_Maddsub_n0100_P_46_UNCONNECTED,
      P(45) => NLW_vga_top_i_Maddsub_n0100_P_45_UNCONNECTED,
      P(44) => NLW_vga_top_i_Maddsub_n0100_P_44_UNCONNECTED,
      P(43) => NLW_vga_top_i_Maddsub_n0100_P_43_UNCONNECTED,
      P(42) => NLW_vga_top_i_Maddsub_n0100_P_42_UNCONNECTED,
      P(41) => NLW_vga_top_i_Maddsub_n0100_P_41_UNCONNECTED,
      P(40) => NLW_vga_top_i_Maddsub_n0100_P_40_UNCONNECTED,
      P(39) => NLW_vga_top_i_Maddsub_n0100_P_39_UNCONNECTED,
      P(38) => NLW_vga_top_i_Maddsub_n0100_P_38_UNCONNECTED,
      P(37) => NLW_vga_top_i_Maddsub_n0100_P_37_UNCONNECTED,
      P(36) => NLW_vga_top_i_Maddsub_n0100_P_36_UNCONNECTED,
      P(35) => NLW_vga_top_i_Maddsub_n0100_P_35_UNCONNECTED,
      P(34) => NLW_vga_top_i_Maddsub_n0100_P_34_UNCONNECTED,
      P(33) => NLW_vga_top_i_Maddsub_n0100_P_33_UNCONNECTED,
      P(32) => NLW_vga_top_i_Maddsub_n0100_P_32_UNCONNECTED,
      P(31) => NLW_vga_top_i_Maddsub_n0100_P_31_UNCONNECTED,
      P(30) => NLW_vga_top_i_Maddsub_n0100_P_30_UNCONNECTED,
      P(29) => NLW_vga_top_i_Maddsub_n0100_P_29_UNCONNECTED,
      P(28) => NLW_vga_top_i_Maddsub_n0100_P_28_UNCONNECTED,
      P(27) => NLW_vga_top_i_Maddsub_n0100_P_27_UNCONNECTED,
      P(26) => NLW_vga_top_i_Maddsub_n0100_P_26_UNCONNECTED,
      P(25) => NLW_vga_top_i_Maddsub_n0100_P_25_UNCONNECTED,
      P(24) => NLW_vga_top_i_Maddsub_n0100_P_24_UNCONNECTED,
      P(23) => NLW_vga_top_i_Maddsub_n0100_P_23_UNCONNECTED,
      P(22) => NLW_vga_top_i_Maddsub_n0100_P_22_UNCONNECTED,
      P(21) => NLW_vga_top_i_Maddsub_n0100_P_21_UNCONNECTED,
      P(20) => NLW_vga_top_i_Maddsub_n0100_P_20_UNCONNECTED,
      P(19) => vga_top_i_graph_pixel_addr_c(19),
      P(18) => vga_top_i_graph_pixel_addr_c(18),
      P(17) => vga_top_i_graph_pixel_addr_c(17),
      P(16) => vga_top_i_graph_pixel_addr_c(16),
      P(15) => vga_top_i_graph_pixel_addr_c(15),
      P(14) => vga_top_i_graph_pixel_addr_c(14),
      P(13) => vga_top_i_graph_pixel_addr_c(13),
      P(12) => vga_top_i_graph_pixel_addr_c(12),
      P(11) => vga_top_i_graph_pixel_addr_c(11),
      P(10) => vga_top_i_graph_pixel_addr_c(10),
      P(9) => vga_top_i_graph_pixel_addr_c(9),
      P(8) => vga_top_i_graph_pixel_addr_c(8),
      P(7) => vga_top_i_graph_pixel_addr_c(7),
      P(6) => vga_top_i_graph_pixel_addr_c(6),
      P(5) => vga_top_i_graph_pixel_addr_c(5),
      P(4) => NLW_vga_top_i_Maddsub_n0100_P_4_UNCONNECTED,
      P(3) => NLW_vga_top_i_Maddsub_n0100_P_3_UNCONNECTED,
      P(2) => NLW_vga_top_i_Maddsub_n0100_P_2_UNCONNECTED,
      P(1) => NLW_vga_top_i_Maddsub_n0100_P_1_UNCONNECTED,
      P(0) => NLW_vga_top_i_Maddsub_n0100_P_0_UNCONNECTED,
      OPMODE(7) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      OPMODE(6) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      OPMODE(5) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      OPMODE(4) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      OPMODE(3) => pixel_we,
      OPMODE(2) => pixel_we,
      OPMODE(1) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      OPMODE(0) => pixel_we,
      D(17) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      D(16) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      D(15) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      D(14) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      D(13) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      D(12) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      D(11) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      D(10) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      D(9) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      D(8) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      D(7) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      D(6) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      D(5) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      D(4) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      D(3) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      D(2) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      D(1) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      D(0) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      PCOUT(47) => NLW_vga_top_i_Maddsub_n0100_PCOUT_47_UNCONNECTED,
      PCOUT(46) => NLW_vga_top_i_Maddsub_n0100_PCOUT_46_UNCONNECTED,
      PCOUT(45) => NLW_vga_top_i_Maddsub_n0100_PCOUT_45_UNCONNECTED,
      PCOUT(44) => NLW_vga_top_i_Maddsub_n0100_PCOUT_44_UNCONNECTED,
      PCOUT(43) => NLW_vga_top_i_Maddsub_n0100_PCOUT_43_UNCONNECTED,
      PCOUT(42) => NLW_vga_top_i_Maddsub_n0100_PCOUT_42_UNCONNECTED,
      PCOUT(41) => NLW_vga_top_i_Maddsub_n0100_PCOUT_41_UNCONNECTED,
      PCOUT(40) => NLW_vga_top_i_Maddsub_n0100_PCOUT_40_UNCONNECTED,
      PCOUT(39) => NLW_vga_top_i_Maddsub_n0100_PCOUT_39_UNCONNECTED,
      PCOUT(38) => NLW_vga_top_i_Maddsub_n0100_PCOUT_38_UNCONNECTED,
      PCOUT(37) => NLW_vga_top_i_Maddsub_n0100_PCOUT_37_UNCONNECTED,
      PCOUT(36) => NLW_vga_top_i_Maddsub_n0100_PCOUT_36_UNCONNECTED,
      PCOUT(35) => NLW_vga_top_i_Maddsub_n0100_PCOUT_35_UNCONNECTED,
      PCOUT(34) => NLW_vga_top_i_Maddsub_n0100_PCOUT_34_UNCONNECTED,
      PCOUT(33) => NLW_vga_top_i_Maddsub_n0100_PCOUT_33_UNCONNECTED,
      PCOUT(32) => NLW_vga_top_i_Maddsub_n0100_PCOUT_32_UNCONNECTED,
      PCOUT(31) => NLW_vga_top_i_Maddsub_n0100_PCOUT_31_UNCONNECTED,
      PCOUT(30) => NLW_vga_top_i_Maddsub_n0100_PCOUT_30_UNCONNECTED,
      PCOUT(29) => NLW_vga_top_i_Maddsub_n0100_PCOUT_29_UNCONNECTED,
      PCOUT(28) => NLW_vga_top_i_Maddsub_n0100_PCOUT_28_UNCONNECTED,
      PCOUT(27) => NLW_vga_top_i_Maddsub_n0100_PCOUT_27_UNCONNECTED,
      PCOUT(26) => NLW_vga_top_i_Maddsub_n0100_PCOUT_26_UNCONNECTED,
      PCOUT(25) => NLW_vga_top_i_Maddsub_n0100_PCOUT_25_UNCONNECTED,
      PCOUT(24) => NLW_vga_top_i_Maddsub_n0100_PCOUT_24_UNCONNECTED,
      PCOUT(23) => NLW_vga_top_i_Maddsub_n0100_PCOUT_23_UNCONNECTED,
      PCOUT(22) => NLW_vga_top_i_Maddsub_n0100_PCOUT_22_UNCONNECTED,
      PCOUT(21) => NLW_vga_top_i_Maddsub_n0100_PCOUT_21_UNCONNECTED,
      PCOUT(20) => NLW_vga_top_i_Maddsub_n0100_PCOUT_20_UNCONNECTED,
      PCOUT(19) => NLW_vga_top_i_Maddsub_n0100_PCOUT_19_UNCONNECTED,
      PCOUT(18) => NLW_vga_top_i_Maddsub_n0100_PCOUT_18_UNCONNECTED,
      PCOUT(17) => NLW_vga_top_i_Maddsub_n0100_PCOUT_17_UNCONNECTED,
      PCOUT(16) => NLW_vga_top_i_Maddsub_n0100_PCOUT_16_UNCONNECTED,
      PCOUT(15) => NLW_vga_top_i_Maddsub_n0100_PCOUT_15_UNCONNECTED,
      PCOUT(14) => NLW_vga_top_i_Maddsub_n0100_PCOUT_14_UNCONNECTED,
      PCOUT(13) => NLW_vga_top_i_Maddsub_n0100_PCOUT_13_UNCONNECTED,
      PCOUT(12) => NLW_vga_top_i_Maddsub_n0100_PCOUT_12_UNCONNECTED,
      PCOUT(11) => NLW_vga_top_i_Maddsub_n0100_PCOUT_11_UNCONNECTED,
      PCOUT(10) => NLW_vga_top_i_Maddsub_n0100_PCOUT_10_UNCONNECTED,
      PCOUT(9) => NLW_vga_top_i_Maddsub_n0100_PCOUT_9_UNCONNECTED,
      PCOUT(8) => NLW_vga_top_i_Maddsub_n0100_PCOUT_8_UNCONNECTED,
      PCOUT(7) => NLW_vga_top_i_Maddsub_n0100_PCOUT_7_UNCONNECTED,
      PCOUT(6) => NLW_vga_top_i_Maddsub_n0100_PCOUT_6_UNCONNECTED,
      PCOUT(5) => NLW_vga_top_i_Maddsub_n0100_PCOUT_5_UNCONNECTED,
      PCOUT(4) => NLW_vga_top_i_Maddsub_n0100_PCOUT_4_UNCONNECTED,
      PCOUT(3) => NLW_vga_top_i_Maddsub_n0100_PCOUT_3_UNCONNECTED,
      PCOUT(2) => NLW_vga_top_i_Maddsub_n0100_PCOUT_2_UNCONNECTED,
      PCOUT(1) => NLW_vga_top_i_Maddsub_n0100_PCOUT_1_UNCONNECTED,
      PCOUT(0) => NLW_vga_top_i_Maddsub_n0100_PCOUT_0_UNCONNECTED,
      A(17) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      A(16) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      A(15) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      A(14) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      A(13) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      A(12) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      A(11) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      A(10) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      A(9) => pixel_we,
      A(8) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      A(7) => pixel_we,
      A(6) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      A(5) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      A(4) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      A(3) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      A(2) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      A(1) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      A(0) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      M(35) => NLW_vga_top_i_Maddsub_n0100_M_35_UNCONNECTED,
      M(34) => NLW_vga_top_i_Maddsub_n0100_M_34_UNCONNECTED,
      M(33) => NLW_vga_top_i_Maddsub_n0100_M_33_UNCONNECTED,
      M(32) => NLW_vga_top_i_Maddsub_n0100_M_32_UNCONNECTED,
      M(31) => NLW_vga_top_i_Maddsub_n0100_M_31_UNCONNECTED,
      M(30) => NLW_vga_top_i_Maddsub_n0100_M_30_UNCONNECTED,
      M(29) => NLW_vga_top_i_Maddsub_n0100_M_29_UNCONNECTED,
      M(28) => NLW_vga_top_i_Maddsub_n0100_M_28_UNCONNECTED,
      M(27) => NLW_vga_top_i_Maddsub_n0100_M_27_UNCONNECTED,
      M(26) => NLW_vga_top_i_Maddsub_n0100_M_26_UNCONNECTED,
      M(25) => NLW_vga_top_i_Maddsub_n0100_M_25_UNCONNECTED,
      M(24) => NLW_vga_top_i_Maddsub_n0100_M_24_UNCONNECTED,
      M(23) => NLW_vga_top_i_Maddsub_n0100_M_23_UNCONNECTED,
      M(22) => NLW_vga_top_i_Maddsub_n0100_M_22_UNCONNECTED,
      M(21) => NLW_vga_top_i_Maddsub_n0100_M_21_UNCONNECTED,
      M(20) => NLW_vga_top_i_Maddsub_n0100_M_20_UNCONNECTED,
      M(19) => NLW_vga_top_i_Maddsub_n0100_M_19_UNCONNECTED,
      M(18) => NLW_vga_top_i_Maddsub_n0100_M_18_UNCONNECTED,
      M(17) => NLW_vga_top_i_Maddsub_n0100_M_17_UNCONNECTED,
      M(16) => NLW_vga_top_i_Maddsub_n0100_M_16_UNCONNECTED,
      M(15) => NLW_vga_top_i_Maddsub_n0100_M_15_UNCONNECTED,
      M(14) => NLW_vga_top_i_Maddsub_n0100_M_14_UNCONNECTED,
      M(13) => NLW_vga_top_i_Maddsub_n0100_M_13_UNCONNECTED,
      M(12) => NLW_vga_top_i_Maddsub_n0100_M_12_UNCONNECTED,
      M(11) => NLW_vga_top_i_Maddsub_n0100_M_11_UNCONNECTED,
      M(10) => NLW_vga_top_i_Maddsub_n0100_M_10_UNCONNECTED,
      M(9) => NLW_vga_top_i_Maddsub_n0100_M_9_UNCONNECTED,
      M(8) => NLW_vga_top_i_Maddsub_n0100_M_8_UNCONNECTED,
      M(7) => NLW_vga_top_i_Maddsub_n0100_M_7_UNCONNECTED,
      M(6) => NLW_vga_top_i_Maddsub_n0100_M_6_UNCONNECTED,
      M(5) => NLW_vga_top_i_Maddsub_n0100_M_5_UNCONNECTED,
      M(4) => NLW_vga_top_i_Maddsub_n0100_M_4_UNCONNECTED,
      M(3) => NLW_vga_top_i_Maddsub_n0100_M_3_UNCONNECTED,
      M(2) => NLW_vga_top_i_Maddsub_n0100_M_2_UNCONNECTED,
      M(1) => NLW_vga_top_i_Maddsub_n0100_M_1_UNCONNECTED,
      M(0) => NLW_vga_top_i_Maddsub_n0100_M_0_UNCONNECTED
    );
  vga_top_i_Maddsub_n0103 : DSP48A1
    generic map(
      A0REG => 0,
      A1REG => 0,
      B0REG => 0,
      B1REG => 0,
      DREG => 0,
      MREG => 0,
      PREG => 0,
      CREG => 1,
      OPMODEREG => 0,
      CARRYINREG => 0,
      CARRYOUTREG => 0,
      CARRYINSEL => "OPMODE5",
      RSTTYPE => "SYNC"
    )
    port map (
      CECARRYIN => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      RSTC => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_val_567,
      RSTCARRYIN => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      CED => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      RSTD => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      CEOPMODE => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      CEC => pixel_we,
      CARRYOUTF => NLW_vga_top_i_Maddsub_n0103_CARRYOUTF_UNCONNECTED,
      RSTOPMODE => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      RSTM => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      CLK => vga_top_i_vga_i_clk_s,
      RSTB => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      CEM => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      CEB => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      CARRYIN => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      CEP => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      CEA => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      CARRYOUT => NLW_vga_top_i_Maddsub_n0103_CARRYOUT_UNCONNECTED,
      RSTA => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      RSTP => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      B(17) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      B(16) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      B(15) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      B(14) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      B(13) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      B(12) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      B(11) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      B(10) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      B(9) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      B(8) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      B(7) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      B(6) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      B(5) => vga_top_i_vga_i_vga_sync_i_v_count_r(9),
      B(4) => vga_top_i_vga_i_vga_sync_i_v_count_r(8),
      B(3) => vga_top_i_vga_i_vga_sync_i_v_count_r(7),
      B(2) => vga_top_i_vga_i_vga_sync_i_v_count_r(6),
      B(1) => vga_top_i_vga_i_vga_sync_i_v_count_r(5),
      B(0) => vga_top_i_vga_i_vga_sync_i_v_count_r(4),
      BCOUT(17) => NLW_vga_top_i_Maddsub_n0103_BCOUT_17_UNCONNECTED,
      BCOUT(16) => NLW_vga_top_i_Maddsub_n0103_BCOUT_16_UNCONNECTED,
      BCOUT(15) => NLW_vga_top_i_Maddsub_n0103_BCOUT_15_UNCONNECTED,
      BCOUT(14) => NLW_vga_top_i_Maddsub_n0103_BCOUT_14_UNCONNECTED,
      BCOUT(13) => NLW_vga_top_i_Maddsub_n0103_BCOUT_13_UNCONNECTED,
      BCOUT(12) => NLW_vga_top_i_Maddsub_n0103_BCOUT_12_UNCONNECTED,
      BCOUT(11) => NLW_vga_top_i_Maddsub_n0103_BCOUT_11_UNCONNECTED,
      BCOUT(10) => NLW_vga_top_i_Maddsub_n0103_BCOUT_10_UNCONNECTED,
      BCOUT(9) => NLW_vga_top_i_Maddsub_n0103_BCOUT_9_UNCONNECTED,
      BCOUT(8) => NLW_vga_top_i_Maddsub_n0103_BCOUT_8_UNCONNECTED,
      BCOUT(7) => NLW_vga_top_i_Maddsub_n0103_BCOUT_7_UNCONNECTED,
      BCOUT(6) => NLW_vga_top_i_Maddsub_n0103_BCOUT_6_UNCONNECTED,
      BCOUT(5) => NLW_vga_top_i_Maddsub_n0103_BCOUT_5_UNCONNECTED,
      BCOUT(4) => NLW_vga_top_i_Maddsub_n0103_BCOUT_4_UNCONNECTED,
      BCOUT(3) => NLW_vga_top_i_Maddsub_n0103_BCOUT_3_UNCONNECTED,
      BCOUT(2) => NLW_vga_top_i_Maddsub_n0103_BCOUT_2_UNCONNECTED,
      BCOUT(1) => NLW_vga_top_i_Maddsub_n0103_BCOUT_1_UNCONNECTED,
      BCOUT(0) => NLW_vga_top_i_Maddsub_n0103_BCOUT_0_UNCONNECTED,
      PCIN(47) => NLW_vga_top_i_Maddsub_n0103_PCIN_47_UNCONNECTED,
      PCIN(46) => NLW_vga_top_i_Maddsub_n0103_PCIN_46_UNCONNECTED,
      PCIN(45) => NLW_vga_top_i_Maddsub_n0103_PCIN_45_UNCONNECTED,
      PCIN(44) => NLW_vga_top_i_Maddsub_n0103_PCIN_44_UNCONNECTED,
      PCIN(43) => NLW_vga_top_i_Maddsub_n0103_PCIN_43_UNCONNECTED,
      PCIN(42) => NLW_vga_top_i_Maddsub_n0103_PCIN_42_UNCONNECTED,
      PCIN(41) => NLW_vga_top_i_Maddsub_n0103_PCIN_41_UNCONNECTED,
      PCIN(40) => NLW_vga_top_i_Maddsub_n0103_PCIN_40_UNCONNECTED,
      PCIN(39) => NLW_vga_top_i_Maddsub_n0103_PCIN_39_UNCONNECTED,
      PCIN(38) => NLW_vga_top_i_Maddsub_n0103_PCIN_38_UNCONNECTED,
      PCIN(37) => NLW_vga_top_i_Maddsub_n0103_PCIN_37_UNCONNECTED,
      PCIN(36) => NLW_vga_top_i_Maddsub_n0103_PCIN_36_UNCONNECTED,
      PCIN(35) => NLW_vga_top_i_Maddsub_n0103_PCIN_35_UNCONNECTED,
      PCIN(34) => NLW_vga_top_i_Maddsub_n0103_PCIN_34_UNCONNECTED,
      PCIN(33) => NLW_vga_top_i_Maddsub_n0103_PCIN_33_UNCONNECTED,
      PCIN(32) => NLW_vga_top_i_Maddsub_n0103_PCIN_32_UNCONNECTED,
      PCIN(31) => NLW_vga_top_i_Maddsub_n0103_PCIN_31_UNCONNECTED,
      PCIN(30) => NLW_vga_top_i_Maddsub_n0103_PCIN_30_UNCONNECTED,
      PCIN(29) => NLW_vga_top_i_Maddsub_n0103_PCIN_29_UNCONNECTED,
      PCIN(28) => NLW_vga_top_i_Maddsub_n0103_PCIN_28_UNCONNECTED,
      PCIN(27) => NLW_vga_top_i_Maddsub_n0103_PCIN_27_UNCONNECTED,
      PCIN(26) => NLW_vga_top_i_Maddsub_n0103_PCIN_26_UNCONNECTED,
      PCIN(25) => NLW_vga_top_i_Maddsub_n0103_PCIN_25_UNCONNECTED,
      PCIN(24) => NLW_vga_top_i_Maddsub_n0103_PCIN_24_UNCONNECTED,
      PCIN(23) => NLW_vga_top_i_Maddsub_n0103_PCIN_23_UNCONNECTED,
      PCIN(22) => NLW_vga_top_i_Maddsub_n0103_PCIN_22_UNCONNECTED,
      PCIN(21) => NLW_vga_top_i_Maddsub_n0103_PCIN_21_UNCONNECTED,
      PCIN(20) => NLW_vga_top_i_Maddsub_n0103_PCIN_20_UNCONNECTED,
      PCIN(19) => NLW_vga_top_i_Maddsub_n0103_PCIN_19_UNCONNECTED,
      PCIN(18) => NLW_vga_top_i_Maddsub_n0103_PCIN_18_UNCONNECTED,
      PCIN(17) => NLW_vga_top_i_Maddsub_n0103_PCIN_17_UNCONNECTED,
      PCIN(16) => NLW_vga_top_i_Maddsub_n0103_PCIN_16_UNCONNECTED,
      PCIN(15) => NLW_vga_top_i_Maddsub_n0103_PCIN_15_UNCONNECTED,
      PCIN(14) => NLW_vga_top_i_Maddsub_n0103_PCIN_14_UNCONNECTED,
      PCIN(13) => NLW_vga_top_i_Maddsub_n0103_PCIN_13_UNCONNECTED,
      PCIN(12) => NLW_vga_top_i_Maddsub_n0103_PCIN_12_UNCONNECTED,
      PCIN(11) => NLW_vga_top_i_Maddsub_n0103_PCIN_11_UNCONNECTED,
      PCIN(10) => NLW_vga_top_i_Maddsub_n0103_PCIN_10_UNCONNECTED,
      PCIN(9) => NLW_vga_top_i_Maddsub_n0103_PCIN_9_UNCONNECTED,
      PCIN(8) => NLW_vga_top_i_Maddsub_n0103_PCIN_8_UNCONNECTED,
      PCIN(7) => NLW_vga_top_i_Maddsub_n0103_PCIN_7_UNCONNECTED,
      PCIN(6) => NLW_vga_top_i_Maddsub_n0103_PCIN_6_UNCONNECTED,
      PCIN(5) => NLW_vga_top_i_Maddsub_n0103_PCIN_5_UNCONNECTED,
      PCIN(4) => NLW_vga_top_i_Maddsub_n0103_PCIN_4_UNCONNECTED,
      PCIN(3) => NLW_vga_top_i_Maddsub_n0103_PCIN_3_UNCONNECTED,
      PCIN(2) => NLW_vga_top_i_Maddsub_n0103_PCIN_2_UNCONNECTED,
      PCIN(1) => NLW_vga_top_i_Maddsub_n0103_PCIN_1_UNCONNECTED,
      PCIN(0) => NLW_vga_top_i_Maddsub_n0103_PCIN_0_UNCONNECTED,
      C(47) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(46) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(45) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(44) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(43) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(42) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(41) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(40) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(39) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(38) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(37) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(36) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(35) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(34) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(33) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(32) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(31) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(30) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(29) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(28) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(27) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(26) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(25) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(24) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(23) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(22) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(21) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(20) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(19) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(18) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(17) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(16) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(15) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(14) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(13) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(12) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(11) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(10) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(9) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(8) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(7) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(6) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C(5) => vga_top_i_vga_i_vga_sync_i_Result_9_1,
      C(4) => vga_top_i_vga_i_vga_sync_i_Result_8_1,
      C(3) => vga_top_i_vga_i_vga_sync_i_Result_7_1,
      C(2) => vga_top_i_vga_i_vga_sync_i_Result_6_1,
      C(1) => vga_top_i_vga_i_vga_sync_i_Result_5_1,
      C(0) => vga_top_i_vga_i_vga_sync_i_Result_4_1,
      P(47) => NLW_vga_top_i_Maddsub_n0103_P_47_UNCONNECTED,
      P(46) => NLW_vga_top_i_Maddsub_n0103_P_46_UNCONNECTED,
      P(45) => NLW_vga_top_i_Maddsub_n0103_P_45_UNCONNECTED,
      P(44) => NLW_vga_top_i_Maddsub_n0103_P_44_UNCONNECTED,
      P(43) => NLW_vga_top_i_Maddsub_n0103_P_43_UNCONNECTED,
      P(42) => NLW_vga_top_i_Maddsub_n0103_P_42_UNCONNECTED,
      P(41) => NLW_vga_top_i_Maddsub_n0103_P_41_UNCONNECTED,
      P(40) => NLW_vga_top_i_Maddsub_n0103_P_40_UNCONNECTED,
      P(39) => NLW_vga_top_i_Maddsub_n0103_P_39_UNCONNECTED,
      P(38) => NLW_vga_top_i_Maddsub_n0103_P_38_UNCONNECTED,
      P(37) => NLW_vga_top_i_Maddsub_n0103_P_37_UNCONNECTED,
      P(36) => NLW_vga_top_i_Maddsub_n0103_P_36_UNCONNECTED,
      P(35) => NLW_vga_top_i_Maddsub_n0103_P_35_UNCONNECTED,
      P(34) => NLW_vga_top_i_Maddsub_n0103_P_34_UNCONNECTED,
      P(33) => NLW_vga_top_i_Maddsub_n0103_P_33_UNCONNECTED,
      P(32) => NLW_vga_top_i_Maddsub_n0103_P_32_UNCONNECTED,
      P(31) => NLW_vga_top_i_Maddsub_n0103_P_31_UNCONNECTED,
      P(30) => NLW_vga_top_i_Maddsub_n0103_P_30_UNCONNECTED,
      P(29) => NLW_vga_top_i_Maddsub_n0103_P_29_UNCONNECTED,
      P(28) => NLW_vga_top_i_Maddsub_n0103_P_28_UNCONNECTED,
      P(27) => NLW_vga_top_i_Maddsub_n0103_P_27_UNCONNECTED,
      P(26) => NLW_vga_top_i_Maddsub_n0103_P_26_UNCONNECTED,
      P(25) => NLW_vga_top_i_Maddsub_n0103_P_25_UNCONNECTED,
      P(24) => NLW_vga_top_i_Maddsub_n0103_P_24_UNCONNECTED,
      P(23) => NLW_vga_top_i_Maddsub_n0103_P_23_UNCONNECTED,
      P(22) => NLW_vga_top_i_Maddsub_n0103_P_22_UNCONNECTED,
      P(21) => NLW_vga_top_i_Maddsub_n0103_P_21_UNCONNECTED,
      P(20) => NLW_vga_top_i_Maddsub_n0103_P_20_UNCONNECTED,
      P(19) => NLW_vga_top_i_Maddsub_n0103_P_19_UNCONNECTED,
      P(18) => NLW_vga_top_i_Maddsub_n0103_P_18_UNCONNECTED,
      P(17) => NLW_vga_top_i_Maddsub_n0103_P_17_UNCONNECTED,
      P(16) => NLW_vga_top_i_Maddsub_n0103_P_16_UNCONNECTED,
      P(15) => NLW_vga_top_i_Maddsub_n0103_P_15_UNCONNECTED,
      P(14) => NLW_vga_top_i_Maddsub_n0103_P_14_UNCONNECTED,
      P(13) => vga_top_i_txt_rom_addr_c(13),
      P(12) => vga_top_i_txt_rom_addr_c(12),
      P(11) => vga_top_i_txt_rom_addr_c(11),
      P(10) => vga_top_i_txt_rom_addr_c(10),
      P(9) => vga_top_i_txt_rom_addr_c(9),
      P(8) => vga_top_i_txt_rom_addr_c(8),
      P(7) => vga_top_i_txt_rom_addr_c(7),
      P(6) => vga_top_i_txt_rom_addr_c(6),
      P(5) => vga_top_i_txt_rom_addr_c(5),
      P(4) => vga_top_i_txt_rom_addr_c(4),
      P(3) => vga_top_i_txt_rom_addr_c(3),
      P(2) => vga_top_i_txt_rom_addr_c(2),
      P(1) => vga_top_i_txt_rom_addr_c(1),
      P(0) => vga_top_i_txt_rom_addr_c(0),
      OPMODE(7) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      OPMODE(6) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      OPMODE(5) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      OPMODE(4) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      OPMODE(3) => pixel_we,
      OPMODE(2) => pixel_we,
      OPMODE(1) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      OPMODE(0) => pixel_we,
      D(17) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      D(16) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      D(15) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      D(14) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      D(13) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      D(12) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      D(11) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      D(10) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      D(9) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      D(8) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      D(7) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      D(6) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      D(5) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      D(4) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      D(3) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      D(2) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      D(1) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      D(0) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      PCOUT(47) => NLW_vga_top_i_Maddsub_n0103_PCOUT_47_UNCONNECTED,
      PCOUT(46) => NLW_vga_top_i_Maddsub_n0103_PCOUT_46_UNCONNECTED,
      PCOUT(45) => NLW_vga_top_i_Maddsub_n0103_PCOUT_45_UNCONNECTED,
      PCOUT(44) => NLW_vga_top_i_Maddsub_n0103_PCOUT_44_UNCONNECTED,
      PCOUT(43) => NLW_vga_top_i_Maddsub_n0103_PCOUT_43_UNCONNECTED,
      PCOUT(42) => NLW_vga_top_i_Maddsub_n0103_PCOUT_42_UNCONNECTED,
      PCOUT(41) => NLW_vga_top_i_Maddsub_n0103_PCOUT_41_UNCONNECTED,
      PCOUT(40) => NLW_vga_top_i_Maddsub_n0103_PCOUT_40_UNCONNECTED,
      PCOUT(39) => NLW_vga_top_i_Maddsub_n0103_PCOUT_39_UNCONNECTED,
      PCOUT(38) => NLW_vga_top_i_Maddsub_n0103_PCOUT_38_UNCONNECTED,
      PCOUT(37) => NLW_vga_top_i_Maddsub_n0103_PCOUT_37_UNCONNECTED,
      PCOUT(36) => NLW_vga_top_i_Maddsub_n0103_PCOUT_36_UNCONNECTED,
      PCOUT(35) => NLW_vga_top_i_Maddsub_n0103_PCOUT_35_UNCONNECTED,
      PCOUT(34) => NLW_vga_top_i_Maddsub_n0103_PCOUT_34_UNCONNECTED,
      PCOUT(33) => NLW_vga_top_i_Maddsub_n0103_PCOUT_33_UNCONNECTED,
      PCOUT(32) => NLW_vga_top_i_Maddsub_n0103_PCOUT_32_UNCONNECTED,
      PCOUT(31) => NLW_vga_top_i_Maddsub_n0103_PCOUT_31_UNCONNECTED,
      PCOUT(30) => NLW_vga_top_i_Maddsub_n0103_PCOUT_30_UNCONNECTED,
      PCOUT(29) => NLW_vga_top_i_Maddsub_n0103_PCOUT_29_UNCONNECTED,
      PCOUT(28) => NLW_vga_top_i_Maddsub_n0103_PCOUT_28_UNCONNECTED,
      PCOUT(27) => NLW_vga_top_i_Maddsub_n0103_PCOUT_27_UNCONNECTED,
      PCOUT(26) => NLW_vga_top_i_Maddsub_n0103_PCOUT_26_UNCONNECTED,
      PCOUT(25) => NLW_vga_top_i_Maddsub_n0103_PCOUT_25_UNCONNECTED,
      PCOUT(24) => NLW_vga_top_i_Maddsub_n0103_PCOUT_24_UNCONNECTED,
      PCOUT(23) => NLW_vga_top_i_Maddsub_n0103_PCOUT_23_UNCONNECTED,
      PCOUT(22) => NLW_vga_top_i_Maddsub_n0103_PCOUT_22_UNCONNECTED,
      PCOUT(21) => NLW_vga_top_i_Maddsub_n0103_PCOUT_21_UNCONNECTED,
      PCOUT(20) => NLW_vga_top_i_Maddsub_n0103_PCOUT_20_UNCONNECTED,
      PCOUT(19) => NLW_vga_top_i_Maddsub_n0103_PCOUT_19_UNCONNECTED,
      PCOUT(18) => NLW_vga_top_i_Maddsub_n0103_PCOUT_18_UNCONNECTED,
      PCOUT(17) => NLW_vga_top_i_Maddsub_n0103_PCOUT_17_UNCONNECTED,
      PCOUT(16) => NLW_vga_top_i_Maddsub_n0103_PCOUT_16_UNCONNECTED,
      PCOUT(15) => NLW_vga_top_i_Maddsub_n0103_PCOUT_15_UNCONNECTED,
      PCOUT(14) => NLW_vga_top_i_Maddsub_n0103_PCOUT_14_UNCONNECTED,
      PCOUT(13) => NLW_vga_top_i_Maddsub_n0103_PCOUT_13_UNCONNECTED,
      PCOUT(12) => NLW_vga_top_i_Maddsub_n0103_PCOUT_12_UNCONNECTED,
      PCOUT(11) => NLW_vga_top_i_Maddsub_n0103_PCOUT_11_UNCONNECTED,
      PCOUT(10) => NLW_vga_top_i_Maddsub_n0103_PCOUT_10_UNCONNECTED,
      PCOUT(9) => NLW_vga_top_i_Maddsub_n0103_PCOUT_9_UNCONNECTED,
      PCOUT(8) => NLW_vga_top_i_Maddsub_n0103_PCOUT_8_UNCONNECTED,
      PCOUT(7) => NLW_vga_top_i_Maddsub_n0103_PCOUT_7_UNCONNECTED,
      PCOUT(6) => NLW_vga_top_i_Maddsub_n0103_PCOUT_6_UNCONNECTED,
      PCOUT(5) => NLW_vga_top_i_Maddsub_n0103_PCOUT_5_UNCONNECTED,
      PCOUT(4) => NLW_vga_top_i_Maddsub_n0103_PCOUT_4_UNCONNECTED,
      PCOUT(3) => NLW_vga_top_i_Maddsub_n0103_PCOUT_3_UNCONNECTED,
      PCOUT(2) => NLW_vga_top_i_Maddsub_n0103_PCOUT_2_UNCONNECTED,
      PCOUT(1) => NLW_vga_top_i_Maddsub_n0103_PCOUT_1_UNCONNECTED,
      PCOUT(0) => NLW_vga_top_i_Maddsub_n0103_PCOUT_0_UNCONNECTED,
      A(17) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      A(16) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      A(15) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      A(14) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      A(13) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      A(12) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      A(11) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      A(10) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      A(9) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      A(8) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      A(7) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      A(6) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      A(5) => pixel_we,
      A(4) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      A(3) => pixel_we,
      A(2) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      A(1) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      A(0) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      M(35) => NLW_vga_top_i_Maddsub_n0103_M_35_UNCONNECTED,
      M(34) => NLW_vga_top_i_Maddsub_n0103_M_34_UNCONNECTED,
      M(33) => NLW_vga_top_i_Maddsub_n0103_M_33_UNCONNECTED,
      M(32) => NLW_vga_top_i_Maddsub_n0103_M_32_UNCONNECTED,
      M(31) => NLW_vga_top_i_Maddsub_n0103_M_31_UNCONNECTED,
      M(30) => NLW_vga_top_i_Maddsub_n0103_M_30_UNCONNECTED,
      M(29) => NLW_vga_top_i_Maddsub_n0103_M_29_UNCONNECTED,
      M(28) => NLW_vga_top_i_Maddsub_n0103_M_28_UNCONNECTED,
      M(27) => NLW_vga_top_i_Maddsub_n0103_M_27_UNCONNECTED,
      M(26) => NLW_vga_top_i_Maddsub_n0103_M_26_UNCONNECTED,
      M(25) => NLW_vga_top_i_Maddsub_n0103_M_25_UNCONNECTED,
      M(24) => NLW_vga_top_i_Maddsub_n0103_M_24_UNCONNECTED,
      M(23) => NLW_vga_top_i_Maddsub_n0103_M_23_UNCONNECTED,
      M(22) => NLW_vga_top_i_Maddsub_n0103_M_22_UNCONNECTED,
      M(21) => NLW_vga_top_i_Maddsub_n0103_M_21_UNCONNECTED,
      M(20) => NLW_vga_top_i_Maddsub_n0103_M_20_UNCONNECTED,
      M(19) => NLW_vga_top_i_Maddsub_n0103_M_19_UNCONNECTED,
      M(18) => NLW_vga_top_i_Maddsub_n0103_M_18_UNCONNECTED,
      M(17) => NLW_vga_top_i_Maddsub_n0103_M_17_UNCONNECTED,
      M(16) => NLW_vga_top_i_Maddsub_n0103_M_16_UNCONNECTED,
      M(15) => NLW_vga_top_i_Maddsub_n0103_M_15_UNCONNECTED,
      M(14) => NLW_vga_top_i_Maddsub_n0103_M_14_UNCONNECTED,
      M(13) => NLW_vga_top_i_Maddsub_n0103_M_13_UNCONNECTED,
      M(12) => NLW_vga_top_i_Maddsub_n0103_M_12_UNCONNECTED,
      M(11) => NLW_vga_top_i_Maddsub_n0103_M_11_UNCONNECTED,
      M(10) => NLW_vga_top_i_Maddsub_n0103_M_10_UNCONNECTED,
      M(9) => NLW_vga_top_i_Maddsub_n0103_M_9_UNCONNECTED,
      M(8) => NLW_vga_top_i_Maddsub_n0103_M_8_UNCONNECTED,
      M(7) => NLW_vga_top_i_Maddsub_n0103_M_7_UNCONNECTED,
      M(6) => NLW_vga_top_i_Maddsub_n0103_M_6_UNCONNECTED,
      M(5) => NLW_vga_top_i_Maddsub_n0103_M_5_UNCONNECTED,
      M(4) => NLW_vga_top_i_Maddsub_n0103_M_4_UNCONNECTED,
      M(3) => NLW_vga_top_i_Maddsub_n0103_M_3_UNCONNECTED,
      M(2) => NLW_vga_top_i_Maddsub_n0103_M_2_UNCONNECTED,
      M(1) => NLW_vga_top_i_Maddsub_n0103_M_1_UNCONNECTED,
      M(0) => NLW_vga_top_i_Maddsub_n0103_M_0_UNCONNECTED
    );
  graphics_reg_r_q_0 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => graphics_reg_Mcount_r_q_eqn_0,
      Q => graphics_reg_r_q(0)
    );
  graphics_reg_r_q_1 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => graphics_reg_Mcount_r_q_eqn_1,
      Q => graphics_reg_r_q(1)
    );
  graphics_reg_r_q_2 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => graphics_reg_Mcount_r_q_eqn_2,
      Q => graphics_reg_r_q(2)
    );
  graphics_reg_r_q_3 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => graphics_reg_Mcount_r_q_eqn_3,
      Q => graphics_reg_r_q(3)
    );
  graphics_reg_r_q_4 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => graphics_reg_Mcount_r_q_eqn_4,
      Q => graphics_reg_r_q(4)
    );
  graphics_reg_r_q_5 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => graphics_reg_Mcount_r_q_eqn_5,
      Q => graphics_reg_r_q(5)
    );
  graphics_reg_r_q_6 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => graphics_reg_Mcount_r_q_eqn_6,
      Q => graphics_reg_r_q(6)
    );
  graphics_reg_r_q_7 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => graphics_reg_Mcount_r_q_eqn_7,
      Q => graphics_reg_r_q(7)
    );
  graphics_reg_r_q_8 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => graphics_reg_Mcount_r_q_eqn_8,
      Q => graphics_reg_r_q(8)
    );
  graphics_reg_r_q_9 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => graphics_reg_Mcount_r_q_eqn_9,
      Q => graphics_reg_r_q(9)
    );
  graphics_reg_r_q_10 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => graphics_reg_Mcount_r_q_eqn_10,
      Q => graphics_reg_r_q(10)
    );
  graphics_reg_r_q_11 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => graphics_reg_Mcount_r_q_eqn_11,
      Q => graphics_reg_r_q(11)
    );
  graphics_reg_r_q_12 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => graphics_reg_Mcount_r_q_eqn_12,
      Q => graphics_reg_r_q(12)
    );
  graphics_reg_r_q_13 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => graphics_reg_Mcount_r_q_eqn_13,
      Q => graphics_reg_r_q(13)
    );
  sh_graph_reg_r_q_0 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => Result_0_1,
      Q => sh_graph_reg_r_q(0)
    );
  sh_graph_reg_r_q_1 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => Result_1_1,
      Q => sh_graph_reg_r_q(1)
    );
  sh_graph_reg_r_q_2 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => Result_2_1,
      Q => sh_graph_reg_r_q(2)
    );
  sh_graph_reg_r_q_3 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => Result_3_1,
      Q => sh_graph_reg_r_q(3)
    );
  sh_graph_reg_r_q_4 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => Result_4_1,
      Q => sh_graph_reg_r_q(4)
    );
  sh_graph_reg_r_q_5 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => Result_5_1,
      Q => sh_graph_reg_r_q(5)
    );
  sh_graph_reg_r_q_6 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => Result_6_1,
      Q => sh_graph_reg_r_q(6)
    );
  sh_graph_reg_r_q_7 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => Result_7_1,
      Q => sh_graph_reg_r_q(7)
    );
  sh_graph_reg_r_q_8 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => Result_8_1,
      Q => sh_graph_reg_r_q(8)
    );
  sh_graph_reg_r_q_9 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => Result_9_1,
      Q => sh_graph_reg_r_q(9)
    );
  sh_graph_reg_r_q_10 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => Result_10_1,
      Q => sh_graph_reg_r_q(10)
    );
  sh_graph_reg_r_q_11 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => Result_11_1,
      Q => sh_graph_reg_r_q(11)
    );
  sh_graph_reg_r_q_12 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => Result_12_1,
      Q => sh_graph_reg_r_q(12)
    );
  sh_graph_reg_r_q_13 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => Result_13_1,
      Q => sh_graph_reg_r_q(13)
    );
  sh_graph_reg_r_q_14 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => Result_14_1,
      Q => sh_graph_reg_r_q(14)
    );
  sh_graph_reg_r_q_15 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => Result_15_1,
      Q => sh_graph_reg_r_q(15)
    );
  sh_graph_reg_r_q_16 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => Result_16_1,
      Q => sh_graph_reg_r_q(16)
    );
  sh_graph_reg_r_q_17 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => Result_17_1,
      Q => sh_graph_reg_r_q(17)
    );
  sh_graph_reg_r_q_18 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => Result_18_1,
      Q => sh_graph_reg_r_q(18)
    );
  sh_graph_reg_r_q_19 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => Result_19_1,
      Q => sh_graph_reg_r_q(19)
    );
  char_reg_r_q_0 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => char_reg_Mcount_r_q,
      Q => char_reg_r_q(0)
    );
  char_reg_r_q_1 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => char_reg_Mcount_r_q1,
      Q => char_reg_r_q(1)
    );
  Madd_mem_r_13_GND_5_o_add_51_OUT_cy_0_Q : MUXCY
    port map (
      CI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      DI => pixel_we,
      S => Madd_mem_r_13_GND_5_o_add_51_OUT_lut_0_Q,
      O => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_0_Q_365
    );
  Madd_mem_r_13_GND_5_o_add_51_OUT_xor_0_Q : XORCY
    port map (
      CI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      LI => Madd_mem_r_13_GND_5_o_add_51_OUT_lut_0_Q,
      O => mem_r_13_GND_5_o_add_51_OUT_0_Q
    );
  Madd_mem_r_13_GND_5_o_add_51_OUT_cy_1_Q : MUXCY
    port map (
      CI => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_0_Q_365,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_1_rt_683,
      O => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_1_Q_366
    );
  Madd_mem_r_13_GND_5_o_add_51_OUT_xor_1_Q : XORCY
    port map (
      CI => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_0_Q_365,
      LI => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_1_rt_683,
      O => mem_r_13_GND_5_o_add_51_OUT_1_Q
    );
  Madd_mem_r_13_GND_5_o_add_51_OUT_cy_2_Q : MUXCY
    port map (
      CI => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_1_Q_366,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_2_rt_684,
      O => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_2_Q_367
    );
  Madd_mem_r_13_GND_5_o_add_51_OUT_xor_2_Q : XORCY
    port map (
      CI => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_1_Q_366,
      LI => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_2_rt_684,
      O => mem_r_13_GND_5_o_add_51_OUT_2_Q
    );
  Madd_mem_r_13_GND_5_o_add_51_OUT_cy_3_Q : MUXCY
    port map (
      CI => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_2_Q_367,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_3_rt_685,
      O => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_3_Q_368
    );
  Madd_mem_r_13_GND_5_o_add_51_OUT_xor_3_Q : XORCY
    port map (
      CI => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_2_Q_367,
      LI => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_3_rt_685,
      O => mem_r_13_GND_5_o_add_51_OUT_3_Q
    );
  Madd_mem_r_13_GND_5_o_add_51_OUT_cy_4_Q : MUXCY
    port map (
      CI => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_3_Q_368,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_4_rt_686,
      O => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_4_Q_369
    );
  Madd_mem_r_13_GND_5_o_add_51_OUT_xor_4_Q : XORCY
    port map (
      CI => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_3_Q_368,
      LI => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_4_rt_686,
      O => mem_r_13_GND_5_o_add_51_OUT_4_Q
    );
  Madd_mem_r_13_GND_5_o_add_51_OUT_cy_5_Q : MUXCY
    port map (
      CI => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_4_Q_369,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_5_rt_687,
      O => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_5_Q_370
    );
  Madd_mem_r_13_GND_5_o_add_51_OUT_xor_5_Q : XORCY
    port map (
      CI => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_4_Q_369,
      LI => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_5_rt_687,
      O => mem_r_13_GND_5_o_add_51_OUT_5_Q
    );
  Madd_mem_r_13_GND_5_o_add_51_OUT_cy_6_Q : MUXCY
    port map (
      CI => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_5_Q_370,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_6_rt_688,
      O => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_6_Q_371
    );
  Madd_mem_r_13_GND_5_o_add_51_OUT_xor_6_Q : XORCY
    port map (
      CI => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_5_Q_370,
      LI => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_6_rt_688,
      O => mem_r_13_GND_5_o_add_51_OUT_6_Q
    );
  Madd_mem_r_13_GND_5_o_add_51_OUT_cy_7_Q : MUXCY
    port map (
      CI => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_6_Q_371,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_7_rt_689,
      O => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_7_Q_372
    );
  Madd_mem_r_13_GND_5_o_add_51_OUT_xor_7_Q : XORCY
    port map (
      CI => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_6_Q_371,
      LI => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_7_rt_689,
      O => mem_r_13_GND_5_o_add_51_OUT_7_Q
    );
  Madd_mem_r_13_GND_5_o_add_51_OUT_cy_8_Q : MUXCY
    port map (
      CI => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_7_Q_372,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_8_rt_690,
      O => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_8_Q_373
    );
  Madd_mem_r_13_GND_5_o_add_51_OUT_xor_8_Q : XORCY
    port map (
      CI => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_7_Q_372,
      LI => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_8_rt_690,
      O => mem_r_13_GND_5_o_add_51_OUT_8_Q
    );
  Madd_mem_r_13_GND_5_o_add_51_OUT_cy_9_Q : MUXCY
    port map (
      CI => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_8_Q_373,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_9_rt_691,
      O => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_9_Q_374
    );
  Madd_mem_r_13_GND_5_o_add_51_OUT_xor_9_Q : XORCY
    port map (
      CI => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_8_Q_373,
      LI => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_9_rt_691,
      O => mem_r_13_GND_5_o_add_51_OUT_9_Q
    );
  Madd_mem_r_13_GND_5_o_add_51_OUT_cy_10_Q : MUXCY
    port map (
      CI => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_9_Q_374,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_10_rt_692,
      O => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_10_Q_375
    );
  Madd_mem_r_13_GND_5_o_add_51_OUT_xor_10_Q : XORCY
    port map (
      CI => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_9_Q_374,
      LI => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_10_rt_692,
      O => mem_r_13_GND_5_o_add_51_OUT_10_Q
    );
  Madd_mem_r_13_GND_5_o_add_51_OUT_cy_11_Q : MUXCY
    port map (
      CI => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_10_Q_375,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_11_rt_693,
      O => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_11_Q_376
    );
  Madd_mem_r_13_GND_5_o_add_51_OUT_xor_11_Q : XORCY
    port map (
      CI => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_10_Q_375,
      LI => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_11_rt_693,
      O => mem_r_13_GND_5_o_add_51_OUT_11_Q
    );
  Madd_mem_r_13_GND_5_o_add_51_OUT_cy_12_Q : MUXCY
    port map (
      CI => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_11_Q_376,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_12_rt_694,
      O => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_12_Q_377
    );
  Madd_mem_r_13_GND_5_o_add_51_OUT_xor_12_Q : XORCY
    port map (
      CI => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_11_Q_376,
      LI => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_12_rt_694,
      O => mem_r_13_GND_5_o_add_51_OUT_12_Q
    );
  Madd_mem_r_13_GND_5_o_add_51_OUT_xor_13_Q : XORCY
    port map (
      CI => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_12_Q_377,
      LI => Madd_mem_r_13_GND_5_o_add_51_OUT_xor_13_rt_797,
      O => mem_r_13_GND_5_o_add_51_OUT_13_Q
    );
  Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_1_Q : MUXCY
    port map (
      CI => pixel_we,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_1_rt_695,
      O => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_1_Q_378
    );
  Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_xor_1_Q : XORCY
    port map (
      CI => pixel_we,
      LI => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_1_rt_695,
      O => GND_5_o_GND_5_o_sub_51_OUT(1)
    );
  Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_2_Q : MUXCY
    port map (
      CI => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_1_Q_378,
      DI => pixel_we,
      S => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_2_Q,
      O => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_2_Q_380
    );
  Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_xor_2_Q : XORCY
    port map (
      CI => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_1_Q_378,
      LI => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_2_Q,
      O => GND_5_o_GND_5_o_sub_51_OUT(2)
    );
  Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_3_Q : MUXCY
    port map (
      CI => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_2_Q_380,
      DI => pixel_we,
      S => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_3_Q,
      O => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_3_Q_382
    );
  Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_xor_3_Q : XORCY
    port map (
      CI => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_2_Q_380,
      LI => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_3_Q,
      O => GND_5_o_GND_5_o_sub_51_OUT(3)
    );
  Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_4_Q : MUXCY
    port map (
      CI => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_3_Q_382,
      DI => pixel_we,
      S => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_4_Q,
      O => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_4_Q_384
    );
  Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_xor_4_Q : XORCY
    port map (
      CI => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_3_Q_382,
      LI => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_4_Q,
      O => GND_5_o_GND_5_o_sub_51_OUT(4)
    );
  Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_5_Q : MUXCY
    port map (
      CI => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_4_Q_384,
      DI => pixel_we,
      S => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_5_Q,
      O => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_5_Q_386
    );
  Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_xor_5_Q : XORCY
    port map (
      CI => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_4_Q_384,
      LI => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_5_Q,
      O => GND_5_o_GND_5_o_sub_51_OUT(5)
    );
  Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_6_Q : MUXCY
    port map (
      CI => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_5_Q_386,
      DI => pixel_we,
      S => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_6_Q,
      O => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_6_Q_388
    );
  Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_xor_6_Q : XORCY
    port map (
      CI => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_5_Q_386,
      LI => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_6_Q,
      O => GND_5_o_GND_5_o_sub_51_OUT(6)
    );
  Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_7_Q : MUXCY
    port map (
      CI => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_6_Q_388,
      DI => pixel_we,
      S => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_7_Q,
      O => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_7_Q_390
    );
  Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_xor_7_Q : XORCY
    port map (
      CI => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_6_Q_388,
      LI => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_7_Q,
      O => GND_5_o_GND_5_o_sub_51_OUT(7)
    );
  Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_8_Q : MUXCY
    port map (
      CI => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_7_Q_390,
      DI => pixel_we,
      S => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_8_Q,
      O => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_8_Q_392
    );
  Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_xor_8_Q : XORCY
    port map (
      CI => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_7_Q_390,
      LI => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_8_Q,
      O => GND_5_o_GND_5_o_sub_51_OUT(8)
    );
  Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_9_Q : MUXCY
    port map (
      CI => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_8_Q_392,
      DI => pixel_we,
      S => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_9_Q,
      O => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_9_Q_394
    );
  Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_xor_9_Q : XORCY
    port map (
      CI => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_8_Q_392,
      LI => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_9_Q,
      O => GND_5_o_GND_5_o_sub_51_OUT(9)
    );
  Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_10_Q : MUXCY
    port map (
      CI => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_9_Q_394,
      DI => pixel_we,
      S => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_10_Q,
      O => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_10_Q_396
    );
  Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_xor_10_Q : XORCY
    port map (
      CI => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_9_Q_394,
      LI => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_10_Q,
      O => GND_5_o_GND_5_o_sub_51_OUT(10)
    );
  Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_11_Q : MUXCY
    port map (
      CI => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_10_Q_396,
      DI => pixel_we,
      S => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_11_Q,
      O => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_11_Q_398
    );
  Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_xor_11_Q : XORCY
    port map (
      CI => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_10_Q_396,
      LI => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_11_Q,
      O => GND_5_o_GND_5_o_sub_51_OUT(11)
    );
  Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_12_Q : MUXCY
    port map (
      CI => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_11_Q_398,
      DI => pixel_we,
      S => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_12_Q,
      O => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_12_Q_400
    );
  Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_xor_12_Q : XORCY
    port map (
      CI => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_11_Q_398,
      LI => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_12_Q,
      O => GND_5_o_GND_5_o_sub_51_OUT(12)
    );
  Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_xor_13_Q : XORCY
    port map (
      CI => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_12_Q_400,
      LI => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_13_Q,
      O => GND_5_o_GND_5_o_sub_51_OUT(13)
    );
  Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_0_Q : MUXCY
    port map (
      CI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      DI => pixel_we,
      S => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_lut_0_Q,
      O => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_0_Q_403
    );
  Madd_graph_mem_r_19_GND_5_o_add_67_OUT_xor_0_Q : XORCY
    port map (
      CI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      LI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_lut_0_Q,
      O => graph_mem_r_19_GND_5_o_add_67_OUT_0_Q
    );
  Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_1_Q : MUXCY
    port map (
      CI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_0_Q_403,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_1_rt_696,
      O => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_1_Q_404
    );
  Madd_graph_mem_r_19_GND_5_o_add_67_OUT_xor_1_Q : XORCY
    port map (
      CI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_0_Q_403,
      LI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_1_rt_696,
      O => graph_mem_r_19_GND_5_o_add_67_OUT_1_Q
    );
  Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_2_Q : MUXCY
    port map (
      CI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_1_Q_404,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_2_rt_697,
      O => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_2_Q_405
    );
  Madd_graph_mem_r_19_GND_5_o_add_67_OUT_xor_2_Q : XORCY
    port map (
      CI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_1_Q_404,
      LI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_2_rt_697,
      O => graph_mem_r_19_GND_5_o_add_67_OUT_2_Q
    );
  Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_3_Q : MUXCY
    port map (
      CI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_2_Q_405,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_3_rt_698,
      O => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_3_Q_406
    );
  Madd_graph_mem_r_19_GND_5_o_add_67_OUT_xor_3_Q : XORCY
    port map (
      CI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_2_Q_405,
      LI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_3_rt_698,
      O => graph_mem_r_19_GND_5_o_add_67_OUT_3_Q
    );
  Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_4_Q : MUXCY
    port map (
      CI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_3_Q_406,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_4_rt_699,
      O => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_4_Q_407
    );
  Madd_graph_mem_r_19_GND_5_o_add_67_OUT_xor_4_Q : XORCY
    port map (
      CI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_3_Q_406,
      LI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_4_rt_699,
      O => graph_mem_r_19_GND_5_o_add_67_OUT_4_Q
    );
  Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_5_Q : MUXCY
    port map (
      CI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_4_Q_407,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_5_rt_700,
      O => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_5_Q_408
    );
  Madd_graph_mem_r_19_GND_5_o_add_67_OUT_xor_5_Q : XORCY
    port map (
      CI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_4_Q_407,
      LI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_5_rt_700,
      O => graph_mem_r_19_GND_5_o_add_67_OUT_5_Q
    );
  Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_6_Q : MUXCY
    port map (
      CI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_5_Q_408,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_6_rt_701,
      O => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_6_Q_409
    );
  Madd_graph_mem_r_19_GND_5_o_add_67_OUT_xor_6_Q : XORCY
    port map (
      CI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_5_Q_408,
      LI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_6_rt_701,
      O => graph_mem_r_19_GND_5_o_add_67_OUT_6_Q
    );
  Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_7_Q : MUXCY
    port map (
      CI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_6_Q_409,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_7_rt_702,
      O => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_7_Q_410
    );
  Madd_graph_mem_r_19_GND_5_o_add_67_OUT_xor_7_Q : XORCY
    port map (
      CI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_6_Q_409,
      LI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_7_rt_702,
      O => graph_mem_r_19_GND_5_o_add_67_OUT_7_Q
    );
  Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_8_Q : MUXCY
    port map (
      CI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_7_Q_410,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_8_rt_703,
      O => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_8_Q_411
    );
  Madd_graph_mem_r_19_GND_5_o_add_67_OUT_xor_8_Q : XORCY
    port map (
      CI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_7_Q_410,
      LI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_8_rt_703,
      O => graph_mem_r_19_GND_5_o_add_67_OUT_8_Q
    );
  Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_9_Q : MUXCY
    port map (
      CI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_8_Q_411,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_9_rt_704,
      O => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_9_Q_412
    );
  Madd_graph_mem_r_19_GND_5_o_add_67_OUT_xor_9_Q : XORCY
    port map (
      CI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_8_Q_411,
      LI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_9_rt_704,
      O => graph_mem_r_19_GND_5_o_add_67_OUT_9_Q
    );
  Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_10_Q : MUXCY
    port map (
      CI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_9_Q_412,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_10_rt_705,
      O => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_10_Q_413
    );
  Madd_graph_mem_r_19_GND_5_o_add_67_OUT_xor_10_Q : XORCY
    port map (
      CI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_9_Q_412,
      LI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_10_rt_705,
      O => graph_mem_r_19_GND_5_o_add_67_OUT_10_Q
    );
  Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_11_Q : MUXCY
    port map (
      CI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_10_Q_413,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_11_rt_706,
      O => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_11_Q_414
    );
  Madd_graph_mem_r_19_GND_5_o_add_67_OUT_xor_11_Q : XORCY
    port map (
      CI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_10_Q_413,
      LI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_11_rt_706,
      O => graph_mem_r_19_GND_5_o_add_67_OUT_11_Q
    );
  Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_12_Q : MUXCY
    port map (
      CI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_11_Q_414,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_12_rt_707,
      O => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_12_Q_415
    );
  Madd_graph_mem_r_19_GND_5_o_add_67_OUT_xor_12_Q : XORCY
    port map (
      CI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_11_Q_414,
      LI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_12_rt_707,
      O => graph_mem_r_19_GND_5_o_add_67_OUT_12_Q
    );
  Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_13_Q : MUXCY
    port map (
      CI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_12_Q_415,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_13_rt_708,
      O => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_13_Q_416
    );
  Madd_graph_mem_r_19_GND_5_o_add_67_OUT_xor_13_Q : XORCY
    port map (
      CI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_12_Q_415,
      LI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_13_rt_708,
      O => graph_mem_r_19_GND_5_o_add_67_OUT_13_Q
    );
  Madd_graph_mem_r_19_GND_5_o_add_67_OUT_xor_14_Q : XORCY
    port map (
      CI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_13_Q_416,
      LI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      O => graph_mem_r_19_GND_5_o_add_67_OUT_14_Q
    );
  Madd_pixel_colon_r_15_GND_5_o_add_73_OUT_cy_0_Q : MUXCY
    port map (
      CI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      DI => pixel_we,
      S => Madd_pixel_colon_r_15_GND_5_o_add_73_OUT_lut_0_Q,
      O => Madd_pixel_colon_r_15_GND_5_o_add_73_OUT_cy_0_Q_419
    );
  Madd_pixel_colon_r_15_GND_5_o_add_73_OUT_xor_0_Q : XORCY
    port map (
      CI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      LI => Madd_pixel_colon_r_15_GND_5_o_add_73_OUT_lut_0_Q,
      O => pixel_colon_r_15_GND_5_o_add_73_OUT_0_Q
    );
  Madd_pixel_colon_r_15_GND_5_o_add_73_OUT_cy_1_Q : MUXCY
    port map (
      CI => Madd_pixel_colon_r_15_GND_5_o_add_73_OUT_cy_0_Q_419,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_pixel_colon_r_15_GND_5_o_add_73_OUT_cy_1_rt_709,
      O => Madd_pixel_colon_r_15_GND_5_o_add_73_OUT_cy_1_Q_420
    );
  Madd_pixel_colon_r_15_GND_5_o_add_73_OUT_xor_1_Q : XORCY
    port map (
      CI => Madd_pixel_colon_r_15_GND_5_o_add_73_OUT_cy_0_Q_419,
      LI => Madd_pixel_colon_r_15_GND_5_o_add_73_OUT_cy_1_rt_709,
      O => pixel_colon_r_15_GND_5_o_add_73_OUT_1_Q
    );
  Madd_pixel_colon_r_15_GND_5_o_add_73_OUT_xor_2_Q : XORCY
    port map (
      CI => Madd_pixel_colon_r_15_GND_5_o_add_73_OUT_cy_1_Q_420,
      LI => Madd_pixel_colon_r_15_GND_5_o_add_73_OUT_xor_2_rt_798,
      O => pixel_colon_r_15_GND_5_o_add_73_OUT_2_Q
    );
  Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_0_Q : MUXCY
    port map (
      CI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      DI => pixel_we,
      S => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_lut_0_Q,
      O => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_0_Q_422
    );
  Madd_pixel_row_r_15_GND_5_o_add_80_OUT_xor_0_Q : XORCY
    port map (
      CI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      LI => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_lut_0_Q,
      O => pixel_row_r_15_GND_5_o_add_80_OUT_0_Q
    );
  Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_1_Q : MUXCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_0_Q_422,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_1_rt_710,
      O => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_1_Q_423
    );
  Madd_pixel_row_r_15_GND_5_o_add_80_OUT_xor_1_Q : XORCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_0_Q_422,
      LI => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_1_rt_710,
      O => pixel_row_r_15_GND_5_o_add_80_OUT_1_Q
    );
  Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_2_Q : MUXCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_1_Q_423,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_2_rt_711,
      O => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_2_Q_424
    );
  Madd_pixel_row_r_15_GND_5_o_add_80_OUT_xor_2_Q : XORCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_1_Q_423,
      LI => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_2_rt_711,
      O => pixel_row_r_15_GND_5_o_add_80_OUT_2_Q
    );
  Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_3_Q : MUXCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_2_Q_424,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_3_rt_712,
      O => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_3_Q_425
    );
  Madd_pixel_row_r_15_GND_5_o_add_80_OUT_xor_3_Q : XORCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_2_Q_424,
      LI => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_3_rt_712,
      O => pixel_row_r_15_GND_5_o_add_80_OUT_3_Q
    );
  Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_4_Q : MUXCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_3_Q_425,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_4_rt_713,
      O => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_4_Q_426
    );
  Madd_pixel_row_r_15_GND_5_o_add_80_OUT_xor_4_Q : XORCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_3_Q_425,
      LI => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_4_rt_713,
      O => pixel_row_r_15_GND_5_o_add_80_OUT_4_Q
    );
  Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_5_Q : MUXCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_4_Q_426,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_5_rt_714,
      O => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_5_Q_427
    );
  Madd_pixel_row_r_15_GND_5_o_add_80_OUT_xor_5_Q : XORCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_4_Q_426,
      LI => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_5_rt_714,
      O => pixel_row_r_15_GND_5_o_add_80_OUT_5_Q
    );
  Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_6_Q : MUXCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_5_Q_427,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_6_rt_715,
      O => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_6_Q_428
    );
  Madd_pixel_row_r_15_GND_5_o_add_80_OUT_xor_6_Q : XORCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_5_Q_427,
      LI => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_6_rt_715,
      O => pixel_row_r_15_GND_5_o_add_80_OUT_6_Q
    );
  Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_7_Q : MUXCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_6_Q_428,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_7_rt_716,
      O => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_7_Q_429
    );
  Madd_pixel_row_r_15_GND_5_o_add_80_OUT_xor_7_Q : XORCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_6_Q_428,
      LI => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_7_rt_716,
      O => pixel_row_r_15_GND_5_o_add_80_OUT_7_Q
    );
  Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_8_Q : MUXCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_7_Q_429,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_8_rt_717,
      O => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_8_Q_430
    );
  Madd_pixel_row_r_15_GND_5_o_add_80_OUT_xor_8_Q : XORCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_7_Q_429,
      LI => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_8_rt_717,
      O => pixel_row_r_15_GND_5_o_add_80_OUT_8_Q
    );
  Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_9_Q : MUXCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_8_Q_430,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_9_rt_718,
      O => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_9_Q_431
    );
  Madd_pixel_row_r_15_GND_5_o_add_80_OUT_xor_9_Q : XORCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_8_Q_430,
      LI => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_9_rt_718,
      O => pixel_row_r_15_GND_5_o_add_80_OUT_9_Q
    );
  Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_10_Q : MUXCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_9_Q_431,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_10_rt_719,
      O => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_10_Q_432
    );
  Madd_pixel_row_r_15_GND_5_o_add_80_OUT_xor_10_Q : XORCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_9_Q_431,
      LI => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_10_rt_719,
      O => pixel_row_r_15_GND_5_o_add_80_OUT_10_Q
    );
  Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_11_Q : MUXCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_10_Q_432,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_11_rt_720,
      O => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_11_Q_433
    );
  Madd_pixel_row_r_15_GND_5_o_add_80_OUT_xor_11_Q : XORCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_10_Q_432,
      LI => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_11_rt_720,
      O => pixel_row_r_15_GND_5_o_add_80_OUT_11_Q
    );
  Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_12_Q : MUXCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_11_Q_433,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_12_rt_721,
      O => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_12_Q_434
    );
  Madd_pixel_row_r_15_GND_5_o_add_80_OUT_xor_12_Q : XORCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_11_Q_433,
      LI => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_12_rt_721,
      O => pixel_row_r_15_GND_5_o_add_80_OUT_12_Q
    );
  Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_13_Q : MUXCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_12_Q_434,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_13_rt_722,
      O => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_13_Q_435
    );
  Madd_pixel_row_r_15_GND_5_o_add_80_OUT_xor_13_Q : XORCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_12_Q_434,
      LI => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_13_rt_722,
      O => pixel_row_r_15_GND_5_o_add_80_OUT_13_Q
    );
  Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_14_Q : MUXCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_13_Q_435,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_14_rt_723,
      O => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_14_Q_436
    );
  Madd_pixel_row_r_15_GND_5_o_add_80_OUT_xor_14_Q : XORCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_13_Q_435,
      LI => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_14_rt_723,
      O => pixel_row_r_15_GND_5_o_add_80_OUT_14_Q
    );
  Madd_pixel_row_r_15_GND_5_o_add_80_OUT_xor_15_Q : XORCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_14_Q_436,
      LI => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_xor_15_rt_799,
      O => pixel_row_r_15_GND_5_o_add_80_OUT_15_Q
    );
  Madd_sh_graph_cnt_cy_0_Q : MUXCY
    port map (
      CI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      DI => pixel_we,
      S => Madd_sh_graph_cnt_lut(0),
      O => Madd_sh_graph_cnt_cy(0)
    );
  Madd_sh_graph_cnt_xor_0_Q : XORCY
    port map (
      CI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      LI => Madd_sh_graph_cnt_lut(0),
      O => sh_graph_cnt(0)
    );
  Madd_sh_graph_cnt_cy_1_Q : MUXCY
    port map (
      CI => Madd_sh_graph_cnt_cy(0),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_sh_graph_cnt_cy_1_rt_724,
      O => Madd_sh_graph_cnt_cy(1)
    );
  Madd_sh_graph_cnt_xor_1_Q : XORCY
    port map (
      CI => Madd_sh_graph_cnt_cy(0),
      LI => Madd_sh_graph_cnt_cy_1_rt_724,
      O => sh_graph_cnt(1)
    );
  Madd_sh_graph_cnt_cy_2_Q : MUXCY
    port map (
      CI => Madd_sh_graph_cnt_cy(1),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_sh_graph_cnt_cy_2_rt_725,
      O => Madd_sh_graph_cnt_cy(2)
    );
  Madd_sh_graph_cnt_xor_2_Q : XORCY
    port map (
      CI => Madd_sh_graph_cnt_cy(1),
      LI => Madd_sh_graph_cnt_cy_2_rt_725,
      O => sh_graph_cnt(2)
    );
  Madd_sh_graph_cnt_cy_3_Q : MUXCY
    port map (
      CI => Madd_sh_graph_cnt_cy(2),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_sh_graph_cnt_cy_3_rt_726,
      O => Madd_sh_graph_cnt_cy(3)
    );
  Madd_sh_graph_cnt_xor_3_Q : XORCY
    port map (
      CI => Madd_sh_graph_cnt_cy(2),
      LI => Madd_sh_graph_cnt_cy_3_rt_726,
      O => sh_graph_cnt(3)
    );
  Madd_sh_graph_cnt_cy_4_Q : MUXCY
    port map (
      CI => Madd_sh_graph_cnt_cy(3),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_sh_graph_cnt_cy_4_rt_727,
      O => Madd_sh_graph_cnt_cy(4)
    );
  Madd_sh_graph_cnt_xor_4_Q : XORCY
    port map (
      CI => Madd_sh_graph_cnt_cy(3),
      LI => Madd_sh_graph_cnt_cy_4_rt_727,
      O => sh_graph_cnt(4)
    );
  Madd_sh_graph_cnt_cy_5_Q : MUXCY
    port map (
      CI => Madd_sh_graph_cnt_cy(4),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_sh_graph_cnt_cy_5_rt_728,
      O => Madd_sh_graph_cnt_cy(5)
    );
  Madd_sh_graph_cnt_xor_5_Q : XORCY
    port map (
      CI => Madd_sh_graph_cnt_cy(4),
      LI => Madd_sh_graph_cnt_cy_5_rt_728,
      O => sh_graph_cnt(5)
    );
  Madd_sh_graph_cnt_cy_6_Q : MUXCY
    port map (
      CI => Madd_sh_graph_cnt_cy(5),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_sh_graph_cnt_cy_6_rt_729,
      O => Madd_sh_graph_cnt_cy(6)
    );
  Madd_sh_graph_cnt_xor_6_Q : XORCY
    port map (
      CI => Madd_sh_graph_cnt_cy(5),
      LI => Madd_sh_graph_cnt_cy_6_rt_729,
      O => sh_graph_cnt(6)
    );
  Madd_sh_graph_cnt_cy_7_Q : MUXCY
    port map (
      CI => Madd_sh_graph_cnt_cy(6),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_sh_graph_cnt_cy_7_rt_730,
      O => Madd_sh_graph_cnt_cy(7)
    );
  Madd_sh_graph_cnt_xor_7_Q : XORCY
    port map (
      CI => Madd_sh_graph_cnt_cy(6),
      LI => Madd_sh_graph_cnt_cy_7_rt_730,
      O => sh_graph_cnt(7)
    );
  Madd_sh_graph_cnt_cy_8_Q : MUXCY
    port map (
      CI => Madd_sh_graph_cnt_cy(7),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_sh_graph_cnt_cy_8_rt_731,
      O => Madd_sh_graph_cnt_cy(8)
    );
  Madd_sh_graph_cnt_xor_8_Q : XORCY
    port map (
      CI => Madd_sh_graph_cnt_cy(7),
      LI => Madd_sh_graph_cnt_cy_8_rt_731,
      O => sh_graph_cnt(8)
    );
  Madd_sh_graph_cnt_cy_9_Q : MUXCY
    port map (
      CI => Madd_sh_graph_cnt_cy(8),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_sh_graph_cnt_cy_9_rt_732,
      O => Madd_sh_graph_cnt_cy(9)
    );
  Madd_sh_graph_cnt_xor_9_Q : XORCY
    port map (
      CI => Madd_sh_graph_cnt_cy(8),
      LI => Madd_sh_graph_cnt_cy_9_rt_732,
      O => sh_graph_cnt(9)
    );
  Madd_sh_graph_cnt_cy_10_Q : MUXCY
    port map (
      CI => Madd_sh_graph_cnt_cy(9),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_sh_graph_cnt_cy_10_rt_733,
      O => Madd_sh_graph_cnt_cy(10)
    );
  Madd_sh_graph_cnt_xor_10_Q : XORCY
    port map (
      CI => Madd_sh_graph_cnt_cy(9),
      LI => Madd_sh_graph_cnt_cy_10_rt_733,
      O => sh_graph_cnt(10)
    );
  Madd_sh_graph_cnt_cy_11_Q : MUXCY
    port map (
      CI => Madd_sh_graph_cnt_cy(10),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_sh_graph_cnt_cy_11_rt_734,
      O => Madd_sh_graph_cnt_cy(11)
    );
  Madd_sh_graph_cnt_xor_11_Q : XORCY
    port map (
      CI => Madd_sh_graph_cnt_cy(10),
      LI => Madd_sh_graph_cnt_cy_11_rt_734,
      O => sh_graph_cnt(11)
    );
  Madd_sh_graph_cnt_cy_12_Q : MUXCY
    port map (
      CI => Madd_sh_graph_cnt_cy(11),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_sh_graph_cnt_cy_12_rt_735,
      O => Madd_sh_graph_cnt_cy(12)
    );
  Madd_sh_graph_cnt_xor_12_Q : XORCY
    port map (
      CI => Madd_sh_graph_cnt_cy(11),
      LI => Madd_sh_graph_cnt_cy_12_rt_735,
      O => sh_graph_cnt(12)
    );
  Madd_sh_graph_cnt_cy_13_Q : MUXCY
    port map (
      CI => Madd_sh_graph_cnt_cy(12),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_sh_graph_cnt_cy_13_rt_736,
      O => Madd_sh_graph_cnt_cy(13)
    );
  Madd_sh_graph_cnt_xor_13_Q : XORCY
    port map (
      CI => Madd_sh_graph_cnt_cy(12),
      LI => Madd_sh_graph_cnt_cy_13_rt_736,
      O => sh_graph_cnt(13)
    );
  Madd_sh_graph_cnt_cy_14_Q : MUXCY
    port map (
      CI => Madd_sh_graph_cnt_cy(13),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_sh_graph_cnt_cy_14_rt_737,
      O => Madd_sh_graph_cnt_cy(14)
    );
  Madd_sh_graph_cnt_xor_14_Q : XORCY
    port map (
      CI => Madd_sh_graph_cnt_cy(13),
      LI => Madd_sh_graph_cnt_cy_14_rt_737,
      O => sh_graph_cnt(14)
    );
  Madd_sh_graph_cnt_cy_15_Q : MUXCY
    port map (
      CI => Madd_sh_graph_cnt_cy(14),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_sh_graph_cnt_cy_15_rt_738,
      O => Madd_sh_graph_cnt_cy(15)
    );
  Madd_sh_graph_cnt_xor_15_Q : XORCY
    port map (
      CI => Madd_sh_graph_cnt_cy(14),
      LI => Madd_sh_graph_cnt_cy_15_rt_738,
      O => sh_graph_cnt(15)
    );
  Madd_sh_graph_cnt_cy_16_Q : MUXCY
    port map (
      CI => Madd_sh_graph_cnt_cy(15),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_sh_graph_cnt_cy_16_rt_739,
      O => Madd_sh_graph_cnt_cy(16)
    );
  Madd_sh_graph_cnt_xor_16_Q : XORCY
    port map (
      CI => Madd_sh_graph_cnt_cy(15),
      LI => Madd_sh_graph_cnt_cy_16_rt_739,
      O => sh_graph_cnt(16)
    );
  Madd_sh_graph_cnt_cy_17_Q : MUXCY
    port map (
      CI => Madd_sh_graph_cnt_cy(16),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_sh_graph_cnt_cy_17_rt_740,
      O => Madd_sh_graph_cnt_cy(17)
    );
  Madd_sh_graph_cnt_xor_17_Q : XORCY
    port map (
      CI => Madd_sh_graph_cnt_cy(16),
      LI => Madd_sh_graph_cnt_cy_17_rt_740,
      O => sh_graph_cnt(17)
    );
  Madd_sh_graph_cnt_cy_18_Q : MUXCY
    port map (
      CI => Madd_sh_graph_cnt_cy(17),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_sh_graph_cnt_cy_18_rt_741,
      O => Madd_sh_graph_cnt_cy(18)
    );
  Madd_sh_graph_cnt_xor_18_Q : XORCY
    port map (
      CI => Madd_sh_graph_cnt_cy(17),
      LI => Madd_sh_graph_cnt_cy_18_rt_741,
      O => sh_graph_cnt(18)
    );
  Madd_sh_graph_cnt_xor_19_Q : XORCY
    port map (
      CI => Madd_sh_graph_cnt_cy(18),
      LI => Madd_sh_graph_cnt_xor_19_rt_800,
      O => sh_graph_cnt(19)
    );
  sh_graph_reg_Mcount_r_q_cy_0_Q : MUXCY
    port map (
      CI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      DI => pixel_we,
      S => sh_graph_reg_Mcount_r_q_lut(0),
      O => sh_graph_reg_Mcount_r_q_cy(0)
    );
  sh_graph_reg_Mcount_r_q_xor_0_Q : XORCY
    port map (
      CI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      LI => sh_graph_reg_Mcount_r_q_lut(0),
      O => Result_0_1
    );
  sh_graph_reg_Mcount_r_q_cy_1_Q : MUXCY
    port map (
      CI => sh_graph_reg_Mcount_r_q_cy(0),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => sh_graph_reg_Mcount_r_q_cy_1_rt_742,
      O => sh_graph_reg_Mcount_r_q_cy(1)
    );
  sh_graph_reg_Mcount_r_q_xor_1_Q : XORCY
    port map (
      CI => sh_graph_reg_Mcount_r_q_cy(0),
      LI => sh_graph_reg_Mcount_r_q_cy_1_rt_742,
      O => Result_1_1
    );
  sh_graph_reg_Mcount_r_q_cy_2_Q : MUXCY
    port map (
      CI => sh_graph_reg_Mcount_r_q_cy(1),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => sh_graph_reg_Mcount_r_q_cy_2_rt_743,
      O => sh_graph_reg_Mcount_r_q_cy(2)
    );
  sh_graph_reg_Mcount_r_q_xor_2_Q : XORCY
    port map (
      CI => sh_graph_reg_Mcount_r_q_cy(1),
      LI => sh_graph_reg_Mcount_r_q_cy_2_rt_743,
      O => Result_2_1
    );
  sh_graph_reg_Mcount_r_q_cy_3_Q : MUXCY
    port map (
      CI => sh_graph_reg_Mcount_r_q_cy(2),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => sh_graph_reg_Mcount_r_q_cy_3_rt_744,
      O => sh_graph_reg_Mcount_r_q_cy(3)
    );
  sh_graph_reg_Mcount_r_q_xor_3_Q : XORCY
    port map (
      CI => sh_graph_reg_Mcount_r_q_cy(2),
      LI => sh_graph_reg_Mcount_r_q_cy_3_rt_744,
      O => Result_3_1
    );
  sh_graph_reg_Mcount_r_q_cy_4_Q : MUXCY
    port map (
      CI => sh_graph_reg_Mcount_r_q_cy(3),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => sh_graph_reg_Mcount_r_q_cy_4_rt_745,
      O => sh_graph_reg_Mcount_r_q_cy(4)
    );
  sh_graph_reg_Mcount_r_q_xor_4_Q : XORCY
    port map (
      CI => sh_graph_reg_Mcount_r_q_cy(3),
      LI => sh_graph_reg_Mcount_r_q_cy_4_rt_745,
      O => Result_4_1
    );
  sh_graph_reg_Mcount_r_q_cy_5_Q : MUXCY
    port map (
      CI => sh_graph_reg_Mcount_r_q_cy(4),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => sh_graph_reg_Mcount_r_q_cy_5_rt_746,
      O => sh_graph_reg_Mcount_r_q_cy(5)
    );
  sh_graph_reg_Mcount_r_q_xor_5_Q : XORCY
    port map (
      CI => sh_graph_reg_Mcount_r_q_cy(4),
      LI => sh_graph_reg_Mcount_r_q_cy_5_rt_746,
      O => Result_5_1
    );
  sh_graph_reg_Mcount_r_q_cy_6_Q : MUXCY
    port map (
      CI => sh_graph_reg_Mcount_r_q_cy(5),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => sh_graph_reg_Mcount_r_q_cy_6_rt_747,
      O => sh_graph_reg_Mcount_r_q_cy(6)
    );
  sh_graph_reg_Mcount_r_q_xor_6_Q : XORCY
    port map (
      CI => sh_graph_reg_Mcount_r_q_cy(5),
      LI => sh_graph_reg_Mcount_r_q_cy_6_rt_747,
      O => Result_6_1
    );
  sh_graph_reg_Mcount_r_q_cy_7_Q : MUXCY
    port map (
      CI => sh_graph_reg_Mcount_r_q_cy(6),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => sh_graph_reg_Mcount_r_q_cy_7_rt_748,
      O => sh_graph_reg_Mcount_r_q_cy(7)
    );
  sh_graph_reg_Mcount_r_q_xor_7_Q : XORCY
    port map (
      CI => sh_graph_reg_Mcount_r_q_cy(6),
      LI => sh_graph_reg_Mcount_r_q_cy_7_rt_748,
      O => Result_7_1
    );
  sh_graph_reg_Mcount_r_q_cy_8_Q : MUXCY
    port map (
      CI => sh_graph_reg_Mcount_r_q_cy(7),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => sh_graph_reg_Mcount_r_q_cy_8_rt_749,
      O => sh_graph_reg_Mcount_r_q_cy(8)
    );
  sh_graph_reg_Mcount_r_q_xor_8_Q : XORCY
    port map (
      CI => sh_graph_reg_Mcount_r_q_cy(7),
      LI => sh_graph_reg_Mcount_r_q_cy_8_rt_749,
      O => Result_8_1
    );
  sh_graph_reg_Mcount_r_q_cy_9_Q : MUXCY
    port map (
      CI => sh_graph_reg_Mcount_r_q_cy(8),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => sh_graph_reg_Mcount_r_q_cy_9_rt_750,
      O => sh_graph_reg_Mcount_r_q_cy(9)
    );
  sh_graph_reg_Mcount_r_q_xor_9_Q : XORCY
    port map (
      CI => sh_graph_reg_Mcount_r_q_cy(8),
      LI => sh_graph_reg_Mcount_r_q_cy_9_rt_750,
      O => Result_9_1
    );
  sh_graph_reg_Mcount_r_q_cy_10_Q : MUXCY
    port map (
      CI => sh_graph_reg_Mcount_r_q_cy(9),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => sh_graph_reg_Mcount_r_q_cy_10_rt_751,
      O => sh_graph_reg_Mcount_r_q_cy(10)
    );
  sh_graph_reg_Mcount_r_q_xor_10_Q : XORCY
    port map (
      CI => sh_graph_reg_Mcount_r_q_cy(9),
      LI => sh_graph_reg_Mcount_r_q_cy_10_rt_751,
      O => Result_10_1
    );
  sh_graph_reg_Mcount_r_q_cy_11_Q : MUXCY
    port map (
      CI => sh_graph_reg_Mcount_r_q_cy(10),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => sh_graph_reg_Mcount_r_q_cy_11_rt_752,
      O => sh_graph_reg_Mcount_r_q_cy(11)
    );
  sh_graph_reg_Mcount_r_q_xor_11_Q : XORCY
    port map (
      CI => sh_graph_reg_Mcount_r_q_cy(10),
      LI => sh_graph_reg_Mcount_r_q_cy_11_rt_752,
      O => Result_11_1
    );
  sh_graph_reg_Mcount_r_q_cy_12_Q : MUXCY
    port map (
      CI => sh_graph_reg_Mcount_r_q_cy(11),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => sh_graph_reg_Mcount_r_q_cy_12_rt_753,
      O => sh_graph_reg_Mcount_r_q_cy(12)
    );
  sh_graph_reg_Mcount_r_q_xor_12_Q : XORCY
    port map (
      CI => sh_graph_reg_Mcount_r_q_cy(11),
      LI => sh_graph_reg_Mcount_r_q_cy_12_rt_753,
      O => Result_12_1
    );
  sh_graph_reg_Mcount_r_q_cy_13_Q : MUXCY
    port map (
      CI => sh_graph_reg_Mcount_r_q_cy(12),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => sh_graph_reg_Mcount_r_q_cy_13_rt_754,
      O => sh_graph_reg_Mcount_r_q_cy(13)
    );
  sh_graph_reg_Mcount_r_q_xor_13_Q : XORCY
    port map (
      CI => sh_graph_reg_Mcount_r_q_cy(12),
      LI => sh_graph_reg_Mcount_r_q_cy_13_rt_754,
      O => Result_13_1
    );
  sh_graph_reg_Mcount_r_q_cy_14_Q : MUXCY
    port map (
      CI => sh_graph_reg_Mcount_r_q_cy(13),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => sh_graph_reg_Mcount_r_q_cy_14_rt_755,
      O => sh_graph_reg_Mcount_r_q_cy(14)
    );
  sh_graph_reg_Mcount_r_q_xor_14_Q : XORCY
    port map (
      CI => sh_graph_reg_Mcount_r_q_cy(13),
      LI => sh_graph_reg_Mcount_r_q_cy_14_rt_755,
      O => Result_14_1
    );
  sh_graph_reg_Mcount_r_q_cy_15_Q : MUXCY
    port map (
      CI => sh_graph_reg_Mcount_r_q_cy(14),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => sh_graph_reg_Mcount_r_q_cy_15_rt_756,
      O => sh_graph_reg_Mcount_r_q_cy(15)
    );
  sh_graph_reg_Mcount_r_q_xor_15_Q : XORCY
    port map (
      CI => sh_graph_reg_Mcount_r_q_cy(14),
      LI => sh_graph_reg_Mcount_r_q_cy_15_rt_756,
      O => Result_15_1
    );
  sh_graph_reg_Mcount_r_q_cy_16_Q : MUXCY
    port map (
      CI => sh_graph_reg_Mcount_r_q_cy(15),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => sh_graph_reg_Mcount_r_q_cy_16_rt_757,
      O => sh_graph_reg_Mcount_r_q_cy(16)
    );
  sh_graph_reg_Mcount_r_q_xor_16_Q : XORCY
    port map (
      CI => sh_graph_reg_Mcount_r_q_cy(15),
      LI => sh_graph_reg_Mcount_r_q_cy_16_rt_757,
      O => Result_16_1
    );
  sh_graph_reg_Mcount_r_q_cy_17_Q : MUXCY
    port map (
      CI => sh_graph_reg_Mcount_r_q_cy(16),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => sh_graph_reg_Mcount_r_q_cy_17_rt_758,
      O => sh_graph_reg_Mcount_r_q_cy(17)
    );
  sh_graph_reg_Mcount_r_q_xor_17_Q : XORCY
    port map (
      CI => sh_graph_reg_Mcount_r_q_cy(16),
      LI => sh_graph_reg_Mcount_r_q_cy_17_rt_758,
      O => Result_17_1
    );
  sh_graph_reg_Mcount_r_q_cy_18_Q : MUXCY
    port map (
      CI => sh_graph_reg_Mcount_r_q_cy(17),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => sh_graph_reg_Mcount_r_q_cy_18_rt_759,
      O => sh_graph_reg_Mcount_r_q_cy(18)
    );
  sh_graph_reg_Mcount_r_q_xor_18_Q : XORCY
    port map (
      CI => sh_graph_reg_Mcount_r_q_cy(17),
      LI => sh_graph_reg_Mcount_r_q_cy_18_rt_759,
      O => Result_18_1
    );
  sh_graph_reg_Mcount_r_q_xor_19_Q : XORCY
    port map (
      CI => sh_graph_reg_Mcount_r_q_cy(18),
      LI => sh_graph_reg_Mcount_r_q_xor_19_rt_801,
      O => Result_19_1
    );
  graphics_reg_Mcount_r_q_cy_0_Q : MUXCY
    port map (
      CI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      DI => pixel_we,
      S => graphics_reg_Mcount_r_q_lut(0),
      O => graphics_reg_Mcount_r_q_cy(0)
    );
  graphics_reg_Mcount_r_q_xor_0_Q : XORCY
    port map (
      CI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      LI => graphics_reg_Mcount_r_q_lut(0),
      O => Result(0)
    );
  graphics_reg_Mcount_r_q_cy_1_Q : MUXCY
    port map (
      CI => graphics_reg_Mcount_r_q_cy(0),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => graphics_reg_Mcount_r_q_cy_1_rt_760,
      O => graphics_reg_Mcount_r_q_cy(1)
    );
  graphics_reg_Mcount_r_q_xor_1_Q : XORCY
    port map (
      CI => graphics_reg_Mcount_r_q_cy(0),
      LI => graphics_reg_Mcount_r_q_cy_1_rt_760,
      O => Result(1)
    );
  graphics_reg_Mcount_r_q_cy_2_Q : MUXCY
    port map (
      CI => graphics_reg_Mcount_r_q_cy(1),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => graphics_reg_Mcount_r_q_cy_2_rt_761,
      O => graphics_reg_Mcount_r_q_cy(2)
    );
  graphics_reg_Mcount_r_q_xor_2_Q : XORCY
    port map (
      CI => graphics_reg_Mcount_r_q_cy(1),
      LI => graphics_reg_Mcount_r_q_cy_2_rt_761,
      O => Result(2)
    );
  graphics_reg_Mcount_r_q_cy_3_Q : MUXCY
    port map (
      CI => graphics_reg_Mcount_r_q_cy(2),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => graphics_reg_Mcount_r_q_cy_3_rt_762,
      O => graphics_reg_Mcount_r_q_cy(3)
    );
  graphics_reg_Mcount_r_q_xor_3_Q : XORCY
    port map (
      CI => graphics_reg_Mcount_r_q_cy(2),
      LI => graphics_reg_Mcount_r_q_cy_3_rt_762,
      O => Result(3)
    );
  graphics_reg_Mcount_r_q_cy_4_Q : MUXCY
    port map (
      CI => graphics_reg_Mcount_r_q_cy(3),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => graphics_reg_Mcount_r_q_cy_4_rt_763,
      O => graphics_reg_Mcount_r_q_cy(4)
    );
  graphics_reg_Mcount_r_q_xor_4_Q : XORCY
    port map (
      CI => graphics_reg_Mcount_r_q_cy(3),
      LI => graphics_reg_Mcount_r_q_cy_4_rt_763,
      O => Result(4)
    );
  graphics_reg_Mcount_r_q_cy_5_Q : MUXCY
    port map (
      CI => graphics_reg_Mcount_r_q_cy(4),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => graphics_reg_Mcount_r_q_cy_5_rt_764,
      O => graphics_reg_Mcount_r_q_cy(5)
    );
  graphics_reg_Mcount_r_q_xor_5_Q : XORCY
    port map (
      CI => graphics_reg_Mcount_r_q_cy(4),
      LI => graphics_reg_Mcount_r_q_cy_5_rt_764,
      O => Result(5)
    );
  graphics_reg_Mcount_r_q_cy_6_Q : MUXCY
    port map (
      CI => graphics_reg_Mcount_r_q_cy(5),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => graphics_reg_Mcount_r_q_cy_6_rt_765,
      O => graphics_reg_Mcount_r_q_cy(6)
    );
  graphics_reg_Mcount_r_q_xor_6_Q : XORCY
    port map (
      CI => graphics_reg_Mcount_r_q_cy(5),
      LI => graphics_reg_Mcount_r_q_cy_6_rt_765,
      O => Result(6)
    );
  graphics_reg_Mcount_r_q_cy_7_Q : MUXCY
    port map (
      CI => graphics_reg_Mcount_r_q_cy(6),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => graphics_reg_Mcount_r_q_cy_7_rt_766,
      O => graphics_reg_Mcount_r_q_cy(7)
    );
  graphics_reg_Mcount_r_q_xor_7_Q : XORCY
    port map (
      CI => graphics_reg_Mcount_r_q_cy(6),
      LI => graphics_reg_Mcount_r_q_cy_7_rt_766,
      O => Result(7)
    );
  graphics_reg_Mcount_r_q_cy_8_Q : MUXCY
    port map (
      CI => graphics_reg_Mcount_r_q_cy(7),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => graphics_reg_Mcount_r_q_cy_8_rt_767,
      O => graphics_reg_Mcount_r_q_cy(8)
    );
  graphics_reg_Mcount_r_q_xor_8_Q : XORCY
    port map (
      CI => graphics_reg_Mcount_r_q_cy(7),
      LI => graphics_reg_Mcount_r_q_cy_8_rt_767,
      O => Result(8)
    );
  graphics_reg_Mcount_r_q_cy_9_Q : MUXCY
    port map (
      CI => graphics_reg_Mcount_r_q_cy(8),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => graphics_reg_Mcount_r_q_cy_9_rt_768,
      O => graphics_reg_Mcount_r_q_cy(9)
    );
  graphics_reg_Mcount_r_q_xor_9_Q : XORCY
    port map (
      CI => graphics_reg_Mcount_r_q_cy(8),
      LI => graphics_reg_Mcount_r_q_cy_9_rt_768,
      O => Result(9)
    );
  graphics_reg_Mcount_r_q_cy_10_Q : MUXCY
    port map (
      CI => graphics_reg_Mcount_r_q_cy(9),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => graphics_reg_Mcount_r_q_cy_10_rt_769,
      O => graphics_reg_Mcount_r_q_cy(10)
    );
  graphics_reg_Mcount_r_q_xor_10_Q : XORCY
    port map (
      CI => graphics_reg_Mcount_r_q_cy(9),
      LI => graphics_reg_Mcount_r_q_cy_10_rt_769,
      O => Result(10)
    );
  graphics_reg_Mcount_r_q_cy_11_Q : MUXCY
    port map (
      CI => graphics_reg_Mcount_r_q_cy(10),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => graphics_reg_Mcount_r_q_cy_11_rt_770,
      O => graphics_reg_Mcount_r_q_cy(11)
    );
  graphics_reg_Mcount_r_q_xor_11_Q : XORCY
    port map (
      CI => graphics_reg_Mcount_r_q_cy(10),
      LI => graphics_reg_Mcount_r_q_cy_11_rt_770,
      O => Result(11)
    );
  graphics_reg_Mcount_r_q_cy_12_Q : MUXCY
    port map (
      CI => graphics_reg_Mcount_r_q_cy(11),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => graphics_reg_Mcount_r_q_cy_12_rt_771,
      O => graphics_reg_Mcount_r_q_cy(12)
    );
  graphics_reg_Mcount_r_q_xor_12_Q : XORCY
    port map (
      CI => graphics_reg_Mcount_r_q_cy(11),
      LI => graphics_reg_Mcount_r_q_cy_12_rt_771,
      O => Result(12)
    );
  graphics_reg_Mcount_r_q_xor_13_Q : XORCY
    port map (
      CI => graphics_reg_Mcount_r_q_cy(12),
      LI => graphics_reg_Mcount_r_q_xor_13_rt_802,
      O => Result(13)
    );
  Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_2_Q : MUXCY
    port map (
      CI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      DI => pixel_we,
      S => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_lut_2_Q,
      O => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_2_Q_492
    );
  Madd_pixel_row_r_15_GND_5_o_add_70_OUT_xor_2_Q : XORCY
    port map (
      CI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      LI => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_lut_2_Q,
      O => pixel_row_r_15_GND_5_o_add_70_OUT_2_Q
    );
  Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_3_Q : MUXCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_2_Q_492,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_3_rt_772,
      O => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_3_Q_493
    );
  Madd_pixel_row_r_15_GND_5_o_add_70_OUT_xor_3_Q : XORCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_2_Q_492,
      LI => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_3_rt_772,
      O => pixel_row_r_15_GND_5_o_add_70_OUT_3_Q
    );
  Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_4_Q : MUXCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_3_Q_493,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_4_rt_773,
      O => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_4_Q_494
    );
  Madd_pixel_row_r_15_GND_5_o_add_70_OUT_xor_4_Q : XORCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_3_Q_493,
      LI => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_4_rt_773,
      O => pixel_row_r_15_GND_5_o_add_70_OUT_4_Q
    );
  Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_5_Q : MUXCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_4_Q_494,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_5_rt_774,
      O => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_5_Q_495
    );
  Madd_pixel_row_r_15_GND_5_o_add_70_OUT_xor_5_Q : XORCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_4_Q_494,
      LI => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_5_rt_774,
      O => pixel_row_r_15_GND_5_o_add_70_OUT_5_Q
    );
  Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_6_Q : MUXCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_5_Q_495,
      DI => pixel_we,
      S => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_lut_6_Q,
      O => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_6_Q_497
    );
  Madd_pixel_row_r_15_GND_5_o_add_70_OUT_xor_6_Q : XORCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_5_Q_495,
      LI => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_lut_6_Q,
      O => pixel_row_r_15_GND_5_o_add_70_OUT_6_Q
    );
  Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_7_Q : MUXCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_6_Q_497,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_7_rt_775,
      O => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_7_Q_498
    );
  Madd_pixel_row_r_15_GND_5_o_add_70_OUT_xor_7_Q : XORCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_6_Q_497,
      LI => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_7_rt_775,
      O => pixel_row_r_15_GND_5_o_add_70_OUT_7_Q
    );
  Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_8_Q : MUXCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_7_Q_498,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_8_rt_776,
      O => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_8_Q_499
    );
  Madd_pixel_row_r_15_GND_5_o_add_70_OUT_xor_8_Q : XORCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_7_Q_498,
      LI => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_8_rt_776,
      O => pixel_row_r_15_GND_5_o_add_70_OUT_8_Q
    );
  Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_9_Q : MUXCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_8_Q_499,
      DI => pixel_we,
      S => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_lut_9_Q,
      O => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_9_Q_501
    );
  Madd_pixel_row_r_15_GND_5_o_add_70_OUT_xor_9_Q : XORCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_8_Q_499,
      LI => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_lut_9_Q,
      O => pixel_row_r_15_GND_5_o_add_70_OUT_9_Q
    );
  Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_10_Q : MUXCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_9_Q_501,
      DI => pixel_we,
      S => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_lut_10_Q,
      O => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_10_Q_503
    );
  Madd_pixel_row_r_15_GND_5_o_add_70_OUT_xor_10_Q : XORCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_9_Q_501,
      LI => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_lut_10_Q,
      O => pixel_row_r_15_GND_5_o_add_70_OUT_10_Q
    );
  Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_11_Q : MUXCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_10_Q_503,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_11_rt_777,
      O => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_11_Q_504
    );
  Madd_pixel_row_r_15_GND_5_o_add_70_OUT_xor_11_Q : XORCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_10_Q_503,
      LI => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_11_rt_777,
      O => pixel_row_r_15_GND_5_o_add_70_OUT_11_Q
    );
  Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_12_Q : MUXCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_11_Q_504,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_12_rt_778,
      O => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_12_Q_505
    );
  Madd_pixel_row_r_15_GND_5_o_add_70_OUT_xor_12_Q : XORCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_11_Q_504,
      LI => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_12_rt_778,
      O => pixel_row_r_15_GND_5_o_add_70_OUT_12_Q
    );
  Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_13_Q : MUXCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_12_Q_505,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_13_rt_779,
      O => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_13_Q_506
    );
  Madd_pixel_row_r_15_GND_5_o_add_70_OUT_xor_13_Q : XORCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_12_Q_505,
      LI => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_13_rt_779,
      O => pixel_row_r_15_GND_5_o_add_70_OUT_13_Q
    );
  Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_14_Q : MUXCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_13_Q_506,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_14_rt_780,
      O => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_14_Q_507
    );
  Madd_pixel_row_r_15_GND_5_o_add_70_OUT_xor_14_Q : XORCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_13_Q_506,
      LI => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_14_rt_780,
      O => pixel_row_r_15_GND_5_o_add_70_OUT_14_Q
    );
  Madd_pixel_row_r_15_GND_5_o_add_70_OUT_xor_15_Q : XORCY
    port map (
      CI => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_14_Q_507,
      LI => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_xor_15_rt_803,
      O => pixel_row_r_15_GND_5_o_add_70_OUT_15_Q
    );
  Mcompar_pixel_address_19_GND_5_o_equal_70_o_lut_0_Q : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => pixel_address(0),
      I1 => row_reg_r_q(0),
      I2 => pixel_address(1),
      I3 => row_reg_r_q(1),
      I4 => pixel_address(2),
      I5 => row_reg_r_q(2),
      O => Mcompar_pixel_address_19_GND_5_o_equal_70_o_lut_0_Q_508
    );
  Mcompar_pixel_address_19_GND_5_o_equal_70_o_cy_0_Q : MUXCY
    port map (
      CI => pixel_we,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Mcompar_pixel_address_19_GND_5_o_equal_70_o_lut_0_Q_508,
      O => Mcompar_pixel_address_19_GND_5_o_equal_70_o_cy_0_Q_509
    );
  Mcompar_pixel_address_19_GND_5_o_equal_70_o_lut_1_Q : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => pixel_address(3),
      I1 => row_reg_r_q(3),
      I2 => pixel_address(4),
      I3 => row_reg_r_q(4),
      I4 => pixel_address(5),
      I5 => row_reg_r_q(5),
      O => Mcompar_pixel_address_19_GND_5_o_equal_70_o_lut_1_Q_510
    );
  Mcompar_pixel_address_19_GND_5_o_equal_70_o_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_pixel_address_19_GND_5_o_equal_70_o_cy_0_Q_509,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Mcompar_pixel_address_19_GND_5_o_equal_70_o_lut_1_Q_510,
      O => Mcompar_pixel_address_19_GND_5_o_equal_70_o_cy_1_Q_511
    );
  Mcompar_pixel_address_19_GND_5_o_equal_70_o_lut_2_Q : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => pixel_address(6),
      I1 => row_reg_r_q(6),
      I2 => pixel_address(7),
      I3 => row_reg_r_q(7),
      I4 => pixel_address(8),
      I5 => row_reg_r_q(8),
      O => Mcompar_pixel_address_19_GND_5_o_equal_70_o_lut_2_Q_512
    );
  Mcompar_pixel_address_19_GND_5_o_equal_70_o_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_pixel_address_19_GND_5_o_equal_70_o_cy_1_Q_511,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Mcompar_pixel_address_19_GND_5_o_equal_70_o_lut_2_Q_512,
      O => Mcompar_pixel_address_19_GND_5_o_equal_70_o_cy_2_Q_513
    );
  Mcompar_pixel_address_19_GND_5_o_equal_70_o_lut_3_Q : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => pixel_address(9),
      I1 => row_reg_r_q(9),
      I2 => pixel_address(10),
      I3 => row_reg_r_q(10),
      I4 => pixel_address(11),
      I5 => row_reg_r_q(11),
      O => Mcompar_pixel_address_19_GND_5_o_equal_70_o_lut_3_Q_514
    );
  Mcompar_pixel_address_19_GND_5_o_equal_70_o_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_pixel_address_19_GND_5_o_equal_70_o_cy_2_Q_513,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Mcompar_pixel_address_19_GND_5_o_equal_70_o_lut_3_Q_514,
      O => Mcompar_pixel_address_19_GND_5_o_equal_70_o_cy_3_Q_515
    );
  Mcompar_pixel_address_19_GND_5_o_equal_70_o_lut_4_Q : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => pixel_address(12),
      I1 => row_reg_r_q(12),
      I2 => pixel_address(13),
      I3 => row_reg_r_q(13),
      I4 => pixel_address(14),
      I5 => row_reg_r_q(14),
      O => Mcompar_pixel_address_19_GND_5_o_equal_70_o_lut_4_Q_516
    );
  Mcompar_pixel_address_19_GND_5_o_equal_70_o_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_pixel_address_19_GND_5_o_equal_70_o_cy_3_Q_515,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Mcompar_pixel_address_19_GND_5_o_equal_70_o_lut_4_Q_516,
      O => Mcompar_pixel_address_19_GND_5_o_equal_70_o_cy_4_Q_517
    );
  Mcompar_pixel_address_19_GND_5_o_equal_70_o_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_pixel_address_19_GND_5_o_equal_70_o_cy_4_Q_517,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Mcompar_pixel_address_19_GND_5_o_equal_70_o_lut_5_Q,
      O => pixel_address_19_GND_5_o_equal_70_o
    );
  Mcompar_pixel_address_19_GND_5_o_equal_72_o_lut_0_Q : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => pixel_address(0),
      I1 => row_reg_r_q(0),
      I2 => pixel_address(1),
      I3 => row_reg_r_q(1),
      I4 => pixel_address(2),
      I5 => pixel_row_r_15_GND_5_o_add_70_OUT_2_Q,
      O => Mcompar_pixel_address_19_GND_5_o_equal_72_o_lut_0_Q_519
    );
  Mcompar_pixel_address_19_GND_5_o_equal_72_o_cy_0_Q : MUXCY
    port map (
      CI => pixel_we,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Mcompar_pixel_address_19_GND_5_o_equal_72_o_lut_0_Q_519,
      O => Mcompar_pixel_address_19_GND_5_o_equal_72_o_cy_0_Q_520
    );
  Mcompar_pixel_address_19_GND_5_o_equal_72_o_lut_1_Q : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => pixel_address(3),
      I1 => pixel_row_r_15_GND_5_o_add_70_OUT_3_Q,
      I2 => pixel_address(4),
      I3 => pixel_row_r_15_GND_5_o_add_70_OUT_4_Q,
      I4 => pixel_address(5),
      I5 => pixel_row_r_15_GND_5_o_add_70_OUT_5_Q,
      O => Mcompar_pixel_address_19_GND_5_o_equal_72_o_lut_1_Q_521
    );
  Mcompar_pixel_address_19_GND_5_o_equal_72_o_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_pixel_address_19_GND_5_o_equal_72_o_cy_0_Q_520,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Mcompar_pixel_address_19_GND_5_o_equal_72_o_lut_1_Q_521,
      O => Mcompar_pixel_address_19_GND_5_o_equal_72_o_cy_1_Q_522
    );
  Mcompar_pixel_address_19_GND_5_o_equal_72_o_lut_2_Q : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => pixel_address(6),
      I1 => pixel_row_r_15_GND_5_o_add_70_OUT_6_Q,
      I2 => pixel_address(7),
      I3 => pixel_row_r_15_GND_5_o_add_70_OUT_7_Q,
      I4 => pixel_address(8),
      I5 => pixel_row_r_15_GND_5_o_add_70_OUT_8_Q,
      O => Mcompar_pixel_address_19_GND_5_o_equal_72_o_lut_2_Q_523
    );
  Mcompar_pixel_address_19_GND_5_o_equal_72_o_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_pixel_address_19_GND_5_o_equal_72_o_cy_1_Q_522,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Mcompar_pixel_address_19_GND_5_o_equal_72_o_lut_2_Q_523,
      O => Mcompar_pixel_address_19_GND_5_o_equal_72_o_cy_2_Q_524
    );
  Mcompar_pixel_address_19_GND_5_o_equal_72_o_lut_3_Q : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => pixel_address(9),
      I1 => pixel_row_r_15_GND_5_o_add_70_OUT_9_Q,
      I2 => pixel_address(10),
      I3 => pixel_row_r_15_GND_5_o_add_70_OUT_10_Q,
      I4 => pixel_address(11),
      I5 => pixel_row_r_15_GND_5_o_add_70_OUT_11_Q,
      O => Mcompar_pixel_address_19_GND_5_o_equal_72_o_lut_3_Q_525
    );
  Mcompar_pixel_address_19_GND_5_o_equal_72_o_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_pixel_address_19_GND_5_o_equal_72_o_cy_2_Q_524,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Mcompar_pixel_address_19_GND_5_o_equal_72_o_lut_3_Q_525,
      O => Mcompar_pixel_address_19_GND_5_o_equal_72_o_cy_3_Q_526
    );
  Mcompar_pixel_address_19_GND_5_o_equal_72_o_lut_4_Q : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => pixel_address(12),
      I1 => pixel_row_r_15_GND_5_o_add_70_OUT_12_Q,
      I2 => pixel_address(13),
      I3 => pixel_row_r_15_GND_5_o_add_70_OUT_13_Q,
      I4 => pixel_address(14),
      I5 => pixel_row_r_15_GND_5_o_add_70_OUT_14_Q,
      O => Mcompar_pixel_address_19_GND_5_o_equal_72_o_lut_4_Q_527
    );
  Mcompar_pixel_address_19_GND_5_o_equal_72_o_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_pixel_address_19_GND_5_o_equal_72_o_cy_3_Q_526,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Mcompar_pixel_address_19_GND_5_o_equal_72_o_lut_4_Q_527,
      O => Mcompar_pixel_address_19_GND_5_o_equal_72_o_cy_4_Q_528
    );
  Mcompar_pixel_address_19_GND_5_o_equal_72_o_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_pixel_address_19_GND_5_o_equal_72_o_cy_4_Q_528,
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Mcompar_pixel_address_19_GND_5_o_equal_72_o_lut_5_Q,
      O => pixel_address_19_GND_5_o_equal_72_o
    );
  clk5m_inst : ODDR2
    generic map(
      DDR_ALIGNMENT => "NONE",
      SRTYPE => "SYNC",
      INIT => '0'
    )
    port map (
      D0 => pixel_we,
      D1 => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      C0 => vga_top_i_vga_i_clk_s,
      C1 => pix_clock_n,
      CE => pixel_we,
      R => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      Q => pix_clock_o_OBUF_92
    );
  vga_top_i_vga_i_SRL16_inst : SRL16
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => pixel_we,
      A1 => pixel_we,
      A2 => pixel_we,
      A3 => pixel_we,
      CLK => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_locked_s,
      Q => vga_top_i_vga_i_locked_del_s
    );
  vga_top_i_vga_i_res_1_dcm25_i_clkout1_buf : BUFG
    port map (
      O => vga_top_i_vga_i_clk_s,
      I => vga_top_i_vga_i_res_1_dcm25_i_clkfx
    );
  vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst : DCM_SP
    generic map(
      CLKDV_DIVIDE => 2.000000,
      CLKFX_DIVIDE => 27,
      CLKFX_MULTIPLY => 25,
      CLKIN_DIVIDE_BY_2 => FALSE,
      CLKIN_PERIOD => 37.037000,
      CLKOUT_PHASE_SHIFT => "NONE",
      CLK_FEEDBACK => "NONE",
      DESKEW_ADJUST => "SYSTEM_SYNCHRONOUS",
      DFS_FREQUENCY_MODE => "LOW",
      DLL_FREQUENCY_MODE => "LOW",
      DSS_MODE => "NONE",
      DUTY_CYCLE_CORRECTION => TRUE,
      FACTORY_JF => X"0000",
      PHASE_SHIFT => 0,
      STARTUP_WAIT => FALSE
    )
    port map (
      CLK2X180 => NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_CLK2X180_UNCONNECTED,
      PSCLK => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      CLK2X => NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_CLK2X_UNCONNECTED,
      CLKFX => vga_top_i_vga_i_res_1_dcm25_i_clkfx,
      CLK180 => NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_CLK180_UNCONNECTED,
      CLK270 => NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_CLK270_UNCONNECTED,
      RST => vga_top_i_vga_i_rst_n_i_inv,
      PSINCDEC => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      CLKIN => vga_top_i_vga_i_res_1_dcm25_i_clkin1,
      CLKFB => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      PSEN => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      CLK0 => NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_CLK0_UNCONNECTED,
      CLKFX180 => NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_CLKFX180_UNCONNECTED,
      CLKDV => NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_CLKDV_UNCONNECTED,
      PSDONE => NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_PSDONE_UNCONNECTED,
      CLK90 => NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_CLK90_UNCONNECTED,
      LOCKED => vga_top_i_vga_i_locked_s,
      DSSEN => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      STATUS(7) => NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_STATUS_7_UNCONNECTED,
      STATUS(6) => NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_STATUS_6_UNCONNECTED,
      STATUS(5) => NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_STATUS_5_UNCONNECTED,
      STATUS(4) => NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_STATUS_4_UNCONNECTED,
      STATUS(3) => NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_STATUS_3_UNCONNECTED,
      STATUS(2) => NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_STATUS_2_UNCONNECTED,
      STATUS(1) => NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_STATUS_1_UNCONNECTED,
      STATUS(0) => NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_STATUS_0_UNCONNECTED
    );
  vga_top_i_vga_i_res_1_dcm25_i_clkin1_buf : IBUFG
    generic map(
      CAPACITANCE => "DONT_CARE",
      IBUF_DELAY_VALUE => "0",
      IBUF_LOW_PWR => TRUE,
      IOSTANDARD => "DEFAULT"
    )
    port map (
      I => clk_i,
      O => vga_top_i_vga_i_res_1_dcm25_i_clkin1
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_xor_9_Q : XORCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(8),
      LI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_xor_9_rt_804,
      O => vga_top_i_vga_i_vga_sync_i_Result(9)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_xor_8_Q : XORCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(7),
      LI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_8_rt_781,
      O => vga_top_i_vga_i_vga_sync_i_Result(8)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_8_Q : MUXCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(7),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_8_rt_781,
      O => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(8)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_xor_7_Q : XORCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(6),
      LI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_7_rt_782,
      O => vga_top_i_vga_i_vga_sync_i_Result(7)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_7_Q : MUXCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(6),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_7_rt_782,
      O => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(7)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_xor_6_Q : XORCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(5),
      LI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_6_rt_783,
      O => vga_top_i_vga_i_vga_sync_i_Result(6)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_6_Q : MUXCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(5),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_6_rt_783,
      O => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(6)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_xor_5_Q : XORCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(4),
      LI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_5_rt_784,
      O => vga_top_i_vga_i_vga_sync_i_Result(5)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_5_Q : MUXCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(4),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_5_rt_784,
      O => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(5)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_xor_4_Q : XORCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(3),
      LI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_4_rt_785,
      O => vga_top_i_vga_i_vga_sync_i_Result(4)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_4_Q : MUXCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(3),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_4_rt_785,
      O => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(4)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_xor_3_Q : XORCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(2),
      LI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_3_rt_786,
      O => vga_top_i_vga_i_vga_sync_i_Result(3)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_3_Q : MUXCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(2),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_3_rt_786,
      O => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(3)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_xor_2_Q : XORCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(1),
      LI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_2_rt_787,
      O => vga_top_i_vga_i_vga_sync_i_Result(2)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_2_Q : MUXCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(1),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_2_rt_787,
      O => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(2)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_xor_1_Q : XORCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(0),
      LI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_1_rt_788,
      O => vga_top_i_vga_i_vga_sync_i_Result(1)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_1_Q : MUXCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(0),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_1_rt_788,
      O => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(1)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_xor_0_Q : XORCY
    port map (
      CI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      LI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_lut(0),
      O => vga_top_i_vga_i_vga_sync_i_Result(0)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_0_Q : MUXCY
    port map (
      CI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      DI => pixel_we,
      S => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_lut(0),
      O => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(0)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_xor_9_Q : XORCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(8),
      LI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_xor_9_rt_805,
      O => vga_top_i_vga_i_vga_sync_i_Result_9_1
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_xor_8_Q : XORCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(7),
      LI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_8_rt_789,
      O => vga_top_i_vga_i_vga_sync_i_Result_8_1
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_8_Q : MUXCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(7),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_8_rt_789,
      O => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(8)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_xor_7_Q : XORCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(6),
      LI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_7_rt_790,
      O => vga_top_i_vga_i_vga_sync_i_Result_7_1
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_7_Q : MUXCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(6),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_7_rt_790,
      O => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(7)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_xor_6_Q : XORCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(5),
      LI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_6_rt_791,
      O => vga_top_i_vga_i_vga_sync_i_Result_6_1
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_6_Q : MUXCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(5),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_6_rt_791,
      O => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(6)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_xor_5_Q : XORCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(4),
      LI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_5_rt_792,
      O => vga_top_i_vga_i_vga_sync_i_Result_5_1
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_5_Q : MUXCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(4),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_5_rt_792,
      O => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(5)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_xor_4_Q : XORCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(3),
      LI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_4_rt_793,
      O => vga_top_i_vga_i_vga_sync_i_Result_4_1
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_4_Q : MUXCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(3),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_4_rt_793,
      O => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(4)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_xor_3_Q : XORCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(2),
      LI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_3_rt_794,
      O => vga_top_i_vga_i_vga_sync_i_Result_3_1
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_3_Q : MUXCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(2),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_3_rt_794,
      O => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(3)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_xor_2_Q : XORCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(1),
      LI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_2_rt_795,
      O => vga_top_i_vga_i_vga_sync_i_Result_2_1
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_2_Q : MUXCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(1),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_2_rt_795,
      O => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(2)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_xor_1_Q : XORCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(0),
      LI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_1_rt_796,
      O => vga_top_i_vga_i_vga_sync_i_Result_1_1
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_1_Q : MUXCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(0),
      DI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      S => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_1_rt_796,
      O => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(1)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_xor_0_Q : XORCY
    port map (
      CI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      LI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_lut(0),
      O => vga_top_i_vga_i_vga_sync_i_Result_0_1
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_0_Q : MUXCY
    port map (
      CI => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      DI => pixel_we,
      S => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_lut(0),
      O => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(0)
    );
  vga_top_i_vga_i_vga_sync_i_h_count_r_0 : FDR
    port map (
      C => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_vga_sync_i_Result_0_1,
      R => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_val_567,
      Q => vga_top_i_vga_i_vga_sync_i_h_count_r(0)
    );
  vga_top_i_vga_i_vga_sync_i_v_count_r_0 : FDRE
    port map (
      C => vga_top_i_vga_i_clk_s,
      CE => vga_top_i_vga_i_vga_sync_i_GND_16_o_BUS_0008_equal_24_o_585,
      D => vga_top_i_vga_i_vga_sync_i_Result(0),
      R => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_val_578,
      Q => vga_top_i_vga_i_vga_sync_i_v_count_r(0)
    );
  vga_top_i_vga_i_vga_sync_i_h_count_r_9 : FDR
    port map (
      C => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_vga_sync_i_Result_9_1,
      R => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_val_567,
      Q => vga_top_i_vga_i_vga_sync_i_h_count_r(9)
    );
  vga_top_i_vga_i_vga_sync_i_h_count_r_8 : FDR
    port map (
      C => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_vga_sync_i_Result_8_1,
      R => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_val_567,
      Q => vga_top_i_vga_i_vga_sync_i_h_count_r(8)
    );
  vga_top_i_vga_i_vga_sync_i_h_count_r_7 : FDR
    port map (
      C => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_vga_sync_i_Result_7_1,
      R => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_val_567,
      Q => vga_top_i_vga_i_vga_sync_i_h_count_r(7)
    );
  vga_top_i_vga_i_vga_sync_i_h_count_r_6 : FDR
    port map (
      C => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_vga_sync_i_Result_6_1,
      R => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_val_567,
      Q => vga_top_i_vga_i_vga_sync_i_h_count_r(6)
    );
  vga_top_i_vga_i_vga_sync_i_h_count_r_5 : FDR
    port map (
      C => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_vga_sync_i_Result_5_1,
      R => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_val_567,
      Q => vga_top_i_vga_i_vga_sync_i_h_count_r(5)
    );
  vga_top_i_vga_i_vga_sync_i_h_count_r_3 : FDR
    port map (
      C => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_vga_sync_i_Result_3_1,
      R => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_val_567,
      Q => vga_top_i_vga_i_vga_sync_i_h_count_r(3)
    );
  vga_top_i_vga_i_vga_sync_i_h_count_r_2 : FDR
    port map (
      C => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_vga_sync_i_Result_2_1,
      R => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_val_567,
      Q => vga_top_i_vga_i_vga_sync_i_h_count_r(2)
    );
  vga_top_i_vga_i_vga_sync_i_h_count_r_4 : FDR
    port map (
      C => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_vga_sync_i_Result_4_1,
      R => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_val_567,
      Q => vga_top_i_vga_i_vga_sync_i_h_count_r(4)
    );
  vga_top_i_vga_i_vga_sync_i_h_count_r_1 : FDR
    port map (
      C => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_vga_sync_i_Result_1_1,
      R => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_val_567,
      Q => vga_top_i_vga_i_vga_sync_i_h_count_r(1)
    );
  vga_top_i_vga_i_vga_sync_i_v_count_r_9 : FDRE
    port map (
      C => vga_top_i_vga_i_clk_s,
      CE => vga_top_i_vga_i_vga_sync_i_GND_16_o_BUS_0008_equal_24_o_585,
      D => vga_top_i_vga_i_vga_sync_i_Result(9),
      R => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_val_578,
      Q => vga_top_i_vga_i_vga_sync_i_v_count_r(9)
    );
  vga_top_i_vga_i_vga_sync_i_v_count_r_8 : FDRE
    port map (
      C => vga_top_i_vga_i_clk_s,
      CE => vga_top_i_vga_i_vga_sync_i_GND_16_o_BUS_0008_equal_24_o_585,
      D => vga_top_i_vga_i_vga_sync_i_Result(8),
      R => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_val_578,
      Q => vga_top_i_vga_i_vga_sync_i_v_count_r(8)
    );
  vga_top_i_vga_i_vga_sync_i_v_count_r_6 : FDRE
    port map (
      C => vga_top_i_vga_i_clk_s,
      CE => vga_top_i_vga_i_vga_sync_i_GND_16_o_BUS_0008_equal_24_o_585,
      D => vga_top_i_vga_i_vga_sync_i_Result(6),
      R => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_val_578,
      Q => vga_top_i_vga_i_vga_sync_i_v_count_r(6)
    );
  vga_top_i_vga_i_vga_sync_i_v_count_r_5 : FDRE
    port map (
      C => vga_top_i_vga_i_clk_s,
      CE => vga_top_i_vga_i_vga_sync_i_GND_16_o_BUS_0008_equal_24_o_585,
      D => vga_top_i_vga_i_vga_sync_i_Result(5),
      R => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_val_578,
      Q => vga_top_i_vga_i_vga_sync_i_v_count_r(5)
    );
  vga_top_i_vga_i_vga_sync_i_v_count_r_7 : FDRE
    port map (
      C => vga_top_i_vga_i_clk_s,
      CE => vga_top_i_vga_i_vga_sync_i_GND_16_o_BUS_0008_equal_24_o_585,
      D => vga_top_i_vga_i_vga_sync_i_Result(7),
      R => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_val_578,
      Q => vga_top_i_vga_i_vga_sync_i_v_count_r(7)
    );
  vga_top_i_vga_i_vga_sync_i_v_count_r_4 : FDRE
    port map (
      C => vga_top_i_vga_i_clk_s,
      CE => vga_top_i_vga_i_vga_sync_i_GND_16_o_BUS_0008_equal_24_o_585,
      D => vga_top_i_vga_i_vga_sync_i_Result(4),
      R => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_val_578,
      Q => vga_top_i_vga_i_vga_sync_i_v_count_r(4)
    );
  vga_top_i_vga_i_vga_sync_i_v_count_r_3 : FDRE
    port map (
      C => vga_top_i_vga_i_clk_s,
      CE => vga_top_i_vga_i_vga_sync_i_GND_16_o_BUS_0008_equal_24_o_585,
      D => vga_top_i_vga_i_vga_sync_i_Result(3),
      R => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_val_578,
      Q => vga_top_i_vga_i_vga_sync_i_v_count_r(3)
    );
  vga_top_i_vga_i_vga_sync_i_v_count_r_2 : FDRE
    port map (
      C => vga_top_i_vga_i_clk_s,
      CE => vga_top_i_vga_i_vga_sync_i_GND_16_o_BUS_0008_equal_24_o_585,
      D => vga_top_i_vga_i_vga_sync_i_Result(2),
      R => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_val_578,
      Q => vga_top_i_vga_i_vga_sync_i_v_count_r(2)
    );
  vga_top_i_vga_i_vga_sync_i_v_count_r_1 : FDRE
    port map (
      C => vga_top_i_vga_i_clk_s,
      CE => vga_top_i_vga_i_vga_sync_i_GND_16_o_BUS_0008_equal_24_o_585,
      D => vga_top_i_vga_i_vga_sync_i_Result(1),
      R => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_val_578,
      Q => vga_top_i_vga_i_vga_sync_i_v_count_r(1)
    );
  vga_top_i_vga_i_vga_sync_i_vert_sync_out_r : FDR
    port map (
      C => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_vga_sync_i_vert_sync_out_d_r_590,
      R => colon_reg_in_rst_inv,
      Q => vga_top_i_vga_i_vga_sync_i_vert_sync_out_r_15
    );
  vga_top_i_vga_i_vga_sync_i_horiz_sync_out_r : FDR
    port map (
      C => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_vga_sync_i_horiz_sync_out_d_r_591,
      R => colon_reg_in_rst_inv,
      Q => vga_top_i_vga_i_vga_sync_i_horiz_sync_out_r_14
    );
  vga_top_i_vga_i_vga_sync_i_vert_sync_out_d_r : FDR
    port map (
      C => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_vga_sync_i_vert_sync_r_586,
      R => colon_reg_in_rst_inv,
      Q => vga_top_i_vga_i_vga_sync_i_vert_sync_out_d_r_590
    );
  vga_top_i_vga_i_vga_sync_i_horiz_sync_out_d_r : FDR
    port map (
      C => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_vga_sync_i_horiz_sync_r_587,
      R => colon_reg_in_rst_inv,
      Q => vga_top_i_vga_i_vga_sync_i_horiz_sync_out_d_r_591
    );
  vga_top_i_vga_i_vga_sync_i_sync_r : FDR
    port map (
      C => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_vga_sync_i_sync_d_r_588,
      R => colon_reg_in_rst_inv,
      Q => vga_top_i_vga_i_vga_sync_i_sync_r_20
    );
  vga_top_i_vga_i_vga_sync_i_blank_r : FDR
    port map (
      C => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_vga_sync_i_blank_d_r_589,
      R => colon_reg_in_rst_inv,
      Q => vga_top_i_vga_i_vga_sync_i_blank_r_16
    );
  vga_top_i_vga_i_vga_sync_i_psave_r : FDR
    port map (
      C => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_vga_sync_i_psave_d_r_592,
      R => colon_reg_in_rst_inv,
      Q => vga_top_i_vga_i_vga_sync_i_psave_r_19
    );
  vga_top_i_vga_i_vga_sync_i_vert_sync_r : FDSE
    port map (
      C => vga_top_i_vga_i_clk_s,
      CE => vga_top_i_vga_i_vga_sync_i_GND_16_o_BUS_0008_equal_24_o_585,
      D => vga_top_i_vga_i_vga_sync_i_GND_16_o_INV_26_o_580,
      S => colon_reg_in_rst_inv,
      Q => vga_top_i_vga_i_vga_sync_i_vert_sync_r_586
    );
  vga_top_i_vga_i_vga_sync_i_horiz_sync_r : FDS
    port map (
      C => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_vga_sync_i_GND_16_o_INV_22_o,
      S => colon_reg_in_rst_inv,
      Q => vga_top_i_vga_i_vga_sync_i_horiz_sync_r_587
    );
  vga_top_i_vga_i_vga_sync_i_sync_d_r : FDR
    port map (
      C => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_vga_sync_i_horiz_sync_r_587,
      R => vga_top_i_vga_i_vga_sync_i_vert_sync_r_0,
      Q => vga_top_i_vga_i_vga_sync_i_sync_d_r_588
    );
  vga_top_i_vga_i_vga_sync_i_blank_d_r : FDR
    port map (
      C => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_vga_sync_i_enable_s,
      R => colon_reg_in_rst_inv,
      Q => vga_top_i_vga_i_vga_sync_i_blank_d_r_589
    );
  vga_top_i_vga_i_vga_sync_i_psave_d_r : FD
    port map (
      C => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_locked_del_reg_r_18,
      Q => vga_top_i_vga_i_vga_sync_i_psave_d_r_592
    );
  mem_reg_r_q_13 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => char_address(13),
      Q => mem_reg_r_q(13)
    );
  mem_reg_r_q_12 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => char_address(12),
      Q => mem_reg_r_q(12)
    );
  mem_reg_r_q_11 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => char_address(11),
      Q => mem_reg_r_q(11)
    );
  mem_reg_r_q_10 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => char_address(10),
      Q => mem_reg_r_q(10)
    );
  mem_reg_r_q_9 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => char_address(9),
      Q => mem_reg_r_q(9)
    );
  mem_reg_r_q_8 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => char_address(8),
      Q => mem_reg_r_q(8)
    );
  mem_reg_r_q_7 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => char_address(7),
      Q => mem_reg_r_q(7)
    );
  mem_reg_r_q_6 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => char_address(6),
      Q => mem_reg_r_q(6)
    );
  mem_reg_r_q_5 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => char_address(5),
      Q => mem_reg_r_q(5)
    );
  mem_reg_r_q_4 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => char_address(4),
      Q => mem_reg_r_q(4)
    );
  mem_reg_r_q_3 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => char_address(3),
      Q => mem_reg_r_q(3)
    );
  mem_reg_r_q_2 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => char_address(2),
      Q => mem_reg_r_q(2)
    );
  mem_reg_r_q_1 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => char_address(1),
      Q => mem_reg_r_q(1)
    );
  mem_reg_r_q_0 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => char_address(0),
      Q => mem_reg_r_q(0)
    );
  row_reg_r_q_15 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => pixel_row(15),
      Q => row_reg_r_q(15)
    );
  row_reg_r_q_14 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => pixel_row(14),
      Q => row_reg_r_q(14)
    );
  row_reg_r_q_13 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => pixel_row(13),
      Q => row_reg_r_q(13)
    );
  row_reg_r_q_12 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => pixel_row(12),
      Q => row_reg_r_q(12)
    );
  row_reg_r_q_11 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => pixel_row(11),
      Q => row_reg_r_q(11)
    );
  row_reg_r_q_10 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => pixel_row(10),
      Q => row_reg_r_q(10)
    );
  row_reg_r_q_9 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => pixel_row(9),
      Q => row_reg_r_q(9)
    );
  row_reg_r_q_8 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => pixel_row(8),
      Q => row_reg_r_q(8)
    );
  row_reg_r_q_7 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => pixel_row(7),
      Q => row_reg_r_q(7)
    );
  row_reg_r_q_6 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => pixel_row(6),
      Q => row_reg_r_q(6)
    );
  row_reg_r_q_5 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => pixel_row(5),
      Q => row_reg_r_q(5)
    );
  row_reg_r_q_4 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => pixel_row(4),
      Q => row_reg_r_q(4)
    );
  row_reg_r_q_3 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => pixel_row(3),
      Q => row_reg_r_q(3)
    );
  row_reg_r_q_2 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => pixel_row(2),
      Q => row_reg_r_q(2)
    );
  row_reg_r_q_1 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => pixel_row(1),
      Q => row_reg_r_q(1)
    );
  row_reg_r_q_0 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => pixel_row(0),
      Q => row_reg_r_q(0)
    );
  colon_reg_r_q_2 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => pixel_colon(2),
      Q => colon_reg_r_q(2)
    );
  colon_reg_r_q_1 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => pixel_colon(1),
      Q => colon_reg_r_q(1)
    );
  colon_reg_r_q_0 : FDC
    port map (
      C => vga_top_i_vga_i_clk_s,
      CLR => colon_reg_in_rst_inv,
      D => pixel_colon(0),
      Q => colon_reg_r_q(0)
    );
  Mmux_char_value11 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => GND_5_o_run_s_0_OR_57_o,
      I1 => char_reg_r_q(1),
      O => char_value(0)
    );
  Mmux_draw_i11 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => pixel_address_19_GND_5_o_equal_72_o,
      I1 => draw_reg_r_q_0_91,
      I2 => pixel_address_19_GND_5_o_equal_70_o,
      O => draw_i
    );
  Mmux_char_address103 : LUT6
    generic map(
      INIT => X"FEFAEEAAFCF0CC00"
    )
    port map (
      I0 => mem_reg_r_q(5),
      I1 => GND_5_o_GND_5_o_sub_51_OUT(5),
      I2 => mem_r_13_GND_5_o_add_51_OUT_5_Q,
      I3 => Mmux_char_address15,
      I4 => Mmux_char_address101,
      I5 => Mmux_char_address102,
      O => char_address(5)
    );
  Mmux_char_address141 : LUT6
    generic map(
      INIT => X"FEFAEEAAFCF0CC00"
    )
    port map (
      I0 => mem_reg_r_q(9),
      I1 => GND_5_o_GND_5_o_sub_51_OUT(9),
      I2 => mem_r_13_GND_5_o_add_51_OUT_9_Q,
      I3 => Mmux_char_address15,
      I4 => Mmux_char_address101,
      I5 => Mmux_char_address102,
      O => char_address(9)
    );
  Mmux_char_address131 : LUT6
    generic map(
      INIT => X"FEFAEEAAFCF0CC00"
    )
    port map (
      I0 => mem_reg_r_q(8),
      I1 => GND_5_o_GND_5_o_sub_51_OUT(8),
      I2 => mem_r_13_GND_5_o_add_51_OUT_8_Q,
      I3 => Mmux_char_address15,
      I4 => Mmux_char_address101,
      I5 => Mmux_char_address102,
      O => char_address(8)
    );
  Mmux_char_address31 : LUT6
    generic map(
      INIT => X"FEFAEEAAFCF0CC00"
    )
    port map (
      I0 => mem_reg_r_q(11),
      I1 => GND_5_o_GND_5_o_sub_51_OUT(11),
      I2 => mem_r_13_GND_5_o_add_51_OUT_11_Q,
      I3 => Mmux_char_address15,
      I4 => Mmux_char_address101,
      I5 => Mmux_char_address102,
      O => char_address(11)
    );
  Mmux_char_address121 : LUT6
    generic map(
      INIT => X"FEFAEEAAFCF0CC00"
    )
    port map (
      I0 => mem_reg_r_q(7),
      I1 => GND_5_o_GND_5_o_sub_51_OUT(7),
      I2 => mem_r_13_GND_5_o_add_51_OUT_7_Q,
      I3 => Mmux_char_address15,
      I4 => Mmux_char_address101,
      I5 => Mmux_char_address102,
      O => char_address(7)
    );
  Mmux_char_address81 : LUT6
    generic map(
      INIT => X"FEFAEEAAFCF0CC00"
    )
    port map (
      I0 => mem_reg_r_q(3),
      I1 => GND_5_o_GND_5_o_sub_51_OUT(3),
      I2 => mem_r_13_GND_5_o_add_51_OUT_3_Q,
      I3 => Mmux_char_address15,
      I4 => Mmux_char_address101,
      I5 => Mmux_char_address102,
      O => char_address(3)
    );
  Mmux_char_address71 : LUT6
    generic map(
      INIT => X"FEFAEEAAFCF0CC00"
    )
    port map (
      I0 => mem_reg_r_q(2),
      I1 => GND_5_o_GND_5_o_sub_51_OUT(2),
      I2 => mem_r_13_GND_5_o_add_51_OUT_2_Q,
      I3 => Mmux_char_address15,
      I4 => Mmux_char_address101,
      I5 => Mmux_char_address102,
      O => char_address(2)
    );
  Mmux_char_address91 : LUT6
    generic map(
      INIT => X"FEFAEEAAFCF0CC00"
    )
    port map (
      I0 => mem_reg_r_q(4),
      I1 => GND_5_o_GND_5_o_sub_51_OUT(4),
      I2 => mem_r_13_GND_5_o_add_51_OUT_4_Q,
      I3 => Mmux_char_address15,
      I4 => Mmux_char_address101,
      I5 => Mmux_char_address102,
      O => char_address(4)
    );
  Mmux_char_address61 : LUT6
    generic map(
      INIT => X"FEFAEEAAFCF0CC00"
    )
    port map (
      I0 => mem_reg_r_q(1),
      I1 => GND_5_o_GND_5_o_sub_51_OUT(1),
      I2 => mem_r_13_GND_5_o_add_51_OUT_1_Q,
      I3 => Mmux_char_address15,
      I4 => Mmux_char_address101,
      I5 => Mmux_char_address102,
      O => char_address(1)
    );
  Mmux_char_address51 : LUT6
    generic map(
      INIT => X"FEEEFAAAFCCCF000"
    )
    port map (
      I0 => mem_reg_r_q(13),
      I1 => GND_5_o_GND_5_o_sub_51_OUT(13),
      I2 => mem_r_13_GND_5_o_add_51_OUT_13_Q,
      I3 => Mmux_char_address101,
      I4 => Mmux_char_address15,
      I5 => Mmux_char_address102,
      O => char_address(13)
    );
  Mmux_char_address41 : LUT6
    generic map(
      INIT => X"FEFAEEAAFCF0CC00"
    )
    port map (
      I0 => mem_reg_r_q(12),
      I1 => GND_5_o_GND_5_o_sub_51_OUT(12),
      I2 => mem_r_13_GND_5_o_add_51_OUT_12_Q,
      I3 => Mmux_char_address15,
      I4 => Mmux_char_address101,
      I5 => Mmux_char_address102,
      O => char_address(12)
    );
  Mmux_char_address21 : LUT6
    generic map(
      INIT => X"FEFAEEAAFCF0CC00"
    )
    port map (
      I0 => mem_reg_r_q(10),
      I1 => GND_5_o_GND_5_o_sub_51_OUT(10),
      I2 => mem_r_13_GND_5_o_add_51_OUT_10_Q,
      I3 => Mmux_char_address15,
      I4 => Mmux_char_address101,
      I5 => Mmux_char_address102,
      O => char_address(10)
    );
  Mmux_char_address111 : LUT6
    generic map(
      INIT => X"FEFAEEAAFCF0CC00"
    )
    port map (
      I0 => mem_reg_r_q(6),
      I1 => GND_5_o_GND_5_o_sub_51_OUT(6),
      I2 => mem_r_13_GND_5_o_add_51_OUT_6_Q,
      I3 => Mmux_char_address15,
      I4 => Mmux_char_address101,
      I5 => Mmux_char_address102,
      O => char_address(6)
    );
  draw_r_0_GND_5_o_AND_144_o1 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => draw_reg_r_q_0_91,
      I1 => colon_reg_r_q(0),
      I2 => colon_reg_r_q(1),
      I3 => colon_reg_r_q(2),
      O => draw_r_0_GND_5_o_AND_144_o
    );
  Mmux_char_address11 : LUT6
    generic map(
      INIT => X"ECEECCCCA0AA0000"
    )
    port map (
      I0 => mem_reg_r_q(0),
      I1 => mem_r_13_GND_5_o_add_51_OUT_0_Q,
      I2 => GND_5_o_GND_5_o_equal_50_o,
      I3 => print_sig,
      I4 => Mmux_char_address1021,
      I5 => Mmux_char_address101,
      O => char_address(0)
    );
  char_reg_Mcount_r_q_xor_1_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => char_reg_r_q(1),
      I1 => char_reg_r_q(0),
      I2 => print_sig,
      O => char_reg_Mcount_r_q1
    );
  Mmux_char_value21 : LUT3
    generic map(
      INIT => X"51"
    )
    port map (
      I0 => GND_5_o_run_s_0_OR_57_o,
      I1 => char_reg_r_q(0),
      I2 => char_reg_r_q(1),
      O => char_value(1)
    );
  GND_5_o_GND_5_o_equal_50_o_19_1 : LUT5
    generic map(
      INIT => X"00800000"
    )
    port map (
      I0 => GND_5_o_GND_5_o_equal_50_o_19_1_534,
      I1 => sh_graph_reg_r_q(0),
      I2 => sh_graph_reg_r_q(1),
      I3 => sh_graph_reg_r_q(2),
      I4 => print_sig2_536,
      O => GND_5_o_GND_5_o_equal_50_o
    );
  print_sig31 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => sh_graph_reg_r_q(12),
      I1 => sh_graph_reg_r_q(17),
      I2 => sh_graph_reg_r_q(16),
      I3 => sh_graph_reg_r_q(14),
      I4 => sh_graph_reg_r_q(15),
      I5 => sh_graph_reg_r_q(13),
      O => GND_5_o_GND_5_o_equal_50_o_19_1_534
    );
  print_sig1 : LUT5
    generic map(
      INIT => X"78000000"
    )
    port map (
      I0 => sh_graph_reg_r_q(1),
      I1 => sh_graph_reg_r_q(0),
      I2 => sh_graph_reg_r_q(2),
      I3 => GND_5_o_GND_5_o_equal_50_o_19_1_534,
      I4 => print_sig2_536,
      O => print_sig
    );
  Mmux_char_address1022 : LUT6
    generic map(
      INIT => X"87FFFFFF00000000"
    )
    port map (
      I0 => sh_graph_reg_r_q(0),
      I1 => sh_graph_reg_r_q(1),
      I2 => sh_graph_reg_r_q(2),
      I3 => GND_5_o_GND_5_o_equal_50_o_19_1_534,
      I4 => print_sig2_536,
      I5 => Mmux_char_address1021,
      O => Mmux_char_address102
    );
  Mmux_char_address1011 : LUT6
    generic map(
      INIT => X"FF00FF8FFF00FF00"
    )
    port map (
      I0 => run_reg_r_q_0_37,
      I1 => mem_reg_r_q(0),
      I2 => GND_5_o_GND_5_o_equal_48_o_13_1,
      I3 => run_s_0_mem_r_13_AND_140_o,
      I4 => GND_5_o_GND_5_o_equal_50_o,
      I5 => print_sig,
      O => Mmux_char_address101
    );
  vga_top_i_vga_i_vga_sync_i_GND_16_o_INV_22_o1 : LUT6
    generic map(
      INIT => X"FFFFFFFFF777777F"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_h_count_r(7),
      I1 => vga_top_i_vga_i_vga_sync_i_h_count_r(9),
      I2 => vga_top_i_vga_i_vga_sync_i_h_count_r(6),
      I3 => vga_top_i_vga_i_vga_sync_i_h_count_r(5),
      I4 => vga_top_i_vga_i_vga_sync_i_h_count_r(4),
      I5 => vga_top_i_vga_i_vga_sync_i_h_count_r(8),
      O => vga_top_i_vga_i_vga_sync_i_GND_16_o_INV_22_o
    );
  vga_top_i_vga_i_vga_sync_i_vert_sync_r11 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_vert_sync_r_586,
      I1 => vga_top_i_vga_i_locked_del_reg_r_18,
      O => vga_top_i_vga_i_vga_sync_i_vert_sync_r_0
    );
  GND_5_o_GND_5_o_equal_67_o_19_1 : LUT6
    generic map(
      INIT => X"1000000000000000"
    )
    port map (
      I0 => graphics_reg_r_q(0),
      I1 => graphics_reg_r_q(1),
      I2 => graphics_reg_r_q(13),
      I3 => graphics_reg_r_q(10),
      I4 => graphics_reg_r_q(8),
      I5 => graphics_reg_r_q(7),
      O => GND_5_o_GND_5_o_equal_67_o_0(19)
    );
  GND_5_o_GND_5_o_equal_67_o_19_2 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => graphics_reg_r_q(3),
      I1 => graphics_reg_r_q(2),
      I2 => graphics_reg_r_q(4),
      I3 => graphics_reg_r_q(5),
      I4 => graphics_reg_r_q(6),
      I5 => graphics_reg_r_q(9),
      O => GND_5_o_GND_5_o_equal_67_o_19_1_624
    );
  GND_5_o_GND_5_o_equal_67_o_19_3 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => GND_5_o_GND_5_o_equal_67_o_0(19),
      I1 => GND_5_o_GND_5_o_equal_67_o_19_1_624,
      I2 => graphics_reg_r_q(12),
      I3 => graphics_reg_r_q(11),
      O => GND_5_o_GND_5_o_equal_67_o
    );
  GND_5_o_GND_5_o_AND_143_o1 : LUT6
    generic map(
      INIT => X"4000000000000000"
    )
    port map (
      I0 => row_reg_r_q(0),
      I1 => row_reg_r_q(4),
      I2 => row_reg_r_q(12),
      I3 => row_reg_r_q(9),
      I4 => row_reg_r_q(7),
      I5 => row_reg_r_q(6),
      O => GND_5_o_GND_5_o_AND_143_o1_625
    );
  GND_5_o_GND_5_o_AND_143_o2 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => row_reg_r_q(2),
      I1 => row_reg_r_q(1),
      I2 => row_reg_r_q(3),
      I3 => row_reg_r_q(5),
      I4 => row_reg_r_q(8),
      I5 => row_reg_r_q(10),
      O => GND_5_o_GND_5_o_AND_143_o2_626
    );
  GND_5_o_GND_5_o_AND_143_o3 : LUT6
    generic map(
      INIT => X"0000000000000008"
    )
    port map (
      I0 => GND_5_o_GND_5_o_AND_143_o1_625,
      I1 => GND_5_o_GND_5_o_AND_143_o2_626,
      I2 => row_reg_r_q(13),
      I3 => row_reg_r_q(11),
      I4 => row_reg_r_q(14),
      I5 => row_reg_r_q(15),
      O => GND_5_o_GND_5_o_AND_143_o3_627
    );
  GND_5_o_GND_5_o_equal_80_o_19_1 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => sh_graph_cnt(5),
      I1 => sh_graph_cnt(4),
      I2 => sh_graph_cnt(3),
      I3 => sh_graph_cnt(2),
      I4 => sh_graph_cnt(1),
      I5 => sh_graph_cnt(0),
      O => GND_5_o_GND_5_o_equal_80_o_1(19)
    );
  GND_5_o_GND_5_o_equal_80_o_19_2 : LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => sh_graph_cnt(15),
      I1 => sh_graph_cnt(14),
      I2 => sh_graph_cnt(13),
      I3 => sh_graph_cnt(12),
      I4 => GND_5_o_GND_5_o_equal_80_o_1(19),
      O => GND_5_o_GND_5_o_equal_80_o_19_1_629
    );
  GND_5_o_GND_5_o_equal_80_o_19_3 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => sh_graph_cnt(11),
      I1 => sh_graph_cnt(10),
      I2 => sh_graph_cnt(9),
      I3 => sh_graph_cnt(8),
      I4 => sh_graph_cnt(7),
      I5 => sh_graph_cnt(6),
      O => GND_5_o_GND_5_o_equal_80_o_19_2_630
    );
  GND_5_o_GND_5_o_equal_80_o_19_4 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => GND_5_o_GND_5_o_equal_80_o_19_1_629,
      I1 => sh_graph_cnt(19),
      I2 => sh_graph_cnt(18),
      I3 => sh_graph_cnt(17),
      I4 => sh_graph_cnt(16),
      I5 => GND_5_o_GND_5_o_equal_80_o_19_2_630,
      O => GND_5_o_GND_5_o_equal_80_o
    );
  vga_top_i_text_mem_i_index_t_30_GND_27_o_LessThan_5_o1_SW0 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => vga_top_i_txt_rom_addr_c(8),
      I1 => vga_top_i_txt_rom_addr_c(7),
      I2 => vga_top_i_txt_rom_addr_c(6),
      O => N11
    );
  print_sig2_SW0 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => sh_graph_reg_r_q(3),
      I1 => sh_graph_reg_r_q(4),
      I2 => sh_graph_reg_r_q(5),
      I3 => sh_graph_reg_r_q(8),
      I4 => sh_graph_reg_r_q(6),
      I5 => sh_graph_reg_r_q(19),
      O => N13
    );
  print_sig2 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => sh_graph_reg_r_q(11),
      I1 => sh_graph_reg_r_q(10),
      I2 => sh_graph_reg_r_q(9),
      I3 => sh_graph_reg_r_q(7),
      I4 => sh_graph_reg_r_q(18),
      I5 => N13,
      O => print_sig2_536
    );
  run_s_0_mem_r_13_AND_140_o1 : LUT6
    generic map(
      INIT => X"77777777777F77FF"
    )
    port map (
      I0 => mem_reg_r_q(4),
      I1 => mem_reg_r_q(5),
      I2 => mem_reg_r_q(1),
      I3 => mem_reg_r_q(3),
      I4 => mem_reg_r_q(0),
      I5 => mem_reg_r_q(2),
      O => run_s_0_mem_r_13_AND_140_o1_633
    );
  run_s_0_mem_r_13_AND_140_o2 : LUT6
    generic map(
      INIT => X"5555557F5555555F"
    )
    port map (
      I0 => mem_reg_r_q(10),
      I1 => mem_reg_r_q(6),
      I2 => mem_reg_r_q(7),
      I3 => mem_reg_r_q(9),
      I4 => mem_reg_r_q(8),
      I5 => run_s_0_mem_r_13_AND_140_o1_633,
      O => run_s_0_mem_r_13_AND_140_o2_634
    );
  run_s_0_mem_r_13_AND_140_o3 : LUT5
    generic map(
      INIT => X"00010000"
    )
    port map (
      I0 => mem_reg_r_q(11),
      I1 => mem_reg_r_q(12),
      I2 => mem_reg_r_q(13),
      I3 => run_reg_r_q_0_37,
      I4 => run_s_0_mem_r_13_AND_140_o2_634,
      O => run_s_0_mem_r_13_AND_140_o
    );
  GND_5_o_GND_5_o_equal_48_o_13_11 : LUT6
    generic map(
      INIT => X"4000000000000000"
    )
    port map (
      I0 => mem_reg_r_q(13),
      I1 => mem_reg_r_q(7),
      I2 => mem_reg_r_q(10),
      I3 => mem_reg_r_q(1),
      I4 => mem_reg_r_q(4),
      I5 => mem_reg_r_q(5),
      O => GND_5_o_GND_5_o_equal_48_o_13_11_635
    );
  GND_5_o_GND_5_o_equal_48_o_13_12 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => mem_reg_r_q(12),
      I1 => mem_reg_r_q(11),
      I2 => mem_reg_r_q(9),
      I3 => mem_reg_r_q(8),
      I4 => mem_reg_r_q(6),
      I5 => mem_reg_r_q(3),
      O => GND_5_o_GND_5_o_equal_48_o_13_12_636
    );
  GND_5_o_GND_5_o_equal_48_o_13_13 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => GND_5_o_GND_5_o_equal_48_o_13_12_636,
      I1 => mem_reg_r_q(2),
      I2 => GND_5_o_GND_5_o_equal_48_o_13_11_635,
      O => GND_5_o_GND_5_o_equal_48_o_13_1
    );
  vga_top_i_vga_i_vga_sync_i_GND_16_o_BUS_0008_equal_24_o_SW0 : LUT5
    generic map(
      INIT => X"FFFDFFFF"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_h_count_r(6),
      I1 => vga_top_i_vga_i_vga_sync_i_h_count_r(0),
      I2 => vga_top_i_vga_i_vga_sync_i_h_count_r(2),
      I3 => vga_top_i_vga_i_vga_sync_i_h_count_r(1),
      I4 => vga_top_i_vga_i_vga_sync_i_h_count_r(5),
      O => N15
    );
  vga_top_i_vga_i_vga_sync_i_GND_16_o_BUS_0008_equal_24_o : LUT6
    generic map(
      INIT => X"0000000000200000"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_h_count_r(9),
      I1 => vga_top_i_vga_i_vga_sync_i_h_count_r(8),
      I2 => vga_top_i_vga_i_vga_sync_i_h_count_r(4),
      I3 => vga_top_i_vga_i_vga_sync_i_h_count_r(3),
      I4 => vga_top_i_vga_i_vga_sync_i_h_count_r(7),
      I5 => N15,
      O => vga_top_i_vga_i_vga_sync_i_GND_16_o_BUS_0008_equal_24_o_585
    );
  vga_top_i_vga_i_vga_sync_i_active_frame1 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_v_count_r(7),
      I1 => vga_top_i_vga_i_vga_sync_i_v_count_r(8),
      I2 => vga_top_i_vga_i_vga_sync_i_v_count_r(6),
      I3 => vga_top_i_vga_i_vga_sync_i_v_count_r(5),
      I4 => vga_top_i_vga_i_vga_sync_i_v_count_r(4),
      I5 => vga_top_i_vga_i_vga_sync_i_v_count_r(3),
      O => vga_top_i_vga_i_vga_sync_i_active_frame1_638
    );
  vga_top_i_vga_i_vga_sync_i_active_frame2 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_v_count_r(6),
      I1 => vga_top_i_vga_i_vga_sync_i_v_count_r(7),
      I2 => vga_top_i_vga_i_vga_sync_i_v_count_r(8),
      O => vga_top_i_vga_i_vga_sync_i_active_frame2_639
    );
  vga_top_i_vga_i_vga_sync_i_active_frame3 : LUT6
    generic map(
      INIT => X"FFFFFFFFA8888888"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_active_frame2_639,
      I1 => vga_top_i_vga_i_vga_sync_i_v_count_r(5),
      I2 => vga_top_i_vga_i_vga_sync_i_v_count_r(2),
      I3 => vga_top_i_vga_i_vga_sync_i_v_count_r(3),
      I4 => vga_top_i_vga_i_vga_sync_i_v_count_r(4),
      I5 => vga_top_i_vga_i_vga_sync_i_v_count_r(9),
      O => vga_top_i_vga_i_vga_sync_i_active_frame3_640
    );
  vga_top_i_vga_i_vga_sync_i_active_frame4 : LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_h_count_r(5),
      I1 => vga_top_i_vga_i_vga_sync_i_h_count_r(6),
      I2 => vga_top_i_vga_i_vga_sync_i_h_count_r(2),
      I3 => vga_top_i_vga_i_vga_sync_i_h_count_r(3),
      I4 => vga_top_i_vga_i_vga_sync_i_h_count_r(4),
      O => vga_top_i_vga_i_vga_sync_i_active_frame4_641
    );
  vga_top_i_vga_i_vga_sync_i_active_frame5 : LUT5
    generic map(
      INIT => X"FFFFAAA8"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_h_count_r(9),
      I1 => vga_top_i_vga_i_vga_sync_i_h_count_r(7),
      I2 => vga_top_i_vga_i_vga_sync_i_h_count_r(8),
      I3 => vga_top_i_vga_i_vga_sync_i_active_frame4_641,
      I4 => vga_top_i_vga_i_vga_sync_i_active_frame3_640,
      O => vga_top_i_vga_i_vga_sync_i_active_frame5_642
    );
  vga_top_i_vga_i_vga_sync_i_active_frame6 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_h_count_r(8),
      I1 => vga_top_i_vga_i_vga_sync_i_h_count_r(9),
      I2 => vga_top_i_vga_i_vga_sync_i_h_count_r(7),
      I3 => vga_top_i_vga_i_vga_sync_i_h_count_r(6),
      I4 => vga_top_i_vga_i_vga_sync_i_h_count_r(5),
      I5 => vga_top_i_vga_i_vga_sync_i_h_count_r(4),
      O => vga_top_i_vga_i_vga_sync_i_active_frame6_643
    );
  vga_top_i_vga_i_vga_sync_i_active_frame7 : LUT6
    generic map(
      INIT => X"AAAEAAAEFFFFAAAE"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_active_frame5_642,
      I1 => vga_top_i_vga_i_vga_sync_i_active_frame6_643,
      I2 => vga_top_i_vga_i_vga_sync_i_h_count_r(2),
      I3 => vga_top_i_vga_i_vga_sync_i_h_count_r(3),
      I4 => vga_top_i_vga_i_vga_sync_i_active_frame1_638,
      I5 => vga_top_i_vga_i_vga_sync_i_v_count_r(2),
      O => vga_top_i_vga_i_vga_sync_i_active_frame
    );
  vga_top_i_vga_i_vga_sync_i_h_pixels_10_v_lines_10_OR_16_o_SW0 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_h_count_r(9),
      I1 => vga_top_i_vga_i_vga_sync_i_h_count_r(8),
      I2 => vga_top_i_vga_i_vga_sync_i_h_count_r(7),
      O => N17
    );
  vga_top_i_vga_i_vga_sync_i_h_pixels_10_v_lines_10_OR_16_o : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF8000"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_v_count_r(8),
      I1 => vga_top_i_vga_i_vga_sync_i_v_count_r(7),
      I2 => vga_top_i_vga_i_vga_sync_i_v_count_r(6),
      I3 => vga_top_i_vga_i_vga_sync_i_v_count_r(5),
      I4 => vga_top_i_vga_i_vga_sync_i_v_count_r(9),
      I5 => N17,
      O => vga_top_i_vga_i_vga_sync_i_h_pixels_10_v_lines_10_OR_16_o_584
    );
  vga_top_i_vga_i_vga_sync_i_GND_16_o_INV_26_o_SW0 : LUT5
    generic map(
      INIT => X"FFFFBDFF"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_v_count_r(2),
      I1 => vga_top_i_vga_i_vga_sync_i_v_count_r(0),
      I2 => vga_top_i_vga_i_vga_sync_i_v_count_r(1),
      I3 => vga_top_i_vga_i_vga_sync_i_v_count_r(3),
      I4 => vga_top_i_vga_i_vga_sync_i_v_count_r(4),
      O => N19
    );
  vga_top_i_vga_i_vga_sync_i_GND_16_o_INV_26_o : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF7FFF"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_v_count_r(8),
      I1 => vga_top_i_vga_i_vga_sync_i_v_count_r(7),
      I2 => vga_top_i_vga_i_vga_sync_i_v_count_r(6),
      I3 => vga_top_i_vga_i_vga_sync_i_v_count_r(5),
      I4 => vga_top_i_vga_i_vga_sync_i_v_count_r(9),
      I5 => N19,
      O => vga_top_i_vga_i_vga_sync_i_GND_16_o_INV_26_o_580
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_val_SW0 : LUT5
    generic map(
      INIT => X"FFFFFEEE"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_v_count_r(4),
      I1 => vga_top_i_vga_i_vga_sync_i_v_count_r(6),
      I2 => vga_top_i_vga_i_vga_sync_i_v_count_r(3),
      I3 => vga_top_i_vga_i_vga_sync_i_v_count_r(2),
      I4 => vga_top_i_vga_i_vga_sync_i_v_count_r(5),
      O => N21
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_val : LUT6
    generic map(
      INIT => X"88888880FFFFFFFF"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_v_count_r(9),
      I1 => vga_top_i_vga_i_vga_sync_i_GND_16_o_BUS_0008_equal_24_o_585,
      I2 => N21,
      I3 => vga_top_i_vga_i_vga_sync_i_v_count_r(8),
      I4 => vga_top_i_vga_i_vga_sync_i_v_count_r(7),
      I5 => vga_top_i_vga_i_locked_del_reg_r_18,
      O => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_val_578
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_val_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_h_count_r(7),
      I1 => vga_top_i_vga_i_vga_sync_i_h_count_r(6),
      I2 => vga_top_i_vga_i_vga_sync_i_h_count_r(5),
      O => N23
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_val : LUT6
    generic map(
      INIT => X"88808080FFFFFFFF"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_h_count_r(9),
      I1 => vga_top_i_vga_i_vga_sync_i_h_count_r(8),
      I2 => N23,
      I3 => vga_top_i_vga_i_vga_sync_i_h_count_r(4),
      I4 => vga_top_i_vga_i_vga_sync_i_h_count_r(3),
      I5 => vga_top_i_vga_i_locked_del_reg_r_18,
      O => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_val_567
    );
  vga_top_i_graphics_mem_i_index_0_t_30_GND_45_o_LessThan_8_o1_SW0 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => vga_top_i_graph_pixel_addr_c(14),
      I1 => vga_top_i_graph_pixel_addr_c(13),
      I2 => vga_top_i_graph_pixel_addr_c(12),
      O => N25
    );
  vga_top_i_graphics_mem_i_index_2_t_30_GND_45_o_LessThan_14_o21 : LUT6
    generic map(
      INIT => X"000000000000557F"
    )
    port map (
      I0 => pixel_address(10),
      I1 => pixel_address(7),
      I2 => pixel_address(8),
      I3 => pixel_address(9),
      I4 => pixel_address(11),
      I5 => pixel_address(12),
      O => vga_top_i_graphics_mem_i_index_2_t_30_GND_45_o_LessThan_14_o2
    );
  reset_n_i_IBUF : IBUF
    port map (
      I => reset_n_i,
      O => reset_n_i_IBUF_1
    );
  red_o_7_OBUF : OBUF
    port map (
      I => vga_top_i_vga_i_vga_sync_i_red_r(0),
      O => red_o(7)
    );
  red_o_6_OBUF : OBUF
    port map (
      I => vga_top_i_vga_i_vga_sync_i_red_r(0),
      O => red_o(6)
    );
  red_o_5_OBUF : OBUF
    port map (
      I => vga_top_i_vga_i_vga_sync_i_red_r(0),
      O => red_o(5)
    );
  red_o_4_OBUF : OBUF
    port map (
      I => vga_top_i_vga_i_vga_sync_i_red_r(0),
      O => red_o(4)
    );
  red_o_3_OBUF : OBUF
    port map (
      I => vga_top_i_vga_i_vga_sync_i_red_r(0),
      O => red_o(3)
    );
  red_o_2_OBUF : OBUF
    port map (
      I => vga_top_i_vga_i_vga_sync_i_red_r(0),
      O => red_o(2)
    );
  red_o_1_OBUF : OBUF
    port map (
      I => vga_top_i_vga_i_vga_sync_i_red_r(0),
      O => red_o(1)
    );
  red_o_0_OBUF : OBUF
    port map (
      I => vga_top_i_vga_i_vga_sync_i_red_r(0),
      O => red_o(0)
    );
  green_o_7_OBUF : OBUF
    port map (
      I => vga_top_i_vga_i_vga_sync_i_green_r(0),
      O => green_o(7)
    );
  green_o_6_OBUF : OBUF
    port map (
      I => vga_top_i_vga_i_vga_sync_i_green_r(0),
      O => green_o(6)
    );
  green_o_5_OBUF : OBUF
    port map (
      I => vga_top_i_vga_i_vga_sync_i_green_r(0),
      O => green_o(5)
    );
  green_o_4_OBUF : OBUF
    port map (
      I => vga_top_i_vga_i_vga_sync_i_green_r(0),
      O => green_o(4)
    );
  green_o_3_OBUF : OBUF
    port map (
      I => vga_top_i_vga_i_vga_sync_i_green_r(0),
      O => green_o(3)
    );
  green_o_2_OBUF : OBUF
    port map (
      I => vga_top_i_vga_i_vga_sync_i_green_r(0),
      O => green_o(2)
    );
  green_o_1_OBUF : OBUF
    port map (
      I => vga_top_i_vga_i_vga_sync_i_green_r(0),
      O => green_o(1)
    );
  green_o_0_OBUF : OBUF
    port map (
      I => vga_top_i_vga_i_vga_sync_i_green_r(0),
      O => green_o(0)
    );
  blue_o_7_OBUF : OBUF
    port map (
      I => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      O => blue_o(7)
    );
  blue_o_6_OBUF : OBUF
    port map (
      I => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      O => blue_o(6)
    );
  blue_o_5_OBUF : OBUF
    port map (
      I => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      O => blue_o(5)
    );
  blue_o_4_OBUF : OBUF
    port map (
      I => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      O => blue_o(4)
    );
  blue_o_3_OBUF : OBUF
    port map (
      I => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      O => blue_o(3)
    );
  blue_o_2_OBUF : OBUF
    port map (
      I => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      O => blue_o(2)
    );
  blue_o_1_OBUF : OBUF
    port map (
      I => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      O => blue_o(1)
    );
  blue_o_0_OBUF : OBUF
    port map (
      I => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      O => blue_o(0)
    );
  vga_hsync_o_OBUF : OBUF
    port map (
      I => vga_top_i_vga_i_vga_sync_i_horiz_sync_out_r_14,
      O => vga_hsync_o
    );
  vga_vsync_o_OBUF : OBUF
    port map (
      I => vga_top_i_vga_i_vga_sync_i_vert_sync_out_r_15,
      O => vga_vsync_o
    );
  blank_o_OBUF : OBUF
    port map (
      I => vga_top_i_vga_i_vga_sync_i_blank_r_16,
      O => blank_o
    );
  pix_clock_o_OBUF : OBUF
    port map (
      I => pix_clock_o_OBUF_92,
      O => pix_clock_o
    );
  psave_o_OBUF : OBUF
    port map (
      I => vga_top_i_vga_i_vga_sync_i_psave_r_19,
      O => psave_o
    );
  sync_o_OBUF : OBUF
    port map (
      I => vga_top_i_vga_i_vga_sync_i_sync_r_20,
      O => sync_o
    );
  vga_top_i_vga_i_vga_sync_i_red_r_0 : FDR
    port map (
      C => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_vga_sync_i_red_r_0_glue_set_681,
      R => colon_reg_in_rst_inv,
      Q => vga_top_i_vga_i_vga_sync_i_red_r(0)
    );
  vga_top_i_vga_i_vga_sync_i_green_r_0 : FDR
    port map (
      C => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_vga_sync_i_green_r_0_glue_set_682,
      R => colon_reg_in_rst_inv,
      Q => vga_top_i_vga_i_vga_sync_i_green_r(0)
    );
  Madd_mem_r_13_GND_5_o_add_51_OUT_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => mem_reg_r_q(1),
      O => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_1_rt_683
    );
  Madd_mem_r_13_GND_5_o_add_51_OUT_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => mem_reg_r_q(2),
      O => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_2_rt_684
    );
  Madd_mem_r_13_GND_5_o_add_51_OUT_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => mem_reg_r_q(3),
      O => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_3_rt_685
    );
  Madd_mem_r_13_GND_5_o_add_51_OUT_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => mem_reg_r_q(4),
      O => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_4_rt_686
    );
  Madd_mem_r_13_GND_5_o_add_51_OUT_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => mem_reg_r_q(5),
      O => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_5_rt_687
    );
  Madd_mem_r_13_GND_5_o_add_51_OUT_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => mem_reg_r_q(6),
      O => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_6_rt_688
    );
  Madd_mem_r_13_GND_5_o_add_51_OUT_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => mem_reg_r_q(7),
      O => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_7_rt_689
    );
  Madd_mem_r_13_GND_5_o_add_51_OUT_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => mem_reg_r_q(8),
      O => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_8_rt_690
    );
  Madd_mem_r_13_GND_5_o_add_51_OUT_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => mem_reg_r_q(9),
      O => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_9_rt_691
    );
  Madd_mem_r_13_GND_5_o_add_51_OUT_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => mem_reg_r_q(10),
      O => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_10_rt_692
    );
  Madd_mem_r_13_GND_5_o_add_51_OUT_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => mem_reg_r_q(11),
      O => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_11_rt_693
    );
  Madd_mem_r_13_GND_5_o_add_51_OUT_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => mem_reg_r_q(12),
      O => Madd_mem_r_13_GND_5_o_add_51_OUT_cy_12_rt_694
    );
  Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => mem_reg_r_q(1),
      O => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_cy_1_rt_695
    );
  Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => graphics_reg_r_q(1),
      O => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_1_rt_696
    );
  Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => graphics_reg_r_q(2),
      O => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_2_rt_697
    );
  Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => graphics_reg_r_q(3),
      O => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_3_rt_698
    );
  Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => graphics_reg_r_q(4),
      O => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_4_rt_699
    );
  Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => graphics_reg_r_q(5),
      O => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_5_rt_700
    );
  Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => graphics_reg_r_q(6),
      O => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_6_rt_701
    );
  Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => graphics_reg_r_q(7),
      O => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_7_rt_702
    );
  Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => graphics_reg_r_q(8),
      O => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_8_rt_703
    );
  Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => graphics_reg_r_q(9),
      O => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_9_rt_704
    );
  Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => graphics_reg_r_q(10),
      O => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_10_rt_705
    );
  Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => graphics_reg_r_q(11),
      O => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_11_rt_706
    );
  Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => graphics_reg_r_q(12),
      O => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_12_rt_707
    );
  Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => graphics_reg_r_q(13),
      O => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_13_rt_708
    );
  Madd_pixel_colon_r_15_GND_5_o_add_73_OUT_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => colon_reg_r_q(1),
      O => Madd_pixel_colon_r_15_GND_5_o_add_73_OUT_cy_1_rt_709
    );
  Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => row_reg_r_q(1),
      O => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_1_rt_710
    );
  Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => row_reg_r_q(2),
      O => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_2_rt_711
    );
  Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => row_reg_r_q(3),
      O => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_3_rt_712
    );
  Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => row_reg_r_q(4),
      O => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_4_rt_713
    );
  Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => row_reg_r_q(5),
      O => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_5_rt_714
    );
  Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => row_reg_r_q(6),
      O => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_6_rt_715
    );
  Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => row_reg_r_q(7),
      O => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_7_rt_716
    );
  Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => row_reg_r_q(8),
      O => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_8_rt_717
    );
  Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => row_reg_r_q(9),
      O => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_9_rt_718
    );
  Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => row_reg_r_q(10),
      O => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_10_rt_719
    );
  Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => row_reg_r_q(11),
      O => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_11_rt_720
    );
  Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => row_reg_r_q(12),
      O => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_12_rt_721
    );
  Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => row_reg_r_q(13),
      O => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_13_rt_722
    );
  Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => row_reg_r_q(14),
      O => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_cy_14_rt_723
    );
  Madd_sh_graph_cnt_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sh_graph_reg_r_q(1),
      O => Madd_sh_graph_cnt_cy_1_rt_724
    );
  Madd_sh_graph_cnt_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sh_graph_reg_r_q(2),
      O => Madd_sh_graph_cnt_cy_2_rt_725
    );
  Madd_sh_graph_cnt_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sh_graph_reg_r_q(3),
      O => Madd_sh_graph_cnt_cy_3_rt_726
    );
  Madd_sh_graph_cnt_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sh_graph_reg_r_q(4),
      O => Madd_sh_graph_cnt_cy_4_rt_727
    );
  Madd_sh_graph_cnt_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sh_graph_reg_r_q(5),
      O => Madd_sh_graph_cnt_cy_5_rt_728
    );
  Madd_sh_graph_cnt_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sh_graph_reg_r_q(6),
      O => Madd_sh_graph_cnt_cy_6_rt_729
    );
  Madd_sh_graph_cnt_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sh_graph_reg_r_q(7),
      O => Madd_sh_graph_cnt_cy_7_rt_730
    );
  Madd_sh_graph_cnt_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sh_graph_reg_r_q(8),
      O => Madd_sh_graph_cnt_cy_8_rt_731
    );
  Madd_sh_graph_cnt_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sh_graph_reg_r_q(9),
      O => Madd_sh_graph_cnt_cy_9_rt_732
    );
  Madd_sh_graph_cnt_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sh_graph_reg_r_q(10),
      O => Madd_sh_graph_cnt_cy_10_rt_733
    );
  Madd_sh_graph_cnt_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sh_graph_reg_r_q(11),
      O => Madd_sh_graph_cnt_cy_11_rt_734
    );
  Madd_sh_graph_cnt_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sh_graph_reg_r_q(12),
      O => Madd_sh_graph_cnt_cy_12_rt_735
    );
  Madd_sh_graph_cnt_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sh_graph_reg_r_q(13),
      O => Madd_sh_graph_cnt_cy_13_rt_736
    );
  Madd_sh_graph_cnt_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sh_graph_reg_r_q(14),
      O => Madd_sh_graph_cnt_cy_14_rt_737
    );
  Madd_sh_graph_cnt_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sh_graph_reg_r_q(15),
      O => Madd_sh_graph_cnt_cy_15_rt_738
    );
  Madd_sh_graph_cnt_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sh_graph_reg_r_q(16),
      O => Madd_sh_graph_cnt_cy_16_rt_739
    );
  Madd_sh_graph_cnt_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sh_graph_reg_r_q(17),
      O => Madd_sh_graph_cnt_cy_17_rt_740
    );
  Madd_sh_graph_cnt_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sh_graph_reg_r_q(18),
      O => Madd_sh_graph_cnt_cy_18_rt_741
    );
  sh_graph_reg_Mcount_r_q_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sh_graph_reg_r_q(1),
      O => sh_graph_reg_Mcount_r_q_cy_1_rt_742
    );
  sh_graph_reg_Mcount_r_q_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sh_graph_reg_r_q(2),
      O => sh_graph_reg_Mcount_r_q_cy_2_rt_743
    );
  sh_graph_reg_Mcount_r_q_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sh_graph_reg_r_q(3),
      O => sh_graph_reg_Mcount_r_q_cy_3_rt_744
    );
  sh_graph_reg_Mcount_r_q_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sh_graph_reg_r_q(4),
      O => sh_graph_reg_Mcount_r_q_cy_4_rt_745
    );
  sh_graph_reg_Mcount_r_q_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sh_graph_reg_r_q(5),
      O => sh_graph_reg_Mcount_r_q_cy_5_rt_746
    );
  sh_graph_reg_Mcount_r_q_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sh_graph_reg_r_q(6),
      O => sh_graph_reg_Mcount_r_q_cy_6_rt_747
    );
  sh_graph_reg_Mcount_r_q_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sh_graph_reg_r_q(7),
      O => sh_graph_reg_Mcount_r_q_cy_7_rt_748
    );
  sh_graph_reg_Mcount_r_q_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sh_graph_reg_r_q(8),
      O => sh_graph_reg_Mcount_r_q_cy_8_rt_749
    );
  sh_graph_reg_Mcount_r_q_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sh_graph_reg_r_q(9),
      O => sh_graph_reg_Mcount_r_q_cy_9_rt_750
    );
  sh_graph_reg_Mcount_r_q_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sh_graph_reg_r_q(10),
      O => sh_graph_reg_Mcount_r_q_cy_10_rt_751
    );
  sh_graph_reg_Mcount_r_q_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sh_graph_reg_r_q(11),
      O => sh_graph_reg_Mcount_r_q_cy_11_rt_752
    );
  sh_graph_reg_Mcount_r_q_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sh_graph_reg_r_q(12),
      O => sh_graph_reg_Mcount_r_q_cy_12_rt_753
    );
  sh_graph_reg_Mcount_r_q_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sh_graph_reg_r_q(13),
      O => sh_graph_reg_Mcount_r_q_cy_13_rt_754
    );
  sh_graph_reg_Mcount_r_q_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sh_graph_reg_r_q(14),
      O => sh_graph_reg_Mcount_r_q_cy_14_rt_755
    );
  sh_graph_reg_Mcount_r_q_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sh_graph_reg_r_q(15),
      O => sh_graph_reg_Mcount_r_q_cy_15_rt_756
    );
  sh_graph_reg_Mcount_r_q_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sh_graph_reg_r_q(16),
      O => sh_graph_reg_Mcount_r_q_cy_16_rt_757
    );
  sh_graph_reg_Mcount_r_q_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sh_graph_reg_r_q(17),
      O => sh_graph_reg_Mcount_r_q_cy_17_rt_758
    );
  sh_graph_reg_Mcount_r_q_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sh_graph_reg_r_q(18),
      O => sh_graph_reg_Mcount_r_q_cy_18_rt_759
    );
  graphics_reg_Mcount_r_q_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => graphics_reg_r_q(1),
      O => graphics_reg_Mcount_r_q_cy_1_rt_760
    );
  graphics_reg_Mcount_r_q_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => graphics_reg_r_q(2),
      O => graphics_reg_Mcount_r_q_cy_2_rt_761
    );
  graphics_reg_Mcount_r_q_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => graphics_reg_r_q(3),
      O => graphics_reg_Mcount_r_q_cy_3_rt_762
    );
  graphics_reg_Mcount_r_q_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => graphics_reg_r_q(4),
      O => graphics_reg_Mcount_r_q_cy_4_rt_763
    );
  graphics_reg_Mcount_r_q_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => graphics_reg_r_q(5),
      O => graphics_reg_Mcount_r_q_cy_5_rt_764
    );
  graphics_reg_Mcount_r_q_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => graphics_reg_r_q(6),
      O => graphics_reg_Mcount_r_q_cy_6_rt_765
    );
  graphics_reg_Mcount_r_q_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => graphics_reg_r_q(7),
      O => graphics_reg_Mcount_r_q_cy_7_rt_766
    );
  graphics_reg_Mcount_r_q_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => graphics_reg_r_q(8),
      O => graphics_reg_Mcount_r_q_cy_8_rt_767
    );
  graphics_reg_Mcount_r_q_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => graphics_reg_r_q(9),
      O => graphics_reg_Mcount_r_q_cy_9_rt_768
    );
  graphics_reg_Mcount_r_q_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => graphics_reg_r_q(10),
      O => graphics_reg_Mcount_r_q_cy_10_rt_769
    );
  graphics_reg_Mcount_r_q_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => graphics_reg_r_q(11),
      O => graphics_reg_Mcount_r_q_cy_11_rt_770
    );
  graphics_reg_Mcount_r_q_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => graphics_reg_r_q(12),
      O => graphics_reg_Mcount_r_q_cy_12_rt_771
    );
  Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => row_reg_r_q(3),
      O => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_3_rt_772
    );
  Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => row_reg_r_q(4),
      O => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_4_rt_773
    );
  Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => row_reg_r_q(5),
      O => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_5_rt_774
    );
  Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => row_reg_r_q(7),
      O => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_7_rt_775
    );
  Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => row_reg_r_q(8),
      O => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_8_rt_776
    );
  Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => row_reg_r_q(11),
      O => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_11_rt_777
    );
  Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => row_reg_r_q(12),
      O => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_12_rt_778
    );
  Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => row_reg_r_q(13),
      O => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_13_rt_779
    );
  Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => row_reg_r_q(14),
      O => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_cy_14_rt_780
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_v_count_r(8),
      O => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_8_rt_781
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_v_count_r(7),
      O => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_7_rt_782
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_v_count_r(6),
      O => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_6_rt_783
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_v_count_r(5),
      O => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_5_rt_784
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_v_count_r(4),
      O => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_4_rt_785
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_v_count_r(3),
      O => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_3_rt_786
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_v_count_r(2),
      O => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_2_rt_787
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_v_count_r(1),
      O => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_1_rt_788
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_h_count_r(8),
      O => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_8_rt_789
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_h_count_r(7),
      O => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_7_rt_790
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_h_count_r(6),
      O => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_6_rt_791
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_h_count_r(5),
      O => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_5_rt_792
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_h_count_r(4),
      O => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_4_rt_793
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_h_count_r(3),
      O => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_3_rt_794
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_h_count_r(2),
      O => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_2_rt_795
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_h_count_r(1),
      O => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_1_rt_796
    );
  Madd_mem_r_13_GND_5_o_add_51_OUT_xor_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => mem_reg_r_q(13),
      O => Madd_mem_r_13_GND_5_o_add_51_OUT_xor_13_rt_797
    );
  Madd_pixel_colon_r_15_GND_5_o_add_73_OUT_xor_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => colon_reg_r_q(2),
      O => Madd_pixel_colon_r_15_GND_5_o_add_73_OUT_xor_2_rt_798
    );
  Madd_pixel_row_r_15_GND_5_o_add_80_OUT_xor_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => row_reg_r_q(15),
      O => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_xor_15_rt_799
    );
  Madd_sh_graph_cnt_xor_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sh_graph_reg_r_q(19),
      O => Madd_sh_graph_cnt_xor_19_rt_800
    );
  sh_graph_reg_Mcount_r_q_xor_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sh_graph_reg_r_q(19),
      O => sh_graph_reg_Mcount_r_q_xor_19_rt_801
    );
  graphics_reg_Mcount_r_q_xor_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => graphics_reg_r_q(13),
      O => graphics_reg_Mcount_r_q_xor_13_rt_802
    );
  Madd_pixel_row_r_15_GND_5_o_add_70_OUT_xor_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => row_reg_r_q(15),
      O => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_xor_15_rt_803
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_v_count_r(9),
      O => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_xor_9_rt_804
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_h_count_r(9),
      O => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_xor_9_rt_805
    );
  vga_top_i_text_mem_i_Mmux_index31 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => vga_top_i_txt_rom_addr_c(11),
      I1 => vga_top_i_txt_rom_addr_c(12),
      I2 => vga_top_i_txt_rom_addr_c(13),
      O => vga_top_i_text_mem_i_index(11)
    );
  vga_top_i_text_mem_i_Mmux_index21 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => vga_top_i_txt_rom_addr_c(10),
      I1 => vga_top_i_txt_rom_addr_c(12),
      I2 => vga_top_i_txt_rom_addr_c(13),
      O => vga_top_i_text_mem_i_index(10)
    );
  vga_top_i_graphics_mem_i_Mmux_index_031 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => vga_top_i_graph_pixel_addr_c(16),
      I1 => vga_top_i_graph_pixel_addr_c(18),
      I2 => vga_top_i_graph_pixel_addr_c(19),
      O => vga_top_i_graphics_mem_i_index_0(11)
    );
  vga_top_i_graphics_mem_i_Mmux_index_041 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => vga_top_i_graph_pixel_addr_c(17),
      I1 => vga_top_i_graph_pixel_addr_c(18),
      I2 => vga_top_i_graph_pixel_addr_c(19),
      O => vga_top_i_graphics_mem_i_index_0(12)
    );
  vga_top_i_text_mem_i_Mmux_index131 : LUT6
    generic map(
      INIT => X"000000F0000010F0"
    )
    port map (
      I0 => vga_top_i_txt_rom_addr_c(10),
      I1 => vga_top_i_txt_rom_addr_c(11),
      I2 => vga_top_i_txt_rom_addr_c(9),
      I3 => vga_top_i_txt_rom_addr_c(12),
      I4 => vga_top_i_txt_rom_addr_c(13),
      I5 => N11,
      O => vga_top_i_text_mem_i_index(9)
    );
  vga_top_i_text_mem_i_Mmux_index41 : LUT6
    generic map(
      INIT => X"0000000400040004"
    )
    port map (
      I0 => vga_top_i_txt_rom_addr_c(13),
      I1 => vga_top_i_txt_rom_addr_c(12),
      I2 => vga_top_i_txt_rom_addr_c(11),
      I3 => vga_top_i_txt_rom_addr_c(10),
      I4 => vga_top_i_txt_rom_addr_c(9),
      I5 => N11,
      O => vga_top_i_text_mem_i_index(12)
    );
  vga_top_i_graphics_mem_i_Mmux_index_021 : LUT6
    generic map(
      INIT => X"000000F0000010F0"
    )
    port map (
      I0 => vga_top_i_graph_pixel_addr_c(16),
      I1 => vga_top_i_graph_pixel_addr_c(17),
      I2 => vga_top_i_graph_pixel_addr_c(15),
      I3 => vga_top_i_graph_pixel_addr_c(18),
      I4 => vga_top_i_graph_pixel_addr_c(19),
      I5 => N25,
      O => vga_top_i_graphics_mem_i_index_0(10)
    );
  vga_top_i_graphics_mem_i_Mmux_index_051 : LUT6
    generic map(
      INIT => X"0000010000001100"
    )
    port map (
      I0 => vga_top_i_graph_pixel_addr_c(16),
      I1 => vga_top_i_graph_pixel_addr_c(17),
      I2 => vga_top_i_graph_pixel_addr_c(15),
      I3 => vga_top_i_graph_pixel_addr_c(18),
      I4 => vga_top_i_graph_pixel_addr_c(19),
      I5 => N25,
      O => vga_top_i_graphics_mem_i_index_0(13)
    );
  vga_top_i_text_mem_i_index_t_30_GND_27_o_LessThan_5_o1_SW2 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => vga_top_i_txt_rom_addr_c(11),
      I1 => vga_top_i_txt_rom_addr_c(10),
      O => N29
    );
  vga_top_i_text_mem_i_Mmux_index111 : LUT6
    generic map(
      INIT => X"000A002A000A00AA"
    )
    port map (
      I0 => vga_top_i_txt_rom_addr_c(7),
      I1 => vga_top_i_txt_rom_addr_c(9),
      I2 => vga_top_i_txt_rom_addr_c(12),
      I3 => vga_top_i_txt_rom_addr_c(13),
      I4 => N29,
      I5 => N11,
      O => vga_top_i_text_mem_i_index(7)
    );
  vga_top_i_text_mem_i_Mmux_index101 : LUT6
    generic map(
      INIT => X"000A002A000A00AA"
    )
    port map (
      I0 => vga_top_i_txt_rom_addr_c(6),
      I1 => vga_top_i_txt_rom_addr_c(9),
      I2 => vga_top_i_txt_rom_addr_c(12),
      I3 => vga_top_i_txt_rom_addr_c(13),
      I4 => N29,
      I5 => N11,
      O => vga_top_i_text_mem_i_index(6)
    );
  vga_top_i_text_mem_i_Mmux_index91 : LUT6
    generic map(
      INIT => X"000A002A000A00AA"
    )
    port map (
      I0 => vga_top_i_txt_rom_addr_c(5),
      I1 => vga_top_i_txt_rom_addr_c(9),
      I2 => vga_top_i_txt_rom_addr_c(12),
      I3 => vga_top_i_txt_rom_addr_c(13),
      I4 => N29,
      I5 => N11,
      O => vga_top_i_text_mem_i_index(5)
    );
  vga_top_i_text_mem_i_Mmux_index81 : LUT6
    generic map(
      INIT => X"000A002A000A00AA"
    )
    port map (
      I0 => vga_top_i_txt_rom_addr_c(4),
      I1 => vga_top_i_txt_rom_addr_c(9),
      I2 => vga_top_i_txt_rom_addr_c(12),
      I3 => vga_top_i_txt_rom_addr_c(13),
      I4 => N29,
      I5 => N11,
      O => vga_top_i_text_mem_i_index(4)
    );
  vga_top_i_text_mem_i_Mmux_index71 : LUT6
    generic map(
      INIT => X"000A002A000A00AA"
    )
    port map (
      I0 => vga_top_i_txt_rom_addr_c(3),
      I1 => vga_top_i_txt_rom_addr_c(9),
      I2 => vga_top_i_txt_rom_addr_c(12),
      I3 => vga_top_i_txt_rom_addr_c(13),
      I4 => N29,
      I5 => N11,
      O => vga_top_i_text_mem_i_index(3)
    );
  vga_top_i_text_mem_i_Mmux_index61 : LUT6
    generic map(
      INIT => X"000A002A000A00AA"
    )
    port map (
      I0 => vga_top_i_txt_rom_addr_c(2),
      I1 => vga_top_i_txt_rom_addr_c(9),
      I2 => vga_top_i_txt_rom_addr_c(12),
      I3 => vga_top_i_txt_rom_addr_c(13),
      I4 => N29,
      I5 => N11,
      O => vga_top_i_text_mem_i_index(2)
    );
  vga_top_i_text_mem_i_Mmux_index51 : LUT6
    generic map(
      INIT => X"000A002A000A00AA"
    )
    port map (
      I0 => vga_top_i_txt_rom_addr_c(1),
      I1 => vga_top_i_txt_rom_addr_c(9),
      I2 => vga_top_i_txt_rom_addr_c(12),
      I3 => vga_top_i_txt_rom_addr_c(13),
      I4 => N29,
      I5 => N11,
      O => vga_top_i_text_mem_i_index(1)
    );
  vga_top_i_text_mem_i_Mmux_index11 : LUT6
    generic map(
      INIT => X"000A002A000A00AA"
    )
    port map (
      I0 => vga_top_i_txt_rom_addr_c(0),
      I1 => vga_top_i_txt_rom_addr_c(9),
      I2 => vga_top_i_txt_rom_addr_c(12),
      I3 => vga_top_i_txt_rom_addr_c(13),
      I4 => N29,
      I5 => N11,
      O => vga_top_i_text_mem_i_index(0)
    );
  vga_top_i_graphics_mem_i_index_0_t_30_GND_45_o_LessThan_8_o1_SW1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => vga_top_i_graph_pixel_addr_c(17),
      I1 => vga_top_i_graph_pixel_addr_c(16),
      O => N45
    );
  vga_top_i_graphics_mem_i_Mmux_index_015 : LUT6
    generic map(
      INIT => X"000A002A000A00AA"
    )
    port map (
      I0 => vga_top_i_graph_pixel_addr_c(5),
      I1 => vga_top_i_graph_pixel_addr_c(15),
      I2 => vga_top_i_graph_pixel_addr_c(18),
      I3 => vga_top_i_graph_pixel_addr_c(19),
      I4 => N45,
      I5 => N25,
      O => vga_top_i_graphics_mem_i_index_0(0)
    );
  vga_top_i_graphics_mem_i_Mmux_index_061 : LUT6
    generic map(
      INIT => X"000A002A000A00AA"
    )
    port map (
      I0 => vga_top_i_graph_pixel_addr_c(6),
      I1 => vga_top_i_graph_pixel_addr_c(15),
      I2 => vga_top_i_graph_pixel_addr_c(18),
      I3 => vga_top_i_graph_pixel_addr_c(19),
      I4 => N45,
      I5 => N25,
      O => vga_top_i_graphics_mem_i_index_0(1)
    );
  vga_top_i_graphics_mem_i_Mmux_index_071 : LUT6
    generic map(
      INIT => X"000A002A000A00AA"
    )
    port map (
      I0 => vga_top_i_graph_pixel_addr_c(7),
      I1 => vga_top_i_graph_pixel_addr_c(15),
      I2 => vga_top_i_graph_pixel_addr_c(18),
      I3 => vga_top_i_graph_pixel_addr_c(19),
      I4 => N45,
      I5 => N25,
      O => vga_top_i_graphics_mem_i_index_0(2)
    );
  vga_top_i_graphics_mem_i_Mmux_index_081 : LUT6
    generic map(
      INIT => X"000A002A000A00AA"
    )
    port map (
      I0 => vga_top_i_graph_pixel_addr_c(8),
      I1 => vga_top_i_graph_pixel_addr_c(15),
      I2 => vga_top_i_graph_pixel_addr_c(18),
      I3 => vga_top_i_graph_pixel_addr_c(19),
      I4 => N45,
      I5 => N25,
      O => vga_top_i_graphics_mem_i_index_0(3)
    );
  vga_top_i_graphics_mem_i_Mmux_index_091 : LUT6
    generic map(
      INIT => X"000A002A000A00AA"
    )
    port map (
      I0 => vga_top_i_graph_pixel_addr_c(9),
      I1 => vga_top_i_graph_pixel_addr_c(15),
      I2 => vga_top_i_graph_pixel_addr_c(18),
      I3 => vga_top_i_graph_pixel_addr_c(19),
      I4 => N45,
      I5 => N25,
      O => vga_top_i_graphics_mem_i_index_0(4)
    );
  vga_top_i_graphics_mem_i_Mmux_index_0101 : LUT6
    generic map(
      INIT => X"000A002A000A00AA"
    )
    port map (
      I0 => vga_top_i_graph_pixel_addr_c(10),
      I1 => vga_top_i_graph_pixel_addr_c(15),
      I2 => vga_top_i_graph_pixel_addr_c(18),
      I3 => vga_top_i_graph_pixel_addr_c(19),
      I4 => N45,
      I5 => N25,
      O => vga_top_i_graphics_mem_i_index_0(5)
    );
  vga_top_i_graphics_mem_i_Mmux_index_0111 : LUT6
    generic map(
      INIT => X"000A002A000A00AA"
    )
    port map (
      I0 => vga_top_i_graph_pixel_addr_c(11),
      I1 => vga_top_i_graph_pixel_addr_c(15),
      I2 => vga_top_i_graph_pixel_addr_c(18),
      I3 => vga_top_i_graph_pixel_addr_c(19),
      I4 => N45,
      I5 => N25,
      O => vga_top_i_graphics_mem_i_index_0(6)
    );
  vga_top_i_graphics_mem_i_Mmux_index_0121 : LUT6
    generic map(
      INIT => X"000A002A000A00AA"
    )
    port map (
      I0 => vga_top_i_graph_pixel_addr_c(12),
      I1 => vga_top_i_graph_pixel_addr_c(15),
      I2 => vga_top_i_graph_pixel_addr_c(18),
      I3 => vga_top_i_graph_pixel_addr_c(19),
      I4 => N45,
      I5 => N25,
      O => vga_top_i_graphics_mem_i_index_0(7)
    );
  vga_top_i_graphics_mem_i_Mmux_index_0131 : LUT6
    generic map(
      INIT => X"000A002A000A00AA"
    )
    port map (
      I0 => vga_top_i_graph_pixel_addr_c(13),
      I1 => vga_top_i_graph_pixel_addr_c(15),
      I2 => vga_top_i_graph_pixel_addr_c(18),
      I3 => vga_top_i_graph_pixel_addr_c(19),
      I4 => N45,
      I5 => N25,
      O => vga_top_i_graphics_mem_i_index_0(8)
    );
  vga_top_i_graphics_mem_i_Mmux_index_0141 : LUT6
    generic map(
      INIT => X"000A002A000A00AA"
    )
    port map (
      I0 => vga_top_i_graph_pixel_addr_c(14),
      I1 => vga_top_i_graph_pixel_addr_c(15),
      I2 => vga_top_i_graph_pixel_addr_c(18),
      I3 => vga_top_i_graph_pixel_addr_c(19),
      I4 => N45,
      I5 => N25,
      O => vga_top_i_graphics_mem_i_index_0(9)
    );
  vga_top_i_text_mem_i_Mmux_index121 : LUT6
    generic map(
      INIT => X"000000000002AAAA"
    )
    port map (
      I0 => vga_top_i_txt_rom_addr_c(8),
      I1 => vga_top_i_txt_rom_addr_c(10),
      I2 => vga_top_i_txt_rom_addr_c(11),
      I3 => vga_top_i_txt_rom_addr_c(9),
      I4 => vga_top_i_txt_rom_addr_c(12),
      I5 => vga_top_i_txt_rom_addr_c(13),
      O => vga_top_i_text_mem_i_index(8)
    );
  vga_top_i_vga_i_vga_sync_i_red_r_0_glue_set : LUT4
    generic map(
      INIT => X"44F4"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_enable_s,
      I1 => vga_top_i_vga_i_vga_sync_i_red_r(0),
      I2 => vga_top_i_vga_i_vga_sync_i_active_frame,
      I3 => vga_top_i_vga_i_vga_sync_i_h_pixels_10_v_lines_10_OR_16_o_584,
      O => vga_top_i_vga_i_vga_sync_i_red_r_0_glue_set_681
    );
  vga_top_i_vga_i_vga_sync_i_green_r_0_glue_set : LUT5
    generic map(
      INIT => X"444444F4"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_enable_s,
      I1 => vga_top_i_vga_i_vga_sync_i_green_r(0),
      I2 => vga_top_i_graphics_mem_i_Mmux_rd_data_o_3,
      I3 => vga_top_i_vga_i_vga_sync_i_active_frame,
      I4 => vga_top_i_vga_i_vga_sync_i_h_pixels_10_v_lines_10_OR_16_o_584,
      O => vga_top_i_vga_i_vga_sync_i_green_r_0_glue_set_682
    );
  vga_top_i_graphics_mem_i_Mmux_index_251 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => graph_mem_r_19_GND_5_o_add_67_OUT_13_Q,
      I1 => GND_5_o_GND_5_o_equal_67_o,
      I2 => pixel_address(14),
      I3 => vga_top_i_graphics_mem_i_index_2_t_30_GND_45_o_LessThan_14_o2,
      O => vga_top_i_graphics_mem_i_index_2(13)
    );
  vga_top_i_graphics_mem_i_Mmux_index_215 : LUT5
    generic map(
      INIT => X"04000404"
    )
    port map (
      I0 => GND_5_o_GND_5_o_equal_67_o,
      I1 => graph_mem_r_19_GND_5_o_add_67_OUT_0_Q,
      I2 => pixel_address(14),
      I3 => vga_top_i_graphics_mem_i_index_2_t_30_GND_45_o_LessThan_14_o2,
      I4 => pixel_address(13),
      O => vga_top_i_graphics_mem_i_index_2(0)
    );
  vga_top_i_graphics_mem_i_Mmux_index_221 : LUT5
    generic map(
      INIT => X"04000404"
    )
    port map (
      I0 => GND_5_o_GND_5_o_equal_67_o,
      I1 => graph_mem_r_19_GND_5_o_add_67_OUT_10_Q,
      I2 => pixel_address(14),
      I3 => vga_top_i_graphics_mem_i_index_2_t_30_GND_45_o_LessThan_14_o2,
      I4 => pixel_address(13),
      O => vga_top_i_graphics_mem_i_index_2(10)
    );
  vga_top_i_graphics_mem_i_Mmux_index_231 : LUT5
    generic map(
      INIT => X"04000404"
    )
    port map (
      I0 => GND_5_o_GND_5_o_equal_67_o,
      I1 => graph_mem_r_19_GND_5_o_add_67_OUT_11_Q,
      I2 => pixel_address(14),
      I3 => vga_top_i_graphics_mem_i_index_2_t_30_GND_45_o_LessThan_14_o2,
      I4 => pixel_address(13),
      O => vga_top_i_graphics_mem_i_index_2(11)
    );
  vga_top_i_graphics_mem_i_Mmux_index_241 : LUT5
    generic map(
      INIT => X"04000404"
    )
    port map (
      I0 => GND_5_o_GND_5_o_equal_67_o,
      I1 => graph_mem_r_19_GND_5_o_add_67_OUT_12_Q,
      I2 => pixel_address(14),
      I3 => vga_top_i_graphics_mem_i_index_2_t_30_GND_45_o_LessThan_14_o2,
      I4 => pixel_address(13),
      O => vga_top_i_graphics_mem_i_index_2(12)
    );
  vga_top_i_graphics_mem_i_Mmux_index_261 : LUT5
    generic map(
      INIT => X"04000404"
    )
    port map (
      I0 => GND_5_o_GND_5_o_equal_67_o,
      I1 => graph_mem_r_19_GND_5_o_add_67_OUT_1_Q,
      I2 => pixel_address(14),
      I3 => vga_top_i_graphics_mem_i_index_2_t_30_GND_45_o_LessThan_14_o2,
      I4 => pixel_address(13),
      O => vga_top_i_graphics_mem_i_index_2(1)
    );
  vga_top_i_graphics_mem_i_Mmux_index_271 : LUT5
    generic map(
      INIT => X"04000404"
    )
    port map (
      I0 => GND_5_o_GND_5_o_equal_67_o,
      I1 => graph_mem_r_19_GND_5_o_add_67_OUT_2_Q,
      I2 => pixel_address(14),
      I3 => vga_top_i_graphics_mem_i_index_2_t_30_GND_45_o_LessThan_14_o2,
      I4 => pixel_address(13),
      O => vga_top_i_graphics_mem_i_index_2(2)
    );
  vga_top_i_graphics_mem_i_Mmux_index_281 : LUT5
    generic map(
      INIT => X"04000404"
    )
    port map (
      I0 => GND_5_o_GND_5_o_equal_67_o,
      I1 => graph_mem_r_19_GND_5_o_add_67_OUT_3_Q,
      I2 => pixel_address(14),
      I3 => vga_top_i_graphics_mem_i_index_2_t_30_GND_45_o_LessThan_14_o2,
      I4 => pixel_address(13),
      O => vga_top_i_graphics_mem_i_index_2(3)
    );
  vga_top_i_graphics_mem_i_Mmux_index_291 : LUT5
    generic map(
      INIT => X"04000404"
    )
    port map (
      I0 => GND_5_o_GND_5_o_equal_67_o,
      I1 => graph_mem_r_19_GND_5_o_add_67_OUT_4_Q,
      I2 => pixel_address(14),
      I3 => vga_top_i_graphics_mem_i_index_2_t_30_GND_45_o_LessThan_14_o2,
      I4 => pixel_address(13),
      O => vga_top_i_graphics_mem_i_index_2(4)
    );
  vga_top_i_graphics_mem_i_Mmux_index_2101 : LUT5
    generic map(
      INIT => X"04000404"
    )
    port map (
      I0 => GND_5_o_GND_5_o_equal_67_o,
      I1 => graph_mem_r_19_GND_5_o_add_67_OUT_5_Q,
      I2 => pixel_address(14),
      I3 => vga_top_i_graphics_mem_i_index_2_t_30_GND_45_o_LessThan_14_o2,
      I4 => pixel_address(13),
      O => vga_top_i_graphics_mem_i_index_2(5)
    );
  vga_top_i_graphics_mem_i_Mmux_index_2111 : LUT5
    generic map(
      INIT => X"04000404"
    )
    port map (
      I0 => GND_5_o_GND_5_o_equal_67_o,
      I1 => graph_mem_r_19_GND_5_o_add_67_OUT_6_Q,
      I2 => pixel_address(14),
      I3 => vga_top_i_graphics_mem_i_index_2_t_30_GND_45_o_LessThan_14_o2,
      I4 => pixel_address(13),
      O => vga_top_i_graphics_mem_i_index_2(6)
    );
  vga_top_i_graphics_mem_i_Mmux_index_2121 : LUT5
    generic map(
      INIT => X"04000404"
    )
    port map (
      I0 => GND_5_o_GND_5_o_equal_67_o,
      I1 => graph_mem_r_19_GND_5_o_add_67_OUT_7_Q,
      I2 => pixel_address(14),
      I3 => vga_top_i_graphics_mem_i_index_2_t_30_GND_45_o_LessThan_14_o2,
      I4 => pixel_address(13),
      O => vga_top_i_graphics_mem_i_index_2(7)
    );
  vga_top_i_graphics_mem_i_Mmux_index_2131 : LUT5
    generic map(
      INIT => X"04000404"
    )
    port map (
      I0 => GND_5_o_GND_5_o_equal_67_o,
      I1 => graph_mem_r_19_GND_5_o_add_67_OUT_8_Q,
      I2 => pixel_address(14),
      I3 => vga_top_i_graphics_mem_i_index_2_t_30_GND_45_o_LessThan_14_o2,
      I4 => pixel_address(13),
      O => vga_top_i_graphics_mem_i_index_2(8)
    );
  vga_top_i_graphics_mem_i_Mmux_index_2141 : LUT5
    generic map(
      INIT => X"04000404"
    )
    port map (
      I0 => GND_5_o_GND_5_o_equal_67_o,
      I1 => graph_mem_r_19_GND_5_o_add_67_OUT_9_Q,
      I2 => pixel_address(14),
      I3 => vga_top_i_graphics_mem_i_index_2_t_30_GND_45_o_LessThan_14_o2,
      I4 => pixel_address(13),
      O => vga_top_i_graphics_mem_i_index_2(9)
    );
  Mmux_pixel_row161 : LUT4
    generic map(
      INIT => X"FDA8"
    )
    port map (
      I0 => GND_5_o_GND_5_o_equal_80_o,
      I1 => GND_5_o_GND_5_o_AND_143_o3_627,
      I2 => pixel_row_r_15_GND_5_o_add_80_OUT_9_Q,
      I3 => row_reg_r_q(9),
      O => pixel_row(9)
    );
  Mmux_pixel_row141 : LUT4
    generic map(
      INIT => X"FDA8"
    )
    port map (
      I0 => GND_5_o_GND_5_o_equal_80_o,
      I1 => GND_5_o_GND_5_o_AND_143_o3_627,
      I2 => pixel_row_r_15_GND_5_o_add_80_OUT_7_Q,
      I3 => row_reg_r_q(7),
      O => pixel_row(7)
    );
  Mmux_pixel_row131 : LUT4
    generic map(
      INIT => X"FDA8"
    )
    port map (
      I0 => GND_5_o_GND_5_o_equal_80_o,
      I1 => GND_5_o_GND_5_o_AND_143_o3_627,
      I2 => pixel_row_r_15_GND_5_o_add_80_OUT_6_Q,
      I3 => row_reg_r_q(6),
      O => pixel_row(6)
    );
  Mmux_pixel_row41 : LUT4
    generic map(
      INIT => X"FDA8"
    )
    port map (
      I0 => GND_5_o_GND_5_o_equal_80_o,
      I1 => GND_5_o_GND_5_o_AND_143_o3_627,
      I2 => pixel_row_r_15_GND_5_o_add_80_OUT_12_Q,
      I3 => row_reg_r_q(12),
      O => pixel_row(12)
    );
  Mmux_pixel_row151 : LUT4
    generic map(
      INIT => X"7520"
    )
    port map (
      I0 => GND_5_o_GND_5_o_equal_80_o,
      I1 => GND_5_o_GND_5_o_AND_143_o3_627,
      I2 => pixel_row_r_15_GND_5_o_add_80_OUT_8_Q,
      I3 => row_reg_r_q(8),
      O => pixel_row(8)
    );
  Mmux_pixel_row121 : LUT4
    generic map(
      INIT => X"7520"
    )
    port map (
      I0 => GND_5_o_GND_5_o_equal_80_o,
      I1 => GND_5_o_GND_5_o_AND_143_o3_627,
      I2 => pixel_row_r_15_GND_5_o_add_80_OUT_5_Q,
      I3 => row_reg_r_q(5),
      O => pixel_row(5)
    );
  Mmux_pixel_row111 : LUT4
    generic map(
      INIT => X"7520"
    )
    port map (
      I0 => GND_5_o_GND_5_o_equal_80_o,
      I1 => GND_5_o_GND_5_o_AND_143_o3_627,
      I2 => pixel_row_r_15_GND_5_o_add_80_OUT_4_Q,
      I3 => row_reg_r_q(4),
      O => pixel_row(4)
    );
  Mmux_pixel_row101 : LUT4
    generic map(
      INIT => X"7520"
    )
    port map (
      I0 => GND_5_o_GND_5_o_equal_80_o,
      I1 => GND_5_o_GND_5_o_AND_143_o3_627,
      I2 => pixel_row_r_15_GND_5_o_add_80_OUT_3_Q,
      I3 => row_reg_r_q(3),
      O => pixel_row(3)
    );
  Mmux_pixel_row91 : LUT4
    generic map(
      INIT => X"7520"
    )
    port map (
      I0 => GND_5_o_GND_5_o_equal_80_o,
      I1 => GND_5_o_GND_5_o_AND_143_o3_627,
      I2 => pixel_row_r_15_GND_5_o_add_80_OUT_2_Q,
      I3 => row_reg_r_q(2),
      O => pixel_row(2)
    );
  Mmux_pixel_row81 : LUT4
    generic map(
      INIT => X"7520"
    )
    port map (
      I0 => GND_5_o_GND_5_o_equal_80_o,
      I1 => GND_5_o_GND_5_o_AND_143_o3_627,
      I2 => pixel_row_r_15_GND_5_o_add_80_OUT_1_Q,
      I3 => row_reg_r_q(1),
      O => pixel_row(1)
    );
  Mmux_pixel_row71 : LUT4
    generic map(
      INIT => X"7520"
    )
    port map (
      I0 => GND_5_o_GND_5_o_equal_80_o,
      I1 => GND_5_o_GND_5_o_AND_143_o3_627,
      I2 => pixel_row_r_15_GND_5_o_add_80_OUT_15_Q,
      I3 => row_reg_r_q(15),
      O => pixel_row(15)
    );
  Mmux_pixel_row61 : LUT4
    generic map(
      INIT => X"7520"
    )
    port map (
      I0 => GND_5_o_GND_5_o_equal_80_o,
      I1 => GND_5_o_GND_5_o_AND_143_o3_627,
      I2 => pixel_row_r_15_GND_5_o_add_80_OUT_14_Q,
      I3 => row_reg_r_q(14),
      O => pixel_row(14)
    );
  Mmux_pixel_row51 : LUT4
    generic map(
      INIT => X"7520"
    )
    port map (
      I0 => GND_5_o_GND_5_o_equal_80_o,
      I1 => GND_5_o_GND_5_o_AND_143_o3_627,
      I2 => pixel_row_r_15_GND_5_o_add_80_OUT_13_Q,
      I3 => row_reg_r_q(13),
      O => pixel_row(13)
    );
  Mmux_pixel_row31 : LUT4
    generic map(
      INIT => X"7520"
    )
    port map (
      I0 => GND_5_o_GND_5_o_equal_80_o,
      I1 => GND_5_o_GND_5_o_AND_143_o3_627,
      I2 => pixel_row_r_15_GND_5_o_add_80_OUT_11_Q,
      I3 => row_reg_r_q(11),
      O => pixel_row(11)
    );
  Mmux_pixel_row21 : LUT4
    generic map(
      INIT => X"7520"
    )
    port map (
      I0 => GND_5_o_GND_5_o_equal_80_o,
      I1 => GND_5_o_GND_5_o_AND_143_o3_627,
      I2 => pixel_row_r_15_GND_5_o_add_80_OUT_10_Q,
      I3 => row_reg_r_q(10),
      O => pixel_row(10)
    );
  Mmux_pixel_row11 : LUT4
    generic map(
      INIT => X"7520"
    )
    port map (
      I0 => GND_5_o_GND_5_o_equal_80_o,
      I1 => GND_5_o_GND_5_o_AND_143_o3_627,
      I2 => pixel_row_r_15_GND_5_o_add_80_OUT_0_Q,
      I3 => row_reg_r_q(0),
      O => pixel_row(0)
    );
  Mmux_char_address151 : LUT5
    generic map(
      INIT => X"00008F00"
    )
    port map (
      I0 => run_reg_r_q_0_37,
      I1 => mem_reg_r_q(0),
      I2 => GND_5_o_GND_5_o_equal_48_o_13_1,
      I3 => GND_5_o_GND_5_o_equal_50_o,
      I4 => run_s_0_mem_r_13_AND_140_o,
      O => Mmux_char_address15
    );
  GND_5_o_run_s_0_OR_57_o1 : LUT6
    generic map(
      INIT => X"00800000FFFFFFFF"
    )
    port map (
      I0 => sh_graph_reg_r_q(1),
      I1 => print_sig2_536,
      I2 => sh_graph_reg_r_q(0),
      I3 => sh_graph_reg_r_q(2),
      I4 => GND_5_o_GND_5_o_equal_50_o_19_1_534,
      I5 => run_reg_r_q_0_37,
      O => GND_5_o_run_s_0_OR_57_o
    );
  vga_top_i_vga_i_vga_sync_i_enable_s1 : LUT6
    generic map(
      INIT => X"0111111111111111"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_v_count_r(9),
      I1 => N17,
      I2 => vga_top_i_vga_i_vga_sync_i_v_count_r(6),
      I3 => vga_top_i_vga_i_vga_sync_i_v_count_r(5),
      I4 => vga_top_i_vga_i_vga_sync_i_v_count_r(8),
      I5 => vga_top_i_vga_i_vga_sync_i_v_count_r(7),
      O => vga_top_i_vga_i_vga_sync_i_enable_s
    );
  char_reg_Mcount_r_q_xor_0_11 : LUT6
    generic map(
      INIT => X"9666AAAAAAAAAAAA"
    )
    port map (
      I0 => char_reg_r_q(0),
      I1 => sh_graph_reg_r_q(2),
      I2 => sh_graph_reg_r_q(0),
      I3 => sh_graph_reg_r_q(1),
      I4 => print_sig2_536,
      I5 => GND_5_o_GND_5_o_equal_50_o_19_1_534,
      O => char_reg_Mcount_r_q
    );
  Mmux_run_s_i11 : LUT5
    generic map(
      INIT => X"FFFF0800"
    )
    port map (
      I0 => mem_reg_r_q(0),
      I1 => GND_5_o_GND_5_o_equal_48_o_13_12_636,
      I2 => mem_reg_r_q(2),
      I3 => GND_5_o_GND_5_o_equal_48_o_13_11_635,
      I4 => run_reg_r_q_0_37,
      O => run_s_i
    );
  graphics_reg_Mcount_r_q_eqn_01 : LUT5
    generic map(
      INIT => X"AAA2AAAA"
    )
    port map (
      I0 => Result(0),
      I1 => GND_5_o_GND_5_o_equal_67_o_0(19),
      I2 => graphics_reg_r_q(11),
      I3 => graphics_reg_r_q(12),
      I4 => GND_5_o_GND_5_o_equal_67_o_19_1_624,
      O => graphics_reg_Mcount_r_q_eqn_0
    );
  graphics_reg_Mcount_r_q_eqn_14 : LUT5
    generic map(
      INIT => X"AAA2AAAA"
    )
    port map (
      I0 => Result(1),
      I1 => GND_5_o_GND_5_o_equal_67_o_0(19),
      I2 => graphics_reg_r_q(11),
      I3 => graphics_reg_r_q(12),
      I4 => GND_5_o_GND_5_o_equal_67_o_19_1_624,
      O => graphics_reg_Mcount_r_q_eqn_1
    );
  graphics_reg_Mcount_r_q_eqn_21 : LUT5
    generic map(
      INIT => X"AAA2AAAA"
    )
    port map (
      I0 => Result(2),
      I1 => GND_5_o_GND_5_o_equal_67_o_0(19),
      I2 => graphics_reg_r_q(11),
      I3 => graphics_reg_r_q(12),
      I4 => GND_5_o_GND_5_o_equal_67_o_19_1_624,
      O => graphics_reg_Mcount_r_q_eqn_2
    );
  graphics_reg_Mcount_r_q_eqn_31 : LUT5
    generic map(
      INIT => X"AAA2AAAA"
    )
    port map (
      I0 => Result(3),
      I1 => GND_5_o_GND_5_o_equal_67_o_0(19),
      I2 => graphics_reg_r_q(11),
      I3 => graphics_reg_r_q(12),
      I4 => GND_5_o_GND_5_o_equal_67_o_19_1_624,
      O => graphics_reg_Mcount_r_q_eqn_3
    );
  graphics_reg_Mcount_r_q_eqn_41 : LUT5
    generic map(
      INIT => X"AAA2AAAA"
    )
    port map (
      I0 => Result(4),
      I1 => GND_5_o_GND_5_o_equal_67_o_0(19),
      I2 => graphics_reg_r_q(11),
      I3 => graphics_reg_r_q(12),
      I4 => GND_5_o_GND_5_o_equal_67_o_19_1_624,
      O => graphics_reg_Mcount_r_q_eqn_4
    );
  graphics_reg_Mcount_r_q_eqn_51 : LUT5
    generic map(
      INIT => X"AAA2AAAA"
    )
    port map (
      I0 => Result(5),
      I1 => GND_5_o_GND_5_o_equal_67_o_0(19),
      I2 => graphics_reg_r_q(11),
      I3 => graphics_reg_r_q(12),
      I4 => GND_5_o_GND_5_o_equal_67_o_19_1_624,
      O => graphics_reg_Mcount_r_q_eqn_5
    );
  graphics_reg_Mcount_r_q_eqn_61 : LUT5
    generic map(
      INIT => X"AAA2AAAA"
    )
    port map (
      I0 => Result(6),
      I1 => GND_5_o_GND_5_o_equal_67_o_0(19),
      I2 => graphics_reg_r_q(11),
      I3 => graphics_reg_r_q(12),
      I4 => GND_5_o_GND_5_o_equal_67_o_19_1_624,
      O => graphics_reg_Mcount_r_q_eqn_6
    );
  graphics_reg_Mcount_r_q_eqn_71 : LUT5
    generic map(
      INIT => X"AAA2AAAA"
    )
    port map (
      I0 => Result(7),
      I1 => GND_5_o_GND_5_o_equal_67_o_0(19),
      I2 => graphics_reg_r_q(11),
      I3 => graphics_reg_r_q(12),
      I4 => GND_5_o_GND_5_o_equal_67_o_19_1_624,
      O => graphics_reg_Mcount_r_q_eqn_7
    );
  graphics_reg_Mcount_r_q_eqn_81 : LUT5
    generic map(
      INIT => X"AAA2AAAA"
    )
    port map (
      I0 => Result(8),
      I1 => GND_5_o_GND_5_o_equal_67_o_0(19),
      I2 => graphics_reg_r_q(11),
      I3 => graphics_reg_r_q(12),
      I4 => GND_5_o_GND_5_o_equal_67_o_19_1_624,
      O => graphics_reg_Mcount_r_q_eqn_8
    );
  graphics_reg_Mcount_r_q_eqn_91 : LUT5
    generic map(
      INIT => X"AAA2AAAA"
    )
    port map (
      I0 => Result(9),
      I1 => GND_5_o_GND_5_o_equal_67_o_0(19),
      I2 => graphics_reg_r_q(11),
      I3 => graphics_reg_r_q(12),
      I4 => GND_5_o_GND_5_o_equal_67_o_19_1_624,
      O => graphics_reg_Mcount_r_q_eqn_9
    );
  graphics_reg_Mcount_r_q_eqn_101 : LUT5
    generic map(
      INIT => X"AAA2AAAA"
    )
    port map (
      I0 => Result(10),
      I1 => GND_5_o_GND_5_o_equal_67_o_0(19),
      I2 => graphics_reg_r_q(11),
      I3 => graphics_reg_r_q(12),
      I4 => GND_5_o_GND_5_o_equal_67_o_19_1_624,
      O => graphics_reg_Mcount_r_q_eqn_10
    );
  graphics_reg_Mcount_r_q_eqn_111 : LUT5
    generic map(
      INIT => X"AAA2AAAA"
    )
    port map (
      I0 => Result(11),
      I1 => GND_5_o_GND_5_o_equal_67_o_0(19),
      I2 => graphics_reg_r_q(11),
      I3 => graphics_reg_r_q(12),
      I4 => GND_5_o_GND_5_o_equal_67_o_19_1_624,
      O => graphics_reg_Mcount_r_q_eqn_11
    );
  graphics_reg_Mcount_r_q_eqn_121 : LUT5
    generic map(
      INIT => X"AAA2AAAA"
    )
    port map (
      I0 => Result(12),
      I1 => GND_5_o_GND_5_o_equal_67_o_0(19),
      I2 => graphics_reg_r_q(11),
      I3 => graphics_reg_r_q(12),
      I4 => GND_5_o_GND_5_o_equal_67_o_19_1_624,
      O => graphics_reg_Mcount_r_q_eqn_12
    );
  graphics_reg_Mcount_r_q_eqn_131 : LUT5
    generic map(
      INIT => X"AAA2AAAA"
    )
    port map (
      I0 => Result(13),
      I1 => GND_5_o_GND_5_o_equal_67_o_0(19),
      I2 => graphics_reg_r_q(11),
      I3 => graphics_reg_r_q(12),
      I4 => GND_5_o_GND_5_o_equal_67_o_19_1_624,
      O => graphics_reg_Mcount_r_q_eqn_13
    );
  Mmux_pixel_address61 : LUT5
    generic map(
      INIT => X"AAA2AAAA"
    )
    port map (
      I0 => graph_mem_r_19_GND_5_o_add_67_OUT_14_Q,
      I1 => GND_5_o_GND_5_o_equal_67_o_0(19),
      I2 => graphics_reg_r_q(11),
      I3 => graphics_reg_r_q(12),
      I4 => GND_5_o_GND_5_o_equal_67_o_19_1_624,
      O => pixel_address(14)
    );
  Mmux_pixel_colon91 : LUT5
    generic map(
      INIT => X"DF8A008A"
    )
    port map (
      I0 => colon_reg_r_q(2),
      I1 => colon_reg_r_q(1),
      I2 => colon_reg_r_q(0),
      I3 => draw_reg_r_q_0_91,
      I4 => pixel_colon_r_15_GND_5_o_add_73_OUT_2_Q,
      O => pixel_colon(2)
    );
  Mmux_pixel_colon81 : LUT5
    generic map(
      INIT => X"BBBB0888"
    )
    port map (
      I0 => pixel_colon_r_15_GND_5_o_add_73_OUT_1_Q,
      I1 => draw_reg_r_q_0_91,
      I2 => colon_reg_r_q(0),
      I3 => colon_reg_r_q(2),
      I4 => colon_reg_r_q(1),
      O => pixel_colon(1)
    );
  Mmux_pixel_colon11 : LUT5
    generic map(
      INIT => X"DF8A008A"
    )
    port map (
      I0 => colon_reg_r_q(0),
      I1 => colon_reg_r_q(1),
      I2 => colon_reg_r_q(2),
      I3 => draw_reg_r_q_0_91,
      I4 => pixel_colon_r_15_GND_5_o_add_73_OUT_0_Q,
      O => pixel_colon(0)
    );
  Mmux_pixel_address11 : LUT5
    generic map(
      INIT => X"AAA2AAAA"
    )
    port map (
      I0 => graph_mem_r_19_GND_5_o_add_67_OUT_0_Q,
      I1 => GND_5_o_GND_5_o_equal_67_o_0(19),
      I2 => graphics_reg_r_q(11),
      I3 => graphics_reg_r_q(12),
      I4 => GND_5_o_GND_5_o_equal_67_o_19_1_624,
      O => pixel_address(0)
    );
  Mmux_pixel_address121 : LUT5
    generic map(
      INIT => X"AAA2AAAA"
    )
    port map (
      I0 => graph_mem_r_19_GND_5_o_add_67_OUT_1_Q,
      I1 => GND_5_o_GND_5_o_equal_67_o_0(19),
      I2 => graphics_reg_r_q(11),
      I3 => graphics_reg_r_q(12),
      I4 => GND_5_o_GND_5_o_equal_67_o_19_1_624,
      O => pixel_address(1)
    );
  Mmux_pixel_address131 : LUT5
    generic map(
      INIT => X"AAA2AAAA"
    )
    port map (
      I0 => graph_mem_r_19_GND_5_o_add_67_OUT_2_Q,
      I1 => GND_5_o_GND_5_o_equal_67_o_0(19),
      I2 => graphics_reg_r_q(11),
      I3 => graphics_reg_r_q(12),
      I4 => GND_5_o_GND_5_o_equal_67_o_19_1_624,
      O => pixel_address(2)
    );
  Mmux_pixel_address141 : LUT5
    generic map(
      INIT => X"AAA2AAAA"
    )
    port map (
      I0 => graph_mem_r_19_GND_5_o_add_67_OUT_3_Q,
      I1 => GND_5_o_GND_5_o_equal_67_o_0(19),
      I2 => graphics_reg_r_q(11),
      I3 => graphics_reg_r_q(12),
      I4 => GND_5_o_GND_5_o_equal_67_o_19_1_624,
      O => pixel_address(3)
    );
  Mmux_pixel_address151 : LUT5
    generic map(
      INIT => X"AAA2AAAA"
    )
    port map (
      I0 => graph_mem_r_19_GND_5_o_add_67_OUT_4_Q,
      I1 => GND_5_o_GND_5_o_equal_67_o_0(19),
      I2 => graphics_reg_r_q(11),
      I3 => graphics_reg_r_q(12),
      I4 => GND_5_o_GND_5_o_equal_67_o_19_1_624,
      O => pixel_address(4)
    );
  Mmux_pixel_address161 : LUT5
    generic map(
      INIT => X"AAA2AAAA"
    )
    port map (
      I0 => graph_mem_r_19_GND_5_o_add_67_OUT_5_Q,
      I1 => GND_5_o_GND_5_o_equal_67_o_0(19),
      I2 => graphics_reg_r_q(11),
      I3 => graphics_reg_r_q(12),
      I4 => GND_5_o_GND_5_o_equal_67_o_19_1_624,
      O => pixel_address(5)
    );
  Mmux_pixel_address171 : LUT5
    generic map(
      INIT => X"AAA2AAAA"
    )
    port map (
      I0 => graph_mem_r_19_GND_5_o_add_67_OUT_6_Q,
      I1 => GND_5_o_GND_5_o_equal_67_o_0(19),
      I2 => graphics_reg_r_q(11),
      I3 => graphics_reg_r_q(12),
      I4 => GND_5_o_GND_5_o_equal_67_o_19_1_624,
      O => pixel_address(6)
    );
  Mmux_pixel_address181 : LUT5
    generic map(
      INIT => X"AAA2AAAA"
    )
    port map (
      I0 => graph_mem_r_19_GND_5_o_add_67_OUT_7_Q,
      I1 => GND_5_o_GND_5_o_equal_67_o_0(19),
      I2 => graphics_reg_r_q(11),
      I3 => graphics_reg_r_q(12),
      I4 => GND_5_o_GND_5_o_equal_67_o_19_1_624,
      O => pixel_address(7)
    );
  Mmux_pixel_address191 : LUT5
    generic map(
      INIT => X"AAA2AAAA"
    )
    port map (
      I0 => graph_mem_r_19_GND_5_o_add_67_OUT_8_Q,
      I1 => GND_5_o_GND_5_o_equal_67_o_0(19),
      I2 => graphics_reg_r_q(11),
      I3 => graphics_reg_r_q(12),
      I4 => GND_5_o_GND_5_o_equal_67_o_19_1_624,
      O => pixel_address(8)
    );
  Mmux_pixel_address201 : LUT5
    generic map(
      INIT => X"AAA2AAAA"
    )
    port map (
      I0 => graph_mem_r_19_GND_5_o_add_67_OUT_9_Q,
      I1 => GND_5_o_GND_5_o_equal_67_o_0(19),
      I2 => graphics_reg_r_q(11),
      I3 => graphics_reg_r_q(12),
      I4 => GND_5_o_GND_5_o_equal_67_o_19_1_624,
      O => pixel_address(9)
    );
  Mmux_pixel_address21 : LUT5
    generic map(
      INIT => X"AAA2AAAA"
    )
    port map (
      I0 => graph_mem_r_19_GND_5_o_add_67_OUT_10_Q,
      I1 => GND_5_o_GND_5_o_equal_67_o_0(19),
      I2 => graphics_reg_r_q(11),
      I3 => graphics_reg_r_q(12),
      I4 => GND_5_o_GND_5_o_equal_67_o_19_1_624,
      O => pixel_address(10)
    );
  Mmux_pixel_address31 : LUT5
    generic map(
      INIT => X"AAA2AAAA"
    )
    port map (
      I0 => graph_mem_r_19_GND_5_o_add_67_OUT_11_Q,
      I1 => GND_5_o_GND_5_o_equal_67_o_0(19),
      I2 => graphics_reg_r_q(11),
      I3 => graphics_reg_r_q(12),
      I4 => GND_5_o_GND_5_o_equal_67_o_19_1_624,
      O => pixel_address(11)
    );
  Mmux_pixel_address41 : LUT5
    generic map(
      INIT => X"E0F0F0F0"
    )
    port map (
      I0 => graphics_reg_r_q(12),
      I1 => graphics_reg_r_q(11),
      I2 => graph_mem_r_19_GND_5_o_add_67_OUT_12_Q,
      I3 => GND_5_o_GND_5_o_equal_67_o_19_1_624,
      I4 => GND_5_o_GND_5_o_equal_67_o_0(19),
      O => pixel_address(12)
    );
  Mmux_pixel_address51 : LUT5
    generic map(
      INIT => X"AAA2AAAA"
    )
    port map (
      I0 => graph_mem_r_19_GND_5_o_add_67_OUT_13_Q,
      I1 => GND_5_o_GND_5_o_equal_67_o_0(19),
      I2 => graphics_reg_r_q(11),
      I3 => graphics_reg_r_q(12),
      I4 => GND_5_o_GND_5_o_equal_67_o_19_1_624,
      O => pixel_address(13)
    );
  Mmux_char_address10211 : LUT6
    generic map(
      INIT => X"00000000F8FFFFFF"
    )
    port map (
      I0 => run_reg_r_q_0_37,
      I1 => mem_reg_r_q(0),
      I2 => mem_reg_r_q(2),
      I3 => GND_5_o_GND_5_o_equal_48_o_13_11_635,
      I4 => GND_5_o_GND_5_o_equal_48_o_13_12_636,
      I5 => run_s_0_mem_r_13_AND_140_o,
      O => Mmux_char_address1021
    );
  Madd_mem_r_13_GND_5_o_add_51_OUT_lut_0_INV_0 : INV
    port map (
      I => mem_reg_r_q(0),
      O => Madd_mem_r_13_GND_5_o_add_51_OUT_lut_0_Q
    );
  Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_2_INV_0 : INV
    port map (
      I => mem_reg_r_q(2),
      O => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_2_Q
    );
  Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_3_INV_0 : INV
    port map (
      I => mem_reg_r_q(3),
      O => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_3_Q
    );
  Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_4_INV_0 : INV
    port map (
      I => mem_reg_r_q(4),
      O => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_4_Q
    );
  Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_5_INV_0 : INV
    port map (
      I => mem_reg_r_q(5),
      O => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_5_Q
    );
  Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_6_INV_0 : INV
    port map (
      I => mem_reg_r_q(6),
      O => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_6_Q
    );
  Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_7_INV_0 : INV
    port map (
      I => mem_reg_r_q(7),
      O => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_7_Q
    );
  Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_8_INV_0 : INV
    port map (
      I => mem_reg_r_q(8),
      O => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_8_Q
    );
  Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_9_INV_0 : INV
    port map (
      I => mem_reg_r_q(9),
      O => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_9_Q
    );
  Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_10_INV_0 : INV
    port map (
      I => mem_reg_r_q(10),
      O => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_10_Q
    );
  Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_11_INV_0 : INV
    port map (
      I => mem_reg_r_q(11),
      O => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_11_Q
    );
  Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_12_INV_0 : INV
    port map (
      I => mem_reg_r_q(12),
      O => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_12_Q
    );
  Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_13_INV_0 : INV
    port map (
      I => mem_reg_r_q(13),
      O => Msub_GND_5_o_GND_5_o_sub_51_OUT_13_0_lut_13_Q
    );
  Madd_graph_mem_r_19_GND_5_o_add_67_OUT_lut_0_INV_0 : INV
    port map (
      I => graphics_reg_r_q(0),
      O => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_lut_0_Q
    );
  Madd_pixel_colon_r_15_GND_5_o_add_73_OUT_lut_0_INV_0 : INV
    port map (
      I => colon_reg_r_q(0),
      O => Madd_pixel_colon_r_15_GND_5_o_add_73_OUT_lut_0_Q
    );
  Madd_pixel_row_r_15_GND_5_o_add_80_OUT_lut_0_INV_0 : INV
    port map (
      I => row_reg_r_q(0),
      O => Madd_pixel_row_r_15_GND_5_o_add_80_OUT_lut_0_Q
    );
  Madd_sh_graph_cnt_lut_0_INV_0 : INV
    port map (
      I => sh_graph_reg_r_q(0),
      O => Madd_sh_graph_cnt_lut(0)
    );
  sh_graph_reg_Mcount_r_q_lut_0_INV_0 : INV
    port map (
      I => sh_graph_reg_r_q(0),
      O => sh_graph_reg_Mcount_r_q_lut(0)
    );
  graphics_reg_Mcount_r_q_lut_0_INV_0 : INV
    port map (
      I => graphics_reg_r_q(0),
      O => graphics_reg_Mcount_r_q_lut(0)
    );
  Madd_pixel_row_r_15_GND_5_o_add_70_OUT_lut_2_INV_0 : INV
    port map (
      I => row_reg_r_q(2),
      O => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_lut_2_Q
    );
  Madd_pixel_row_r_15_GND_5_o_add_70_OUT_lut_6_INV_0 : INV
    port map (
      I => row_reg_r_q(6),
      O => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_lut_6_Q
    );
  Madd_pixel_row_r_15_GND_5_o_add_70_OUT_lut_9_INV_0 : INV
    port map (
      I => row_reg_r_q(9),
      O => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_lut_9_Q
    );
  Madd_pixel_row_r_15_GND_5_o_add_70_OUT_lut_10_INV_0 : INV
    port map (
      I => row_reg_r_q(10),
      O => Madd_pixel_row_r_15_GND_5_o_add_70_OUT_lut_10_Q
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_lut_0_INV_0 : INV
    port map (
      I => vga_top_i_vga_i_vga_sync_i_v_count_r(0),
      O => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_lut(0)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_lut_0_INV_0 : INV
    port map (
      I => vga_top_i_vga_i_vga_sync_i_h_count_r(0),
      O => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_lut(0)
    );
  pix_clock_n1_INV_0 : INV
    port map (
      I => vga_top_i_vga_i_clk_s,
      O => pix_clock_n
    );
  vga_top_i_vga_i_rst_n_i_inv1_INV_0 : INV
    port map (
      I => reset_n_i_IBUF_1,
      O => vga_top_i_vga_i_rst_n_i_inv
    );
  draw_reg_in_rst_inv1_INV_0 : INV
    port map (
      I => vga_top_i_vga_i_locked_del_reg_r_18,
      O => colon_reg_in_rst_inv
    );
  Mcompar_pixel_address_19_GND_5_o_equal_70_o_lut_5_1_INV_0 : INV
    port map (
      I => row_reg_r_q(15),
      O => Mcompar_pixel_address_19_GND_5_o_equal_70_o_lut_5_Q
    );
  Mcompar_pixel_address_19_GND_5_o_equal_72_o_lut_5_1_INV_0 : INV
    port map (
      I => pixel_row_r_15_GND_5_o_add_70_OUT_15_Q,
      O => Mcompar_pixel_address_19_GND_5_o_equal_72_o_lut_5_Q
    );
  vga_top_i_text_mem_i_Mram_text_mem1 : RAMB16BWER
    generic map(
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      DATA_WIDTH_A => 2,
      DATA_WIDTH_B => 2,
      DOA_REG => 0,
      DOB_REG => 0,
      EN_RSTRAM_A => TRUE,
      EN_RSTRAM_B => TRUE,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RST_PRIORITY_A => "CE",
      RST_PRIORITY_B => "CE",
      RSTTYPE => "SYNC",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "SPARTAN6",
      INIT_FILE => "NONE"
    )
    port map (
      REGCEA => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      CLKA => vga_top_i_vga_i_clk_s,
      ENB => pixel_we,
      RSTB => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      CLKB => vga_top_i_vga_i_clk_s,
      REGCEB => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      RSTA => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      ENA => pixel_we,
      DIPA(3) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIPA_3_UNCONNECTED,
      DIPA(2) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIPA_2_UNCONNECTED,
      DIPA(1) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIPA_1_UNCONNECTED,
      DIPA(0) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIPA_0_UNCONNECTED,
      WEA(3) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      WEA(2) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      WEA(1) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      WEA(0) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      DOA(31) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_31_UNCONNECTED,
      DOA(30) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_30_UNCONNECTED,
      DOA(29) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_29_UNCONNECTED,
      DOA(28) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_28_UNCONNECTED,
      DOA(27) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_27_UNCONNECTED,
      DOA(26) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_26_UNCONNECTED,
      DOA(25) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_25_UNCONNECTED,
      DOA(24) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_24_UNCONNECTED,
      DOA(23) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_23_UNCONNECTED,
      DOA(22) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_22_UNCONNECTED,
      DOA(21) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_21_UNCONNECTED,
      DOA(20) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_20_UNCONNECTED,
      DOA(19) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_19_UNCONNECTED,
      DOA(18) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_18_UNCONNECTED,
      DOA(17) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_17_UNCONNECTED,
      DOA(16) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_16_UNCONNECTED,
      DOA(15) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_15_UNCONNECTED,
      DOA(14) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_14_UNCONNECTED,
      DOA(13) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_13_UNCONNECTED,
      DOA(12) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_12_UNCONNECTED,
      DOA(11) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_11_UNCONNECTED,
      DOA(10) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_10_UNCONNECTED,
      DOA(9) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_9_UNCONNECTED,
      DOA(8) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_8_UNCONNECTED,
      DOA(7) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_7_UNCONNECTED,
      DOA(6) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_6_UNCONNECTED,
      DOA(5) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_5_UNCONNECTED,
      DOA(4) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_4_UNCONNECTED,
      DOA(3) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_3_UNCONNECTED,
      DOA(2) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_2_UNCONNECTED,
      DOA(1) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_1_UNCONNECTED,
      DOA(0) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOA_0_UNCONNECTED,
      ADDRA(13) => char_address(12),
      ADDRA(12) => char_address(11),
      ADDRA(11) => char_address(10),
      ADDRA(10) => char_address(9),
      ADDRA(9) => char_address(8),
      ADDRA(8) => char_address(7),
      ADDRA(7) => char_address(6),
      ADDRA(6) => char_address(5),
      ADDRA(5) => char_address(4),
      ADDRA(4) => char_address(3),
      ADDRA(3) => char_address(2),
      ADDRA(2) => char_address(1),
      ADDRA(1) => char_address(0),
      ADDRA(0) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_ADDRA_0_UNCONNECTED,
      ADDRB(13) => vga_top_i_text_mem_i_index(12),
      ADDRB(12) => vga_top_i_text_mem_i_index(11),
      ADDRB(11) => vga_top_i_text_mem_i_index(10),
      ADDRB(10) => vga_top_i_text_mem_i_index(9),
      ADDRB(9) => vga_top_i_text_mem_i_index(8),
      ADDRB(8) => vga_top_i_text_mem_i_index(7),
      ADDRB(7) => vga_top_i_text_mem_i_index(6),
      ADDRB(6) => vga_top_i_text_mem_i_index(5),
      ADDRB(5) => vga_top_i_text_mem_i_index(4),
      ADDRB(4) => vga_top_i_text_mem_i_index(3),
      ADDRB(3) => vga_top_i_text_mem_i_index(2),
      ADDRB(2) => vga_top_i_text_mem_i_index(1),
      ADDRB(1) => vga_top_i_text_mem_i_index(0),
      ADDRB(0) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_ADDRB_0_UNCONNECTED,
      DIB(31) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_31_UNCONNECTED,
      DIB(30) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_30_UNCONNECTED,
      DIB(29) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_29_UNCONNECTED,
      DIB(28) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_28_UNCONNECTED,
      DIB(27) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_27_UNCONNECTED,
      DIB(26) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_26_UNCONNECTED,
      DIB(25) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_25_UNCONNECTED,
      DIB(24) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_24_UNCONNECTED,
      DIB(23) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_23_UNCONNECTED,
      DIB(22) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_22_UNCONNECTED,
      DIB(21) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_21_UNCONNECTED,
      DIB(20) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_20_UNCONNECTED,
      DIB(19) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_19_UNCONNECTED,
      DIB(18) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_18_UNCONNECTED,
      DIB(17) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_17_UNCONNECTED,
      DIB(16) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_16_UNCONNECTED,
      DIB(15) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_15_UNCONNECTED,
      DIB(14) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_14_UNCONNECTED,
      DIB(13) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_13_UNCONNECTED,
      DIB(12) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_12_UNCONNECTED,
      DIB(11) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_11_UNCONNECTED,
      DIB(10) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_10_UNCONNECTED,
      DIB(9) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_9_UNCONNECTED,
      DIB(8) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_8_UNCONNECTED,
      DIB(7) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_7_UNCONNECTED,
      DIB(6) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_6_UNCONNECTED,
      DIB(5) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_5_UNCONNECTED,
      DIB(4) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_4_UNCONNECTED,
      DIB(3) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_3_UNCONNECTED,
      DIB(2) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_2_UNCONNECTED,
      DIB(1) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_1_UNCONNECTED,
      DIB(0) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIB_0_UNCONNECTED,
      DOPA(3) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOPA_3_UNCONNECTED,
      DOPA(2) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOPA_2_UNCONNECTED,
      DOPA(1) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOPA_1_UNCONNECTED,
      DOPA(0) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOPA_0_UNCONNECTED,
      DIPB(3) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIPB_3_UNCONNECTED,
      DIPB(2) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIPB_2_UNCONNECTED,
      DIPB(1) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIPB_1_UNCONNECTED,
      DIPB(0) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIPB_0_UNCONNECTED,
      DOPB(3) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOPB_3_UNCONNECTED,
      DOPB(2) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOPB_2_UNCONNECTED,
      DOPB(1) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOPB_1_UNCONNECTED,
      DOPB(0) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOPB_0_UNCONNECTED,
      DOB(31) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_31_UNCONNECTED,
      DOB(30) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_30_UNCONNECTED,
      DOB(29) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_29_UNCONNECTED,
      DOB(28) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_28_UNCONNECTED,
      DOB(27) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_27_UNCONNECTED,
      DOB(26) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_26_UNCONNECTED,
      DOB(25) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_25_UNCONNECTED,
      DOB(24) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_24_UNCONNECTED,
      DOB(23) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_23_UNCONNECTED,
      DOB(22) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_22_UNCONNECTED,
      DOB(21) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_21_UNCONNECTED,
      DOB(20) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_20_UNCONNECTED,
      DOB(19) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_19_UNCONNECTED,
      DOB(18) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_18_UNCONNECTED,
      DOB(17) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_17_UNCONNECTED,
      DOB(16) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_16_UNCONNECTED,
      DOB(15) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_15_UNCONNECTED,
      DOB(14) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_14_UNCONNECTED,
      DOB(13) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_13_UNCONNECTED,
      DOB(12) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_12_UNCONNECTED,
      DOB(11) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_11_UNCONNECTED,
      DOB(10) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_10_UNCONNECTED,
      DOB(9) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_9_UNCONNECTED,
      DOB(8) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_8_UNCONNECTED,
      DOB(7) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_7_UNCONNECTED,
      DOB(6) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_6_UNCONNECTED,
      DOB(5) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_5_UNCONNECTED,
      DOB(4) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_4_UNCONNECTED,
      DOB(3) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_3_UNCONNECTED,
      DOB(2) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DOB_2_UNCONNECTED,
      DOB(1) => vga_top_i_char_addr_s(1),
      DOB(0) => vga_top_i_char_addr_s(0),
      WEB(3) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      WEB(2) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      WEB(1) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      WEB(0) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      DIA(31) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_31_UNCONNECTED,
      DIA(30) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_30_UNCONNECTED,
      DIA(29) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_29_UNCONNECTED,
      DIA(28) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_28_UNCONNECTED,
      DIA(27) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_27_UNCONNECTED,
      DIA(26) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_26_UNCONNECTED,
      DIA(25) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_25_UNCONNECTED,
      DIA(24) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_24_UNCONNECTED,
      DIA(23) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_23_UNCONNECTED,
      DIA(22) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_22_UNCONNECTED,
      DIA(21) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_21_UNCONNECTED,
      DIA(20) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_20_UNCONNECTED,
      DIA(19) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_19_UNCONNECTED,
      DIA(18) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_18_UNCONNECTED,
      DIA(17) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_17_UNCONNECTED,
      DIA(16) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_16_UNCONNECTED,
      DIA(15) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_15_UNCONNECTED,
      DIA(14) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_14_UNCONNECTED,
      DIA(13) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_13_UNCONNECTED,
      DIA(12) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_12_UNCONNECTED,
      DIA(11) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_11_UNCONNECTED,
      DIA(10) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_10_UNCONNECTED,
      DIA(9) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_9_UNCONNECTED,
      DIA(8) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_8_UNCONNECTED,
      DIA(7) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_7_UNCONNECTED,
      DIA(6) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_6_UNCONNECTED,
      DIA(5) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_5_UNCONNECTED,
      DIA(4) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_4_UNCONNECTED,
      DIA(3) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_3_UNCONNECTED,
      DIA(2) => NLW_vga_top_i_text_mem_i_Mram_text_mem1_DIA_2_UNCONNECTED,
      DIA(1) => char_value(1),
      DIA(0) => char_value(0)
    );
  vga_top_i_text_mem_i_Mram_text_mem2 : RAMB16BWER
    generic map(
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      DATA_WIDTH_A => 2,
      DATA_WIDTH_B => 2,
      DOA_REG => 0,
      DOB_REG => 0,
      EN_RSTRAM_A => TRUE,
      EN_RSTRAM_B => TRUE,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RST_PRIORITY_A => "CE",
      RST_PRIORITY_B => "CE",
      RSTTYPE => "SYNC",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "SPARTAN6",
      INIT_FILE => "NONE"
    )
    port map (
      REGCEA => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      CLKA => vga_top_i_vga_i_clk_s,
      ENB => pixel_we,
      RSTB => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      CLKB => vga_top_i_vga_i_clk_s,
      REGCEB => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      RSTA => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      ENA => pixel_we,
      DIPA(3) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIPA_3_UNCONNECTED,
      DIPA(2) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIPA_2_UNCONNECTED,
      DIPA(1) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIPA_1_UNCONNECTED,
      DIPA(0) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIPA_0_UNCONNECTED,
      WEA(3) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      WEA(2) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      WEA(1) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      WEA(0) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      DOA(31) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_31_UNCONNECTED,
      DOA(30) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_30_UNCONNECTED,
      DOA(29) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_29_UNCONNECTED,
      DOA(28) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_28_UNCONNECTED,
      DOA(27) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_27_UNCONNECTED,
      DOA(26) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_26_UNCONNECTED,
      DOA(25) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_25_UNCONNECTED,
      DOA(24) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_24_UNCONNECTED,
      DOA(23) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_23_UNCONNECTED,
      DOA(22) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_22_UNCONNECTED,
      DOA(21) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_21_UNCONNECTED,
      DOA(20) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_20_UNCONNECTED,
      DOA(19) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_19_UNCONNECTED,
      DOA(18) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_18_UNCONNECTED,
      DOA(17) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_17_UNCONNECTED,
      DOA(16) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_16_UNCONNECTED,
      DOA(15) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_15_UNCONNECTED,
      DOA(14) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_14_UNCONNECTED,
      DOA(13) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_13_UNCONNECTED,
      DOA(12) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_12_UNCONNECTED,
      DOA(11) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_11_UNCONNECTED,
      DOA(10) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_10_UNCONNECTED,
      DOA(9) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_9_UNCONNECTED,
      DOA(8) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_8_UNCONNECTED,
      DOA(7) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_7_UNCONNECTED,
      DOA(6) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_6_UNCONNECTED,
      DOA(5) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_5_UNCONNECTED,
      DOA(4) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_4_UNCONNECTED,
      DOA(3) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_3_UNCONNECTED,
      DOA(2) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_2_UNCONNECTED,
      DOA(1) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_1_UNCONNECTED,
      DOA(0) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOA_0_UNCONNECTED,
      ADDRA(13) => char_address(12),
      ADDRA(12) => char_address(11),
      ADDRA(11) => char_address(10),
      ADDRA(10) => char_address(9),
      ADDRA(9) => char_address(8),
      ADDRA(8) => char_address(7),
      ADDRA(7) => char_address(6),
      ADDRA(6) => char_address(5),
      ADDRA(5) => char_address(4),
      ADDRA(4) => char_address(3),
      ADDRA(3) => char_address(2),
      ADDRA(2) => char_address(1),
      ADDRA(1) => char_address(0),
      ADDRA(0) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_ADDRA_0_UNCONNECTED,
      ADDRB(13) => vga_top_i_text_mem_i_index(12),
      ADDRB(12) => vga_top_i_text_mem_i_index(11),
      ADDRB(11) => vga_top_i_text_mem_i_index(10),
      ADDRB(10) => vga_top_i_text_mem_i_index(9),
      ADDRB(9) => vga_top_i_text_mem_i_index(8),
      ADDRB(8) => vga_top_i_text_mem_i_index(7),
      ADDRB(7) => vga_top_i_text_mem_i_index(6),
      ADDRB(6) => vga_top_i_text_mem_i_index(5),
      ADDRB(5) => vga_top_i_text_mem_i_index(4),
      ADDRB(4) => vga_top_i_text_mem_i_index(3),
      ADDRB(3) => vga_top_i_text_mem_i_index(2),
      ADDRB(2) => vga_top_i_text_mem_i_index(1),
      ADDRB(1) => vga_top_i_text_mem_i_index(0),
      ADDRB(0) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_ADDRB_0_UNCONNECTED,
      DIB(31) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_31_UNCONNECTED,
      DIB(30) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_30_UNCONNECTED,
      DIB(29) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_29_UNCONNECTED,
      DIB(28) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_28_UNCONNECTED,
      DIB(27) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_27_UNCONNECTED,
      DIB(26) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_26_UNCONNECTED,
      DIB(25) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_25_UNCONNECTED,
      DIB(24) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_24_UNCONNECTED,
      DIB(23) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_23_UNCONNECTED,
      DIB(22) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_22_UNCONNECTED,
      DIB(21) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_21_UNCONNECTED,
      DIB(20) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_20_UNCONNECTED,
      DIB(19) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_19_UNCONNECTED,
      DIB(18) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_18_UNCONNECTED,
      DIB(17) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_17_UNCONNECTED,
      DIB(16) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_16_UNCONNECTED,
      DIB(15) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_15_UNCONNECTED,
      DIB(14) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_14_UNCONNECTED,
      DIB(13) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_13_UNCONNECTED,
      DIB(12) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_12_UNCONNECTED,
      DIB(11) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_11_UNCONNECTED,
      DIB(10) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_10_UNCONNECTED,
      DIB(9) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_9_UNCONNECTED,
      DIB(8) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_8_UNCONNECTED,
      DIB(7) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_7_UNCONNECTED,
      DIB(6) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_6_UNCONNECTED,
      DIB(5) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_5_UNCONNECTED,
      DIB(4) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_4_UNCONNECTED,
      DIB(3) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_3_UNCONNECTED,
      DIB(2) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_2_UNCONNECTED,
      DIB(1) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_1_UNCONNECTED,
      DIB(0) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIB_0_UNCONNECTED,
      DOPA(3) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOPA_3_UNCONNECTED,
      DOPA(2) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOPA_2_UNCONNECTED,
      DOPA(1) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOPA_1_UNCONNECTED,
      DOPA(0) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOPA_0_UNCONNECTED,
      DIPB(3) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIPB_3_UNCONNECTED,
      DIPB(2) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIPB_2_UNCONNECTED,
      DIPB(1) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIPB_1_UNCONNECTED,
      DIPB(0) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIPB_0_UNCONNECTED,
      DOPB(3) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOPB_3_UNCONNECTED,
      DOPB(2) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOPB_2_UNCONNECTED,
      DOPB(1) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOPB_1_UNCONNECTED,
      DOPB(0) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOPB_0_UNCONNECTED,
      DOB(31) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_31_UNCONNECTED,
      DOB(30) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_30_UNCONNECTED,
      DOB(29) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_29_UNCONNECTED,
      DOB(28) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_28_UNCONNECTED,
      DOB(27) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_27_UNCONNECTED,
      DOB(26) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_26_UNCONNECTED,
      DOB(25) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_25_UNCONNECTED,
      DOB(24) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_24_UNCONNECTED,
      DOB(23) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_23_UNCONNECTED,
      DOB(22) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_22_UNCONNECTED,
      DOB(21) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_21_UNCONNECTED,
      DOB(20) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_20_UNCONNECTED,
      DOB(19) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_19_UNCONNECTED,
      DOB(18) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_18_UNCONNECTED,
      DOB(17) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_17_UNCONNECTED,
      DOB(16) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_16_UNCONNECTED,
      DOB(15) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_15_UNCONNECTED,
      DOB(14) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_14_UNCONNECTED,
      DOB(13) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_13_UNCONNECTED,
      DOB(12) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_12_UNCONNECTED,
      DOB(11) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_11_UNCONNECTED,
      DOB(10) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_10_UNCONNECTED,
      DOB(9) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_9_UNCONNECTED,
      DOB(8) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_8_UNCONNECTED,
      DOB(7) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_7_UNCONNECTED,
      DOB(6) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_6_UNCONNECTED,
      DOB(5) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_5_UNCONNECTED,
      DOB(4) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_4_UNCONNECTED,
      DOB(3) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_3_UNCONNECTED,
      DOB(2) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DOB_2_UNCONNECTED,
      DOB(1) => vga_top_i_char_addr_s(3),
      DOB(0) => vga_top_i_char_addr_s(2),
      WEB(3) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      WEB(2) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      WEB(1) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      WEB(0) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      DIA(31) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_31_UNCONNECTED,
      DIA(30) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_30_UNCONNECTED,
      DIA(29) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_29_UNCONNECTED,
      DIA(28) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_28_UNCONNECTED,
      DIA(27) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_27_UNCONNECTED,
      DIA(26) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_26_UNCONNECTED,
      DIA(25) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_25_UNCONNECTED,
      DIA(24) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_24_UNCONNECTED,
      DIA(23) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_23_UNCONNECTED,
      DIA(22) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_22_UNCONNECTED,
      DIA(21) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_21_UNCONNECTED,
      DIA(20) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_20_UNCONNECTED,
      DIA(19) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_19_UNCONNECTED,
      DIA(18) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_18_UNCONNECTED,
      DIA(17) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_17_UNCONNECTED,
      DIA(16) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_16_UNCONNECTED,
      DIA(15) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_15_UNCONNECTED,
      DIA(14) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_14_UNCONNECTED,
      DIA(13) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_13_UNCONNECTED,
      DIA(12) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_12_UNCONNECTED,
      DIA(11) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_11_UNCONNECTED,
      DIA(10) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_10_UNCONNECTED,
      DIA(9) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_9_UNCONNECTED,
      DIA(8) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_8_UNCONNECTED,
      DIA(7) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_7_UNCONNECTED,
      DIA(6) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_6_UNCONNECTED,
      DIA(5) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_5_UNCONNECTED,
      DIA(4) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_4_UNCONNECTED,
      DIA(3) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_3_UNCONNECTED,
      DIA(2) => NLW_vga_top_i_text_mem_i_Mram_text_mem2_DIA_2_UNCONNECTED,
      DIA(1) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      DIA(0) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q
    );
  vga_top_i_text_mem_i_Mram_text_mem3 : RAMB16BWER
    generic map(
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      DATA_WIDTH_A => 2,
      DATA_WIDTH_B => 2,
      DOA_REG => 0,
      DOB_REG => 0,
      EN_RSTRAM_A => TRUE,
      EN_RSTRAM_B => TRUE,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RST_PRIORITY_A => "CE",
      RST_PRIORITY_B => "CE",
      RSTTYPE => "SYNC",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "SPARTAN6",
      INIT_FILE => "NONE"
    )
    port map (
      REGCEA => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      CLKA => vga_top_i_vga_i_clk_s,
      ENB => pixel_we,
      RSTB => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      CLKB => vga_top_i_vga_i_clk_s,
      REGCEB => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      RSTA => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      ENA => pixel_we,
      DIPA(3) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIPA_3_UNCONNECTED,
      DIPA(2) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIPA_2_UNCONNECTED,
      DIPA(1) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIPA_1_UNCONNECTED,
      DIPA(0) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIPA_0_UNCONNECTED,
      WEA(3) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      WEA(2) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      WEA(1) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      WEA(0) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      DOA(31) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_31_UNCONNECTED,
      DOA(30) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_30_UNCONNECTED,
      DOA(29) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_29_UNCONNECTED,
      DOA(28) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_28_UNCONNECTED,
      DOA(27) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_27_UNCONNECTED,
      DOA(26) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_26_UNCONNECTED,
      DOA(25) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_25_UNCONNECTED,
      DOA(24) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_24_UNCONNECTED,
      DOA(23) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_23_UNCONNECTED,
      DOA(22) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_22_UNCONNECTED,
      DOA(21) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_21_UNCONNECTED,
      DOA(20) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_20_UNCONNECTED,
      DOA(19) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_19_UNCONNECTED,
      DOA(18) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_18_UNCONNECTED,
      DOA(17) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_17_UNCONNECTED,
      DOA(16) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_16_UNCONNECTED,
      DOA(15) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_15_UNCONNECTED,
      DOA(14) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_14_UNCONNECTED,
      DOA(13) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_13_UNCONNECTED,
      DOA(12) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_12_UNCONNECTED,
      DOA(11) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_11_UNCONNECTED,
      DOA(10) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_10_UNCONNECTED,
      DOA(9) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_9_UNCONNECTED,
      DOA(8) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_8_UNCONNECTED,
      DOA(7) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_7_UNCONNECTED,
      DOA(6) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_6_UNCONNECTED,
      DOA(5) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_5_UNCONNECTED,
      DOA(4) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_4_UNCONNECTED,
      DOA(3) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_3_UNCONNECTED,
      DOA(2) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_2_UNCONNECTED,
      DOA(1) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_1_UNCONNECTED,
      DOA(0) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_0_UNCONNECTED,
      ADDRA(13) => char_address(12),
      ADDRA(12) => char_address(11),
      ADDRA(11) => char_address(10),
      ADDRA(10) => char_address(9),
      ADDRA(9) => char_address(8),
      ADDRA(8) => char_address(7),
      ADDRA(7) => char_address(6),
      ADDRA(6) => char_address(5),
      ADDRA(5) => char_address(4),
      ADDRA(4) => char_address(3),
      ADDRA(3) => char_address(2),
      ADDRA(2) => char_address(1),
      ADDRA(1) => char_address(0),
      ADDRA(0) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_ADDRA_0_UNCONNECTED,
      ADDRB(13) => vga_top_i_text_mem_i_index(12),
      ADDRB(12) => vga_top_i_text_mem_i_index(11),
      ADDRB(11) => vga_top_i_text_mem_i_index(10),
      ADDRB(10) => vga_top_i_text_mem_i_index(9),
      ADDRB(9) => vga_top_i_text_mem_i_index(8),
      ADDRB(8) => vga_top_i_text_mem_i_index(7),
      ADDRB(7) => vga_top_i_text_mem_i_index(6),
      ADDRB(6) => vga_top_i_text_mem_i_index(5),
      ADDRB(5) => vga_top_i_text_mem_i_index(4),
      ADDRB(4) => vga_top_i_text_mem_i_index(3),
      ADDRB(3) => vga_top_i_text_mem_i_index(2),
      ADDRB(2) => vga_top_i_text_mem_i_index(1),
      ADDRB(1) => vga_top_i_text_mem_i_index(0),
      ADDRB(0) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_ADDRB_0_UNCONNECTED,
      DIB(31) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_31_UNCONNECTED,
      DIB(30) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_30_UNCONNECTED,
      DIB(29) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_29_UNCONNECTED,
      DIB(28) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_28_UNCONNECTED,
      DIB(27) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_27_UNCONNECTED,
      DIB(26) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_26_UNCONNECTED,
      DIB(25) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_25_UNCONNECTED,
      DIB(24) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_24_UNCONNECTED,
      DIB(23) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_23_UNCONNECTED,
      DIB(22) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_22_UNCONNECTED,
      DIB(21) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_21_UNCONNECTED,
      DIB(20) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_20_UNCONNECTED,
      DIB(19) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_19_UNCONNECTED,
      DIB(18) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_18_UNCONNECTED,
      DIB(17) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_17_UNCONNECTED,
      DIB(16) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_16_UNCONNECTED,
      DIB(15) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_15_UNCONNECTED,
      DIB(14) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_14_UNCONNECTED,
      DIB(13) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_13_UNCONNECTED,
      DIB(12) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_12_UNCONNECTED,
      DIB(11) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_11_UNCONNECTED,
      DIB(10) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_10_UNCONNECTED,
      DIB(9) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_9_UNCONNECTED,
      DIB(8) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_8_UNCONNECTED,
      DIB(7) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_7_UNCONNECTED,
      DIB(6) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_6_UNCONNECTED,
      DIB(5) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_5_UNCONNECTED,
      DIB(4) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_4_UNCONNECTED,
      DIB(3) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_3_UNCONNECTED,
      DIB(2) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_2_UNCONNECTED,
      DIB(1) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_1_UNCONNECTED,
      DIB(0) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_0_UNCONNECTED,
      DOPA(3) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOPA_3_UNCONNECTED,
      DOPA(2) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOPA_2_UNCONNECTED,
      DOPA(1) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOPA_1_UNCONNECTED,
      DOPA(0) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOPA_0_UNCONNECTED,
      DIPB(3) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIPB_3_UNCONNECTED,
      DIPB(2) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIPB_2_UNCONNECTED,
      DIPB(1) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIPB_1_UNCONNECTED,
      DIPB(0) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIPB_0_UNCONNECTED,
      DOPB(3) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOPB_3_UNCONNECTED,
      DOPB(2) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOPB_2_UNCONNECTED,
      DOPB(1) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOPB_1_UNCONNECTED,
      DOPB(0) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOPB_0_UNCONNECTED,
      DOB(31) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_31_UNCONNECTED,
      DOB(30) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_30_UNCONNECTED,
      DOB(29) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_29_UNCONNECTED,
      DOB(28) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_28_UNCONNECTED,
      DOB(27) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_27_UNCONNECTED,
      DOB(26) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_26_UNCONNECTED,
      DOB(25) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_25_UNCONNECTED,
      DOB(24) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_24_UNCONNECTED,
      DOB(23) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_23_UNCONNECTED,
      DOB(22) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_22_UNCONNECTED,
      DOB(21) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_21_UNCONNECTED,
      DOB(20) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_20_UNCONNECTED,
      DOB(19) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_19_UNCONNECTED,
      DOB(18) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_18_UNCONNECTED,
      DOB(17) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_17_UNCONNECTED,
      DOB(16) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_16_UNCONNECTED,
      DOB(15) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_15_UNCONNECTED,
      DOB(14) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_14_UNCONNECTED,
      DOB(13) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_13_UNCONNECTED,
      DOB(12) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_12_UNCONNECTED,
      DOB(11) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_11_UNCONNECTED,
      DOB(10) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_10_UNCONNECTED,
      DOB(9) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_9_UNCONNECTED,
      DOB(8) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_8_UNCONNECTED,
      DOB(7) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_7_UNCONNECTED,
      DOB(6) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_6_UNCONNECTED,
      DOB(5) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_5_UNCONNECTED,
      DOB(4) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_4_UNCONNECTED,
      DOB(3) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_3_UNCONNECTED,
      DOB(2) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_2_UNCONNECTED,
      DOB(1) => vga_top_i_char_addr_s(5),
      DOB(0) => vga_top_i_char_addr_s(4),
      WEB(3) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      WEB(2) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      WEB(1) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      WEB(0) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      DIA(31) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_31_UNCONNECTED,
      DIA(30) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_30_UNCONNECTED,
      DIA(29) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_29_UNCONNECTED,
      DIA(28) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_28_UNCONNECTED,
      DIA(27) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_27_UNCONNECTED,
      DIA(26) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_26_UNCONNECTED,
      DIA(25) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_25_UNCONNECTED,
      DIA(24) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_24_UNCONNECTED,
      DIA(23) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_23_UNCONNECTED,
      DIA(22) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_22_UNCONNECTED,
      DIA(21) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_21_UNCONNECTED,
      DIA(20) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_20_UNCONNECTED,
      DIA(19) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_19_UNCONNECTED,
      DIA(18) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_18_UNCONNECTED,
      DIA(17) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_17_UNCONNECTED,
      DIA(16) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_16_UNCONNECTED,
      DIA(15) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_15_UNCONNECTED,
      DIA(14) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_14_UNCONNECTED,
      DIA(13) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_13_UNCONNECTED,
      DIA(12) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_12_UNCONNECTED,
      DIA(11) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_11_UNCONNECTED,
      DIA(10) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_10_UNCONNECTED,
      DIA(9) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_9_UNCONNECTED,
      DIA(8) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_8_UNCONNECTED,
      DIA(7) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_7_UNCONNECTED,
      DIA(6) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_6_UNCONNECTED,
      DIA(5) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_5_UNCONNECTED,
      DIA(4) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_4_UNCONNECTED,
      DIA(3) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_3_UNCONNECTED,
      DIA(2) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_2_UNCONNECTED,
      DIA(1) => GND_5_o_run_s_0_OR_57_o,
      DIA(0) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q
    );
  vga_top_i_graphics_mem_i_Mram_graphics_mem32 : RAMB16BWER
    generic map(
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      DATA_WIDTH_A => 1,
      DATA_WIDTH_B => 1,
      DOA_REG => 0,
      DOB_REG => 0,
      EN_RSTRAM_A => TRUE,
      EN_RSTRAM_B => TRUE,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RST_PRIORITY_A => "CE",
      RST_PRIORITY_B => "CE",
      RSTTYPE => "SYNC",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "SPARTAN6",
      INIT_FILE => "NONE"
    )
    port map (
      REGCEA => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      CLKA => vga_top_i_vga_i_clk_s,
      ENB => pixel_we,
      RSTB => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      CLKB => vga_top_i_vga_i_clk_s,
      REGCEB => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      RSTA => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      ENA => pixel_we,
      DIPA(3) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIPA_3_UNCONNECTED,
      DIPA(2) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIPA_2_UNCONNECTED,
      DIPA(1) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIPA_1_UNCONNECTED,
      DIPA(0) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIPA_0_UNCONNECTED,
      WEA(3) => pixel_we,
      WEA(2) => pixel_we,
      WEA(1) => pixel_we,
      WEA(0) => pixel_we,
      DOA(31) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_31_UNCONNECTED,
      DOA(30) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_30_UNCONNECTED,
      DOA(29) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_29_UNCONNECTED,
      DOA(28) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_28_UNCONNECTED,
      DOA(27) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_27_UNCONNECTED,
      DOA(26) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_26_UNCONNECTED,
      DOA(25) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_25_UNCONNECTED,
      DOA(24) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_24_UNCONNECTED,
      DOA(23) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_23_UNCONNECTED,
      DOA(22) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_22_UNCONNECTED,
      DOA(21) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_21_UNCONNECTED,
      DOA(20) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_20_UNCONNECTED,
      DOA(19) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_19_UNCONNECTED,
      DOA(18) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_18_UNCONNECTED,
      DOA(17) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_17_UNCONNECTED,
      DOA(16) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_16_UNCONNECTED,
      DOA(15) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_15_UNCONNECTED,
      DOA(14) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_14_UNCONNECTED,
      DOA(13) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_13_UNCONNECTED,
      DOA(12) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_12_UNCONNECTED,
      DOA(11) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_11_UNCONNECTED,
      DOA(10) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_10_UNCONNECTED,
      DOA(9) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_9_UNCONNECTED,
      DOA(8) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_8_UNCONNECTED,
      DOA(7) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_7_UNCONNECTED,
      DOA(6) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_6_UNCONNECTED,
      DOA(5) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_5_UNCONNECTED,
      DOA(4) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_4_UNCONNECTED,
      DOA(3) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_3_UNCONNECTED,
      DOA(2) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_2_UNCONNECTED,
      DOA(1) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_1_UNCONNECTED,
      DOA(0) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOA_0_UNCONNECTED,
      ADDRA(13) => vga_top_i_graphics_mem_i_index_2(13),
      ADDRA(12) => vga_top_i_graphics_mem_i_index_2(12),
      ADDRA(11) => vga_top_i_graphics_mem_i_index_2(11),
      ADDRA(10) => vga_top_i_graphics_mem_i_index_2(10),
      ADDRA(9) => vga_top_i_graphics_mem_i_index_2(9),
      ADDRA(8) => vga_top_i_graphics_mem_i_index_2(8),
      ADDRA(7) => vga_top_i_graphics_mem_i_index_2(7),
      ADDRA(6) => vga_top_i_graphics_mem_i_index_2(6),
      ADDRA(5) => vga_top_i_graphics_mem_i_index_2(5),
      ADDRA(4) => vga_top_i_graphics_mem_i_index_2(4),
      ADDRA(3) => vga_top_i_graphics_mem_i_index_2(3),
      ADDRA(2) => vga_top_i_graphics_mem_i_index_2(2),
      ADDRA(1) => vga_top_i_graphics_mem_i_index_2(1),
      ADDRA(0) => vga_top_i_graphics_mem_i_index_2(0),
      ADDRB(13) => vga_top_i_graphics_mem_i_index_0(13),
      ADDRB(12) => vga_top_i_graphics_mem_i_index_0(12),
      ADDRB(11) => vga_top_i_graphics_mem_i_index_0(11),
      ADDRB(10) => vga_top_i_graphics_mem_i_index_0(10),
      ADDRB(9) => vga_top_i_graphics_mem_i_index_0(9),
      ADDRB(8) => vga_top_i_graphics_mem_i_index_0(8),
      ADDRB(7) => vga_top_i_graphics_mem_i_index_0(7),
      ADDRB(6) => vga_top_i_graphics_mem_i_index_0(6),
      ADDRB(5) => vga_top_i_graphics_mem_i_index_0(5),
      ADDRB(4) => vga_top_i_graphics_mem_i_index_0(4),
      ADDRB(3) => vga_top_i_graphics_mem_i_index_0(3),
      ADDRB(2) => vga_top_i_graphics_mem_i_index_0(2),
      ADDRB(1) => vga_top_i_graphics_mem_i_index_0(1),
      ADDRB(0) => vga_top_i_graphics_mem_i_index_0(0),
      DIB(31) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_31_UNCONNECTED,
      DIB(30) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_30_UNCONNECTED,
      DIB(29) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_29_UNCONNECTED,
      DIB(28) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_28_UNCONNECTED,
      DIB(27) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_27_UNCONNECTED,
      DIB(26) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_26_UNCONNECTED,
      DIB(25) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_25_UNCONNECTED,
      DIB(24) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_24_UNCONNECTED,
      DIB(23) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_23_UNCONNECTED,
      DIB(22) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_22_UNCONNECTED,
      DIB(21) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_21_UNCONNECTED,
      DIB(20) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_20_UNCONNECTED,
      DIB(19) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_19_UNCONNECTED,
      DIB(18) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_18_UNCONNECTED,
      DIB(17) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_17_UNCONNECTED,
      DIB(16) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_16_UNCONNECTED,
      DIB(15) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_15_UNCONNECTED,
      DIB(14) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_14_UNCONNECTED,
      DIB(13) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_13_UNCONNECTED,
      DIB(12) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_12_UNCONNECTED,
      DIB(11) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_11_UNCONNECTED,
      DIB(10) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_10_UNCONNECTED,
      DIB(9) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_9_UNCONNECTED,
      DIB(8) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_8_UNCONNECTED,
      DIB(7) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_7_UNCONNECTED,
      DIB(6) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_6_UNCONNECTED,
      DIB(5) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_5_UNCONNECTED,
      DIB(4) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_4_UNCONNECTED,
      DIB(3) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_3_UNCONNECTED,
      DIB(2) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_2_UNCONNECTED,
      DIB(1) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_1_UNCONNECTED,
      DIB(0) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIB_0_UNCONNECTED,
      DOPA(3) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOPA_3_UNCONNECTED,
      DOPA(2) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOPA_2_UNCONNECTED,
      DOPA(1) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOPA_1_UNCONNECTED,
      DOPA(0) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOPA_0_UNCONNECTED,
      DIPB(3) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIPB_3_UNCONNECTED,
      DIPB(2) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIPB_2_UNCONNECTED,
      DIPB(1) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIPB_1_UNCONNECTED,
      DIPB(0) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIPB_0_UNCONNECTED,
      DOPB(3) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOPB_3_UNCONNECTED,
      DOPB(2) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOPB_2_UNCONNECTED,
      DOPB(1) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOPB_1_UNCONNECTED,
      DOPB(0) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOPB_0_UNCONNECTED,
      DOB(31) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_31_UNCONNECTED,
      DOB(30) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_30_UNCONNECTED,
      DOB(29) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_29_UNCONNECTED,
      DOB(28) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_28_UNCONNECTED,
      DOB(27) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_27_UNCONNECTED,
      DOB(26) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_26_UNCONNECTED,
      DOB(25) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_25_UNCONNECTED,
      DOB(24) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_24_UNCONNECTED,
      DOB(23) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_23_UNCONNECTED,
      DOB(22) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_22_UNCONNECTED,
      DOB(21) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_21_UNCONNECTED,
      DOB(20) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_20_UNCONNECTED,
      DOB(19) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_19_UNCONNECTED,
      DOB(18) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_18_UNCONNECTED,
      DOB(17) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_17_UNCONNECTED,
      DOB(16) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_16_UNCONNECTED,
      DOB(15) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_15_UNCONNECTED,
      DOB(14) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_14_UNCONNECTED,
      DOB(13) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_13_UNCONNECTED,
      DOB(12) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_12_UNCONNECTED,
      DOB(11) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_11_UNCONNECTED,
      DOB(10) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_10_UNCONNECTED,
      DOB(9) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_9_UNCONNECTED,
      DOB(8) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_8_UNCONNECTED,
      DOB(7) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_7_UNCONNECTED,
      DOB(6) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_6_UNCONNECTED,
      DOB(5) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_5_UNCONNECTED,
      DOB(4) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_4_UNCONNECTED,
      DOB(3) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_3_UNCONNECTED,
      DOB(2) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_2_UNCONNECTED,
      DOB(1) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DOB_1_UNCONNECTED,
      DOB(0) => vga_top_i_graphics_mem_i_Mmux_rd_data_o_3,
      WEB(3) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      WEB(2) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      WEB(1) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      WEB(0) => Madd_graph_mem_r_19_GND_5_o_add_67_OUT_cy_14_Q,
      DIA(31) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_31_UNCONNECTED,
      DIA(30) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_30_UNCONNECTED,
      DIA(29) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_29_UNCONNECTED,
      DIA(28) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_28_UNCONNECTED,
      DIA(27) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_27_UNCONNECTED,
      DIA(26) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_26_UNCONNECTED,
      DIA(25) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_25_UNCONNECTED,
      DIA(24) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_24_UNCONNECTED,
      DIA(23) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_23_UNCONNECTED,
      DIA(22) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_22_UNCONNECTED,
      DIA(21) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_21_UNCONNECTED,
      DIA(20) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_20_UNCONNECTED,
      DIA(19) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_19_UNCONNECTED,
      DIA(18) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_18_UNCONNECTED,
      DIA(17) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_17_UNCONNECTED,
      DIA(16) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_16_UNCONNECTED,
      DIA(15) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_15_UNCONNECTED,
      DIA(14) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_14_UNCONNECTED,
      DIA(13) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_13_UNCONNECTED,
      DIA(12) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_12_UNCONNECTED,
      DIA(11) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_11_UNCONNECTED,
      DIA(10) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_10_UNCONNECTED,
      DIA(9) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_9_UNCONNECTED,
      DIA(8) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_8_UNCONNECTED,
      DIA(7) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_7_UNCONNECTED,
      DIA(6) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_6_UNCONNECTED,
      DIA(5) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_5_UNCONNECTED,
      DIA(4) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_4_UNCONNECTED,
      DIA(3) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_3_UNCONNECTED,
      DIA(2) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_2_UNCONNECTED,
      DIA(1) => NLW_vga_top_i_graphics_mem_i_Mram_graphics_mem32_DIA_1_UNCONNECTED,
      DIA(0) => draw_r_0_GND_5_o_AND_144_o
    );
  vga_top_i_char_rom_i_BRAM_MEM_I : char_rom_def
    port map (
      clk => vga_top_i_vga_i_clk_s,
      dout(7) => NLW_vga_top_i_char_rom_i_BRAM_MEM_I_dout_7_UNCONNECTED,
      dout(6) => NLW_vga_top_i_char_rom_i_BRAM_MEM_I_dout_6_UNCONNECTED,
      dout(5) => NLW_vga_top_i_char_rom_i_BRAM_MEM_I_dout_5_UNCONNECTED,
      dout(4) => NLW_vga_top_i_char_rom_i_BRAM_MEM_I_dout_4_UNCONNECTED,
      dout(3) => NLW_vga_top_i_char_rom_i_BRAM_MEM_I_dout_3_UNCONNECTED,
      dout(2) => NLW_vga_top_i_char_rom_i_BRAM_MEM_I_dout_2_UNCONNECTED,
      dout(1) => NLW_vga_top_i_char_rom_i_BRAM_MEM_I_dout_1_UNCONNECTED,
      dout(0) => NLW_vga_top_i_char_rom_i_BRAM_MEM_I_dout_0_UNCONNECTED,
      addr(8) => vga_top_i_char_addr_s(5),
      addr(7) => vga_top_i_char_addr_s(4),
      addr(6) => vga_top_i_char_addr_s(3),
      addr(5) => vga_top_i_char_addr_s(2),
      addr(4) => vga_top_i_char_addr_s(1),
      addr(3) => vga_top_i_char_addr_s(0),
      addr(2) => vga_top_i_vga_i_vga_sync_i_v_count_r(3),
      addr(1) => vga_top_i_vga_i_vga_sync_i_v_count_r(2),
      addr(0) => vga_top_i_vga_i_vga_sync_i_v_count_r(1)
    );

end Structure;

-- synthesis translate_on
