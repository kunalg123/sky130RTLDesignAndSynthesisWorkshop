/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : R-2020.09-SP5
// Date      : Mon Aug  2 15:51:22 2021
/////////////////////////////////////////////////////////////


module check_reg_retime ( clk, a, b, c, reset );
  input [3:0] a;
  input [3:0] b;
  output [4:0] c;
  input clk, reset;
  wire   n6, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46;
  wire   [4:0] mult;
  wire   [4:0] q1;
  wire   [4:0] q2;

  sky130_fd_sc_hd__dfrtp_1 \q1_reg[4]  ( .D(mult[4]), .CLK(clk), .RESET_B(n6), 
        .Q(q1[4]) );
  sky130_fd_sc_hd__dfrtp_1 \q1_reg[3]  ( .D(mult[3]), .CLK(clk), .RESET_B(n6), 
        .Q(q1[3]) );
  sky130_fd_sc_hd__dfrtp_1 \q1_reg[2]  ( .D(mult[2]), .CLK(clk), .RESET_B(n6), 
        .Q(q1[2]) );
  sky130_fd_sc_hd__dfrtp_1 \q1_reg[1]  ( .D(mult[1]), .CLK(clk), .RESET_B(n6), 
        .Q(q1[1]) );
  sky130_fd_sc_hd__dfrtp_1 \q1_reg[0]  ( .D(mult[0]), .CLK(clk), .RESET_B(n6), 
        .Q(q1[0]) );
  sky130_fd_sc_hd__dfrtp_1 \q2_reg[4]  ( .D(q1[4]), .CLK(clk), .RESET_B(n6), 
        .Q(q2[4]) );
  sky130_fd_sc_hd__dfrtp_1 \q3_reg[4]  ( .D(q2[4]), .CLK(clk), .RESET_B(n6), 
        .Q(c[4]) );
  sky130_fd_sc_hd__dfrtp_1 \q2_reg[3]  ( .D(q1[3]), .CLK(clk), .RESET_B(n6), 
        .Q(q2[3]) );
  sky130_fd_sc_hd__dfrtp_1 \q3_reg[3]  ( .D(q2[3]), .CLK(clk), .RESET_B(n6), 
        .Q(c[3]) );
  sky130_fd_sc_hd__dfrtp_1 \q2_reg[2]  ( .D(q1[2]), .CLK(clk), .RESET_B(n6), 
        .Q(q2[2]) );
  sky130_fd_sc_hd__dfrtp_1 \q3_reg[2]  ( .D(q2[2]), .CLK(clk), .RESET_B(n6), 
        .Q(c[2]) );
  sky130_fd_sc_hd__dfrtp_1 \q2_reg[1]  ( .D(q1[1]), .CLK(clk), .RESET_B(n6), 
        .Q(q2[1]) );
  sky130_fd_sc_hd__dfrtp_1 \q3_reg[1]  ( .D(q2[1]), .CLK(clk), .RESET_B(n6), 
        .Q(c[1]) );
  sky130_fd_sc_hd__dfrtp_1 \q2_reg[0]  ( .D(q1[0]), .CLK(clk), .RESET_B(n6), 
        .Q(q2[0]) );
  sky130_fd_sc_hd__dfrtp_1 \q3_reg[0]  ( .D(q2[0]), .CLK(clk), .RESET_B(n6), 
        .Q(c[0]) );
  sky130_fd_sc_hd__clkinv_1 U18 ( .A(b[2]), .Y(n25) );
  sky130_fd_sc_hd__clkinv_1 U19 ( .A(a[1]), .Y(n26) );
  sky130_fd_sc_hd__clkinv_1 U20 ( .A(a[0]), .Y(n19) );
  sky130_fd_sc_hd__fa_2 U21 ( .A(n34), .B(n33), .CIN(n32), .COUT(n38), .SUM(
        mult[3]) );
  sky130_fd_sc_hd__clkinv_1 U22 ( .A(b[1]), .Y(n21) );
  sky130_fd_sc_hd__clkinv_1 U23 ( .A(a[2]), .Y(n20) );
  sky130_fd_sc_hd__and2_0 U24 ( .A(b[3]), .B(a[0]), .X(n31) );
  sky130_fd_sc_hd__clkinv_1 U25 ( .A(b[0]), .Y(n16) );
  sky130_fd_sc_hd__and2_0 U26 ( .A(a[3]), .B(b[0]), .X(n35) );
  sky130_fd_sc_hd__and2_0 U27 ( .A(b[2]), .B(a[2]), .X(n43) );
  sky130_fd_sc_hd__clkinv_1 U28 ( .A(reset), .Y(n6) );
  sky130_fd_sc_hd__nor2_1 U29 ( .A(n26), .B(n16), .Y(n18) );
  sky130_fd_sc_hd__nor2_1 U30 ( .A(n21), .B(n19), .Y(n17) );
  sky130_fd_sc_hd__nor2_1 U31 ( .A(n16), .B(n19), .Y(mult[0]) );
  sky130_fd_sc_hd__nor2_1 U32 ( .A(n20), .B(n16), .Y(n24) );
  sky130_fd_sc_hd__ha_1 U33 ( .A(n18), .B(n17), .COUT(n23), .SUM(mult[1]) );
  sky130_fd_sc_hd__nor2_1 U34 ( .A(n25), .B(n19), .Y(n28) );
  sky130_fd_sc_hd__nor2_1 U35 ( .A(n26), .B(n21), .Y(n27) );
  sky130_fd_sc_hd__nor2_1 U36 ( .A(n21), .B(n20), .Y(n36) );
  sky130_fd_sc_hd__fa_1 U37 ( .A(n24), .B(n23), .CIN(n22), .COUT(n33), .SUM(
        mult[2]) );
  sky130_fd_sc_hd__nor2_1 U38 ( .A(n26), .B(n25), .Y(n30) );
  sky130_fd_sc_hd__ha_1 U39 ( .A(n28), .B(n27), .COUT(n29), .SUM(n22) );
  sky130_fd_sc_hd__nand2_1 U40 ( .A(b[3]), .B(a[1]), .Y(n46) );
  sky130_fd_sc_hd__fa_1 U41 ( .A(n31), .B(n30), .CIN(n29), .COUT(n42), .SUM(
        n32) );
  sky130_fd_sc_hd__nand2_1 U42 ( .A(b[1]), .B(a[3]), .Y(n40) );
  sky130_fd_sc_hd__ha_1 U43 ( .A(n36), .B(n35), .COUT(n37), .SUM(n34) );
  sky130_fd_sc_hd__xor2_1 U44 ( .A(n38), .B(n37), .X(n39) );
  sky130_fd_sc_hd__xnor2_1 U45 ( .A(n40), .B(n39), .Y(n41) );
  sky130_fd_sc_hd__xnor2_1 U46 ( .A(n42), .B(n41), .Y(n44) );
  sky130_fd_sc_hd__xnor2_1 U47 ( .A(n44), .B(n43), .Y(n45) );
  sky130_fd_sc_hd__o2bb2ai_1 U48 ( .B1(n46), .B2(n45), .A1_N(n46), .A2_N(n45), 
        .Y(mult[4]) );
endmodule

