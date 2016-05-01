////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.28xd
//  \   \         Application: netgen
//  /   /         Filename: spi_tb_timing_sim.v
// /___/   /\     Timestamp: Fri Apr 29 15:16:23 2016
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog -sdf_path . -insert_pp_buffers true -fn -sdf_anno true -pcf C:/Users/Karl/Documents/CSTProjects/mojo-base-project-master/Helloworld/Helloworld.runs/impl_1/mojo_top.pcf C:/Users/Karl/Documents/CSTProjects/mojo-base-project-master/Helloworld/Helloworld.runs/impl_1/mojo_top_routed.ncd C:/Users/Karl/Documents/CSTProjects/mojo-base-project-master/Helloworld/Helloworld.sim/sim_1/spi_tb_timing_sim.v 
// Device	: 6slx9tqg144-2 (PRODUCTION 1.22 2012-07-09)
// Input file	: C:/Users/Karl/Documents/CSTProjects/mojo-base-project-master/Helloworld/Helloworld.runs/impl_1/mojo_top_routed.ncd
// Output file	: C:/Users/Karl/Documents/CSTProjects/mojo-base-project-master/Helloworld/Helloworld.sim/sim_1/spi_tb_timing_sim.v
// # of Modules	: 1
// Design Name	: mojo_top
// Xilinx        : C:\Xilinx\14.2\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module mojo_top (
  rst_n, avr_rx_busy, spi_mosi, spi_ss, spi_sck, avr_rx, cclk, avr_tx, clk, spi_miso, spi_channel, led
);
  input rst_n;
  input avr_rx_busy;
  input spi_mosi;
  input spi_ss;
  input spi_sck;
  output avr_rx;
  input cclk;
  input avr_tx;
  input clk;
  output spi_miso;
  output [3 : 0] spi_channel;
  output [7 : 0] led;
  wire spi_sck_IBUF_0;
  wire clk_IBUF_0;
  wire avr_rx_busy_IBUF_0;
  wire spi_mosi_IBUF_0;
  wire spi_ss_IBUF_0;
  wire avr_tx_IBUF_0;
  wire led_7_OBUF_64;
  wire cclk_IBUF_0;
  wire spi_sck_IBUF_1;
  wire clk_IBUF_4;
  wire avr_rx_busy_IBUF_7;
  wire spi_mosi_IBUF_10;
  wire spi_ss_IBUF_19;
  wire avr_tx_IBUF_26;
  wire \ProtoComp2.IINV.OUT ;
  wire led_7_OBUF_non_inverted;
  wire cclk_IBUF_39;
  wire \NlwBufferSignal_led_7_OBUF/I ;
  initial $sdf_annotate("c:/users/karl/documents/cstprojects/mojo-base-project-master/helloworld/helloworld.sim/sim_1/spi_tb_timing_sim.sdf");
  X_IPAD #(
    .LOC ( "PAD138" ))
  spi_sck_4 (
    .PAD(spi_sck)
  );
  X_BUF #(
    .LOC ( "PAD138" ))
  spi_sck_IBUF (
    .O(spi_sck_IBUF_1),
    .I(spi_sck)
  );
  X_BUF #(
    .LOC ( "PAD138" ))
  \ProtoComp0.IMUX  (
    .I(spi_sck_IBUF_1),
    .O(spi_sck_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD119" ))
  clk_8 (
    .PAD(clk)
  );
  X_BUF #(
    .LOC ( "PAD119" ))
  clk_IBUF (
    .O(clk_IBUF_4),
    .I(clk)
  );
  X_BUF #(
    .LOC ( "PAD119" ))
  \ProtoComp0.IMUX.1  (
    .I(clk_IBUF_4),
    .O(clk_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD143" ))
  avr_rx_busy_12 (
    .PAD(avr_rx_busy)
  );
  X_BUF #(
    .LOC ( "PAD143" ))
  avr_rx_busy_IBUF (
    .O(avr_rx_busy_IBUF_7),
    .I(avr_rx_busy)
  );
  X_BUF #(
    .LOC ( "PAD143" ))
  \ProtoComp0.IMUX.2  (
    .I(avr_rx_busy_IBUF_7),
    .O(avr_rx_busy_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD137" ))
  spi_mosi_16 (
    .PAD(spi_mosi)
  );
  X_BUF #(
    .LOC ( "PAD137" ))
  spi_mosi_IBUF (
    .O(spi_mosi_IBUF_10),
    .I(spi_mosi)
  );
  X_BUF #(
    .LOC ( "PAD137" ))
  \ProtoComp0.IMUX.3  (
    .I(spi_mosi_IBUF_10),
    .O(spi_mosi_IBUF_0)
  );
  X_OPAD #(
    .LOC ( "PAD21" ))
  \led[0]  (
    .PAD(led[0])
  );
  X_OBUF #(
    .LOC ( "PAD21" ))
  led_0_OBUF (
    .I(1'b0),
    .O(led[0])
  );
  X_OPAD #(
    .LOC ( "PAD22" ))
  \led[1]  (
    .PAD(led[1])
  );
  X_OBUF #(
    .LOC ( "PAD22" ))
  led_1_OBUF (
    .I(1'b0),
    .O(led[1])
  );
  X_OPAD #(
    .LOC ( "PAD23" ))
  \led[2]  (
    .PAD(led[2])
  );
  X_OBUF #(
    .LOC ( "PAD23" ))
  led_2_OBUF (
    .I(1'b0),
    .O(led[2])
  );
  X_IPAD #(
    .LOC ( "PAD133" ))
  spi_ss_29 (
    .PAD(spi_ss)
  );
  X_BUF #(
    .LOC ( "PAD133" ))
  spi_ss_IBUF (
    .O(spi_ss_IBUF_19),
    .I(spi_ss)
  );
  X_BUF #(
    .LOC ( "PAD133" ))
  \ProtoComp0.IMUX.4  (
    .I(spi_ss_IBUF_19),
    .O(spi_ss_IBUF_0)
  );
  X_OPAD #(
    .LOC ( "PAD24" ))
  \led[3]  (
    .PAD(led[3])
  );
  X_OBUF #(
    .LOC ( "PAD24" ))
  led_3_OBUF (
    .I(1'b0),
    .O(led[3])
  );
  X_OPAD #(
    .LOC ( "PAD25" ))
  \led[4]  (
    .PAD(led[4])
  );
  X_OBUF #(
    .LOC ( "PAD25" ))
  led_4_OBUF (
    .I(1'b0),
    .O(led[4])
  );
  X_IPAD #(
    .LOC ( "PAD120" ))
  avr_tx_39 (
    .PAD(avr_tx)
  );
  X_BUF #(
    .LOC ( "PAD120" ))
  avr_tx_IBUF (
    .O(avr_tx_IBUF_26),
    .I(avr_tx)
  );
  X_BUF #(
    .LOC ( "PAD120" ))
  \ProtoComp0.IMUX.5  (
    .I(avr_tx_IBUF_26),
    .O(avr_tx_IBUF_0)
  );
  X_OPAD #(
    .LOC ( "PAD26" ))
  \led[5]  (
    .PAD(led[5])
  );
  X_OBUF #(
    .LOC ( "PAD26" ))
  led_5_OBUF (
    .I(1'b0),
    .O(led[5])
  );
  X_OPAD #(
    .LOC ( "PAD27" ))
  \led[6]  (
    .PAD(led[6])
  );
  X_OBUF #(
    .LOC ( "PAD27" ))
  led_6_OBUF (
    .I(1'b0),
    .O(led[6])
  );
  X_IPAD #(
    .LOC ( "PAD144" ))
  rst_n_50 (
    .PAD(rst_n)
  );
  X_BUF #(
    .LOC ( "PAD144" ))
  rst_n_IBUF (
    .O(led_7_OBUF_non_inverted),
    .I(rst_n)
  );
  X_BUF #(
    .LOC ( "PAD144" ))
  \ProtoComp2.IMUX  (
    .I(\ProtoComp2.IINV.OUT ),
    .O(led_7_OBUF_64)
  );
  X_INV #(
    .LOC ( "PAD144" ))
  \ProtoComp2.IINV  (
    .I(led_7_OBUF_non_inverted),
    .O(\ProtoComp2.IINV.OUT )
  );
  X_OPAD #(
    .LOC ( "PAD28" ))
  \led[7]  (
    .PAD(led[7])
  );
  X_OBUF #(
    .LOC ( "PAD28" ))
  led_7_OBUF (
    .I(\NlwBufferSignal_led_7_OBUF/I ),
    .O(led[7])
  );
  X_IPAD #(
    .LOC ( "PAD101" ))
  cclk_57 (
    .PAD(cclk)
  );
  X_BUF #(
    .LOC ( "PAD101" ))
  cclk_IBUF (
    .O(cclk_IBUF_39),
    .I(cclk)
  );
  X_BUF #(
    .LOC ( "PAD101" ))
  \ProtoComp0.IMUX.6  (
    .I(cclk_IBUF_39),
    .O(cclk_IBUF_0)
  );
  X_BUF   \NlwBufferBlock_led_7_OBUF/I  (
    .I(led_7_OBUF_64),
    .O(\NlwBufferSignal_led_7_OBUF/I )
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

