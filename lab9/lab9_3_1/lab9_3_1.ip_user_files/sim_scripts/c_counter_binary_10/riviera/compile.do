vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../lab9_3_1.srcs/sources_1/ip/c_counter_binary_10/c_counter_binary_10_sim_netlist.v" \


vlog -work xil_defaultlib \
"glbl.v"

