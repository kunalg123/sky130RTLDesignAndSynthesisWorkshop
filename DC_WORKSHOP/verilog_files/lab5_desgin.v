module lab5_design (input a , input b  , input clk , input res, output y);

//internal signals
reg reg1;
reg reg2;
reg reg3;

always @ (posedge clk , posedge res) 
begin 
	if(res)
	begin
		reg1 <= 1'b0;
		reg2 <= 1'b0;
		reg3 <= 1'b0;
	end 
	else
	begin
		reg1 <=  ( a | b ) & reg1;
		reg2 <= a & b & reg1;
		reg3 <= reg1 ^ reg2;
	end
end

assign y = ~reg3;

endmodule




