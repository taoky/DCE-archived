vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../lab9_3_1.srcs/sources_1/ip/c_counter_binary_6/c_counter_binary_6_sim_netlist.v" \


vlog -work xil_defaultlib \
"glbl.v"

