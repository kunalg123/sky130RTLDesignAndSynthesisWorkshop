module ripple_counter (input clk , input reset , output [1:0] q);
reg [1:0]q_int;

always @ (posedge clk, posedge reset)
begin
	if(reset)
		q[0] <= 1'b0;
	else
		q[0] <= ~q[0];
end


always @ (posedge q[0], posedge reset)
begin
	
	if(reset)
		q[1] <= 1'b0;
	else
		q[1] <= ~q[0];

end

assign q = q_int;

endmodule
