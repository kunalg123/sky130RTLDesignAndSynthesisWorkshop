/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : R-2020.09-SP5
// Date      : Mon Aug  2 14:57:38 2021
/////////////////////////////////////////////////////////////


module check_clock_gating ( clk, res, d, val, en );
  input [31:0] d;
  output [31:0] val;
  input clk, res, en;
  wire   n42, n43, n44;

  sky130_fd_sc_hd__dfrtp_1 \val_reg[31]  ( .D(d[31]), .CLK(n43), .RESET_B(n42), 
        .Q(val[31]) );
  sky130_fd_sc_hd__dfrtp_1 \val_reg[30]  ( .D(d[30]), .CLK(n43), .RESET_B(n42), 
        .Q(val[30]) );
  sky130_fd_sc_hd__dfrtp_1 \val_reg[29]  ( .D(d[29]), .CLK(n43), .RESET_B(n42), 
        .Q(val[29]) );
  sky130_fd_sc_hd__dfrtp_1 \val_reg[28]  ( .D(d[28]), .CLK(n43), .RESET_B(n42), 
        .Q(val[28]) );
  sky130_fd_sc_hd__dfrtp_1 \val_reg[27]  ( .D(d[27]), .CLK(n43), .RESET_B(n42), 
        .Q(val[27]) );
  sky130_fd_sc_hd__dfrtp_1 \val_reg[26]  ( .D(d[26]), .CLK(n43), .RESET_B(n42), 
        .Q(val[26]) );
  sky130_fd_sc_hd__dfrtp_1 \val_reg[25]  ( .D(d[25]), .CLK(n43), .RESET_B(n42), 
        .Q(val[25]) );
  sky130_fd_sc_hd__dfrtp_1 \val_reg[24]  ( .D(d[24]), .CLK(n43), .RESET_B(n42), 
        .Q(val[24]) );
  sky130_fd_sc_hd__dfrtp_1 \val_reg[23]  ( .D(d[23]), .CLK(n43), .RESET_B(n42), 
        .Q(val[23]) );
  sky130_fd_sc_hd__dfrtp_1 \val_reg[22]  ( .D(d[22]), .CLK(n43), .RESET_B(n42), 
        .Q(val[22]) );
  sky130_fd_sc_hd__dfrtp_1 \val_reg[21]  ( .D(d[21]), .CLK(n43), .RESET_B(n42), 
        .Q(val[21]) );
  sky130_fd_sc_hd__dfrtp_1 \val_reg[20]  ( .D(d[20]), .CLK(n43), .RESET_B(n42), 
        .Q(val[20]) );
  sky130_fd_sc_hd__dfrtp_1 \val_reg[19]  ( .D(d[19]), .CLK(n43), .RESET_B(n42), 
        .Q(val[19]) );
  sky130_fd_sc_hd__dfrtp_1 \val_reg[18]  ( .D(d[18]), .CLK(n43), .RESET_B(n42), 
        .Q(val[18]) );
  sky130_fd_sc_hd__dfrtp_1 \val_reg[16]  ( .D(d[16]), .CLK(n43), .RESET_B(n42), 
        .Q(val[16]) );
  sky130_fd_sc_hd__dfrtp_1 \val_reg[15]  ( .D(d[15]), .CLK(n43), .RESET_B(n42), 
        .Q(val[15]) );
  sky130_fd_sc_hd__dfrtp_1 \val_reg[14]  ( .D(d[14]), .CLK(n43), .RESET_B(n42), 
        .Q(val[14]) );
  sky130_fd_sc_hd__dfrtp_1 \val_reg[13]  ( .D(d[13]), .CLK(n43), .RESET_B(n42), 
        .Q(val[13]) );
  sky130_fd_sc_hd__dfrtp_1 \val_reg[12]  ( .D(d[12]), .CLK(n43), .RESET_B(n42), 
        .Q(val[12]) );
  sky130_fd_sc_hd__dfrtp_1 \val_reg[11]  ( .D(d[11]), .CLK(n43), .RESET_B(n42), 
        .Q(val[11]) );
  sky130_fd_sc_hd__dfrtp_1 \val_reg[10]  ( .D(d[10]), .CLK(n43), .RESET_B(n42), 
        .Q(val[10]) );
  sky130_fd_sc_hd__dfrtp_1 \val_reg[9]  ( .D(d[9]), .CLK(n43), .RESET_B(n42), 
        .Q(val[9]) );
  sky130_fd_sc_hd__dfrtp_1 \val_reg[8]  ( .D(d[8]), .CLK(n43), .RESET_B(n42), 
        .Q(val[8]) );
  sky130_fd_sc_hd__dfrtp_1 \val_reg[7]  ( .D(d[7]), .CLK(n43), .RESET_B(n42), 
        .Q(val[7]) );
  sky130_fd_sc_hd__dfrtp_1 \val_reg[6]  ( .D(d[6]), .CLK(n43), .RESET_B(n42), 
        .Q(val[6]) );
  sky130_fd_sc_hd__dfrtp_1 \val_reg[5]  ( .D(d[5]), .CLK(n43), .RESET_B(n42), 
        .Q(val[5]) );
  sky130_fd_sc_hd__dfrtp_1 \val_reg[4]  ( .D(d[4]), .CLK(n43), .RESET_B(n42), 
        .Q(val[4]) );
  sky130_fd_sc_hd__dfrtp_1 \val_reg[3]  ( .D(d[3]), .CLK(n43), .RESET_B(n42), 
        .Q(val[3]) );
  sky130_fd_sc_hd__dfrtp_1 \val_reg[1]  ( .D(d[1]), .CLK(n43), .RESET_B(n42), 
        .Q(val[1]) );
  sky130_fd_sc_hd__dfrtp_1 \val_reg[17]  ( .D(d[17]), .CLK(n43), .RESET_B(n42), 
        .Q(val[17]) );
  sky130_fd_sc_hd__dfrtp_1 \val_reg[2]  ( .D(d[2]), .CLK(n43), .RESET_B(n42), 
        .Q(val[2]) );
  sky130_fd_sc_hd__dfrtp_1 \val_reg[0]  ( .D(d[0]), .CLK(n43), .RESET_B(n42), 
        .Q(val[0]) );
  SNPS_CLOCK_GATE_HIGH_check_clock_gating_0 clk_gate_val_reg ( .CLK(clk), .EN(
        en), .ENCLK(n43), .TE(n44) );
  sky130_fd_sc_hd__clkinv_1 U138 ( .A(res), .Y(n42) );
  sky130_fd_sc_hd__conb_1 U139 ( .LO(n44) );
endmodule

