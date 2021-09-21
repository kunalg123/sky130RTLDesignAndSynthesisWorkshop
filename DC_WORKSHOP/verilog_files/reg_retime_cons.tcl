#create_the_clocks
create_clock -name myclk -per 2 [get_ports clk];
#model the practicalities of the clock
set_clock_uncertainty -setup 0.3 [get_clocks myclk];
set_clock_uncertainty -hold 0.1 [get_clocks myclk];

#model IO delays
set_input_delay -max 1.2 -clock [get_clocks myclk] [all_inputs];
set_output_delay -max 1.2 -clock [get_clocks myclk] [all_outputs];

set_input_delay -min 0.5 -clock [get_clocks myclk] [all_inputs];
set_output_delay -min 0.5 -clock [get_clocks myclk] [all_outputs];

set_input_transition -max 0.2 [all_inputs];
set_input_transition -min 0.05 [all_inputs];

set_load -max 0.2 [all_outputs];
set_load -min 0.05 [all_outputs];


