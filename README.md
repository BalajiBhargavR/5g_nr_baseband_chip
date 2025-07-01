# 5G NR Baseband Chip Project

Open hardware project for a 5G NR Baseband SoC targeting rural connectivity, following 3GPP Release 15/16, optimized for low power and cost (40nm CMOS).

## Directory Layout

- `algosim`: Python scripts for algorithm simulation (LDPC, FFT, Beamforming)
- `rtl`: Verilog source for all blocks (DSP, beamforming, baseband, RISC-V)
- `tb`: Verilog testbenches for simulation
- `fpga`: Vivado TCL scripts for FPGA prototyping
- `synthesis`: Yosys scripts for synthesis
- `docs`: Documentation and notes
- `scripts`: Automation and helper scripts

## How to Use

1. **Algorithm Simulations**
    ```bash
    python3 algosim/ldpc_fft_sim.py
    python3 algosim/beamforming_sim.py
    ```

2. **RTL Simulation (with Icarus Verilog/ModelSim/Verilator)**
    ```bash
    # For FFT block (example)
    iverilog -o fft_tb.out rtl/dsp/fft.v tb/fft_tb.v
    vvp fft_tb.out
    gtkwave fft_tb.vcd
    ```

3. **Synthesis (with Yosys)**
    ```bash
    yosys synthesis/synth.ys
    ```

4. **FPGA Prototyping (with Vivado)**
    - Open Vivado GUI or run:
      ```
      vivado -mode tcl -source fpga/create_fpga_project.tcl
      ```

5. **Automation**
    ```bash
    make
    ```

## Requirements

- Python 3, numpy, pyldpc
- Icarus Verilog OR ModelSim OR Verilator
- GTKWave (for waveform viewing)
- Yosys (for synthesis)
- Vivado (for FPGA work, if using Xilinx)
