module check_reg_retime (input clk , input [3:0] a, input [3:0] b , output [7:0] c , input reset);

wire [7:0] mult;
assign mult = a * b;
reg [7:0] q1;
reg [7:0] q2;
reg [7:0] q3;




always @ (posedge clk , posedge reset)
begin
	if(reset)
	begin
		q1 <= 8'b0;
		q2 <= 8'b0;
		q3 <= 8'b0;
	end
	else
	begin
		q1 <= mult;
		q2 <= q1;
		q3 <= q2;
	end
end
assign c = q3;

endmodule
