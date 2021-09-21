module check_logic_sharing (input a , input b , input c , output x , output y);

assign x = a & b & c;
assign y = (a & b) | c;

endmodule
