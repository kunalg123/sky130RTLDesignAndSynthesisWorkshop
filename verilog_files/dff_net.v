/* Generated by Yosys 0.7 (git sha1 61f6811, gcc 6.2.0-11ubuntu1 -O2 -fdebug-prefix-map=/build/yosys-OIL3SR/yosys-0.7=. -fstack-protector-strong -fPIC -Os) */

(* top =  1  *)
(* src = "dff_syncres.v:2" *)
module dff_syncres(clk, async_reset, sync_reset, d, q);
  (* src = "dff_syncres.v:3" *)
  wire _0_;
  wire _1_;
  wire _2_;
  wire _3_;
  wire _4_;
  (* src = "dff_syncres.v:2" *)
  input async_reset;
  (* src = "dff_syncres.v:2" *)
  input clk;
  (* src = "dff_syncres.v:2" *)
  input d;
  (* src = "dff_syncres.v:2" *)
  output q;
  (* src = "dff_syncres.v:2" *)
  input sync_reset;
  sky130_fd_sc_hd__and2b_2 _5_ (
    .A_N(_4_),
    .B(_2_),
    .X(_3_)
  );
  sky130_fd_sc_hd__dfxtp_1 _6_ (
    .CLK(clk),
    .D(_0_),
    .Q(q)
  );
  assign _2_ = d;
  assign _0_ = _3_;
  assign _4_ = sync_reset;
endmodule
