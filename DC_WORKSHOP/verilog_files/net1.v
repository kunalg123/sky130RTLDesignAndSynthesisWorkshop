/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : R-2020.09-SP5
// Date      : Sun Aug  1 14:39:54 2021
/////////////////////////////////////////////////////////////


module lab5_design ( a, b, clk, res, y );
  input a, b, clk, res;
  output y;
  wire   N0, N1, reg3, reg2, reg1, N2, n1, n5, n6;

  sky130_fd_sc_hd__dfrtp_1 reg1_reg ( .D(N0), .CLK(clk), .RESET_B(n1), .Q(reg1) );
  sky130_fd_sc_hd__dfrtp_1 reg2_reg ( .D(N1), .CLK(clk), .RESET_B(n1), .Q(reg2) );
  sky130_fd_sc_hd__dfrtp_1 reg3_reg ( .D(N2), .CLK(clk), .RESET_B(n1), .Q(reg3) );
  sky130_fd_sc_hd__clkinv_1 U10 ( .A(reg3), .Y(y) );
  sky130_fd_sc_hd__clkinv_1 U11 ( .A(res), .Y(n1) );
  sky130_fd_sc_hd__xor2_1 U12 ( .A(reg2), .B(reg1), .X(N2) );
  sky130_fd_sc_hd__nor2_1 U13 ( .A(n5), .B(n6), .Y(N1) );
  sky130_fd_sc_hd__nand2_1 U14 ( .A(n6), .B(n5), .Y(N0) );
  sky130_fd_sc_hd__clkinv_1 U15 ( .A(a), .Y(n5) );
  sky130_fd_sc_hd__clkinv_1 U16 ( .A(b), .Y(n6) );
endmodule

