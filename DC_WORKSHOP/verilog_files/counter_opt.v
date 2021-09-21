module counter_opt (input clk , input en, input reset , output q);
reg [3:0] count;
assign q = count[0];

always @(posedge clk ,posedge reset)
begin
	if(reset)
		count <= 4'b0000;
	else if(en)
		count <= count + 1;
end

endmodule
