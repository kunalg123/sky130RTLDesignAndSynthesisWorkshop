module bal_check (input a , input b , input c , input d , input e, output y , input clk  , input res);

reg rega, regb , regc ;

always @ (posedge clk , posedge res)
begin
	if(res)	
	begin
		rega <= 1'b0;
		regb <= 1'b0;
		regc <= 1'b0;
	end
	else
	begin
		rega <= a;
		regb <= b;
		regc <= c;
	end
end

assign y = rega & regb & regc & d & e;

endmodule
