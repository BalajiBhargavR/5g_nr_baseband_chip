#!/bin/bash
# Usage: ./run_sim.sh <testbench.v> [rtl_module1.v rtl_module2.v ...]

if [ $# -lt 1 ]; then
  echo "Usage: $0 <testbench.v> [rtl_module1.v ...]"
  exit 1
fi

TB=$1
shift
iverilog -o sim_out $TB "$@"
if [ $? -eq 0 ]; then
  vvp sim_out
else
  echo "Compilation failed."
fi
