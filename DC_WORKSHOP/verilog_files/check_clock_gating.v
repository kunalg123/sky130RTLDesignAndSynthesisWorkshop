module check_clock_gating (input clk , input res , input [31:0] d , output reg [31:0] val , input en);

always @ (posedge clk , posedge res)
begin
	if(res)
		val <= 31'b0;
	else if (en)
		val <= d;

end

endmodule
