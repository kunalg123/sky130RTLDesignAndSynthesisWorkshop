module mcp_check (input clk , input res  , input [7:0] a , input [7:0] b, input en , output reg [15:0] prod);

reg valid; 

always @ (posedge clk , posedge res)
begin
	if(res)
		valid <= 1'b0;
	else 
		valid <= en;
end



always @ (posedge clk , posedge res)
begin
	if(res)
		prod <= 16'b0;
	else if (valid)
		prod <= a * b;
end

endmodule
