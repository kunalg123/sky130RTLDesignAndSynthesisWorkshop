module check_code (input clk , input res , input d, output reg q);

always @ (posedge clk ,posedge res)
begin
	if(res)
		q <= d;
	else
		q <= 1'b0;
end
endmodule
