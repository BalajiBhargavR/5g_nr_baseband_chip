# 5G NR Baseband Chip Project

Open hardware project for a 5G NR Baseband SoC targeting rural connectivity, following 3GPP Release 15/16, optimized for open implementation.

## Directory Layout

- `arch/`: Architecture diagrams/specs.
- `algosim/`: MATLAB/Python simulation scripts (LDPC, FFT, Beamforming).
- `rtl/`: Verilog source code.
- `tb/`: Testbenches for simulation.
- `fpga/`: Vivado/FPGA projects and constraints.
- `synthesis/`: Synthesis scripts and reports.
- `physical/`: Physical design files, GDSII, STA.
- `docs/`: Additional documentation.
- `scripts/`: Build, simulation, and helper scripts.

## Getting Started

1. Review architecture in `arch/`
2. Run Python algos in `algosim/`
3. Develop and simulate RTL in `rtl/` and `tb/`
4. Prototype in FPGA with Vivado scripts in `fpga/`
5. Synthesize & analyze with Yosys scripts in `synthesis/`
6. Use `make` for automation.
