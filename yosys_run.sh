# read design

read_verilog 32bit_carry_ripple_adder.v

# generic synthesis
synth -top ripple_carry_adder

# mapping to mycells.lib
dfflibmap -liberty /usr/local/share/qflow/tech/osu018/osu018_stdcells.lib
abc -liberty /usr/local/share/qflow/tech/osu018/osu018_stdcells.lib
clean
flatten
# write synthesized design
write_verilog -assert synth_ripple_carry_adder.v
