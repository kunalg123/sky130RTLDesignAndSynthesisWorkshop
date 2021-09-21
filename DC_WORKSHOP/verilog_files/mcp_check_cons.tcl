#create the clock
create_clock -per 4 -name myclk [get_ports clk];

#model the practicality of the clock
set_clock_uncertainty -setup 0.5 [get_clocks myclk];
set_clock_uncertainty -hold 0.2 [get_clocks myclk];

#Annotate the IO Delays
set_input_delay -max 3.0 -clock myclk [all_inputs];
set_input_delay -min 0.5 -clock myclk [all_inputs];

set_output_delay -max 2.5 -clock myclk [all_outputs];
set_output_delay -min 0.5 -clock myclk [all_outputs];

#Model the practicalities of the IOs
set_input_transition -max 0.3 [all_inputs];
set_input_transition -min 0.05 [all_inputs];

set_load -max 0.4 [all_outputs];
set_load -min 0.05 [all_outputs];




