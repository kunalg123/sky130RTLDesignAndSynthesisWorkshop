`timescale 1ns / 1ps
module tb_lab1_flop_with_en ();

reg clk , d , res, en;
wire q;

lab1_flop_with_en uut (
	.clk (clk),
	.res(res),
	.d(d),
	.en(en),
	.q(q));

initial 
begin
	$dumpfile("tb_lab1_flop_with_en.vcd");
	$dumpvars(0,tb_lab1_flop_with_en);
	clk = 1'b0;
	d = 1'b0;
	en = 1'b0;
	res = 1'b1; # 200;
	res = 1'b0;
	#3000 $finish;
end

always #10 clk = ~clk;
always #33 d = ~d;
always #77 en = ~en; 

endmodule
