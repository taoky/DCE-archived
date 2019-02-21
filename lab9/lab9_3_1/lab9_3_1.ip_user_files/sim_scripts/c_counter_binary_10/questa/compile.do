vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../../lab9_3_1.srcs/sources_1/ip/c_counter_binary_10/c_counter_binary_10_sim_netlist.v" \


vlog -work xil_defaultlib \
"glbl.v"

