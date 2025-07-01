PYTHON=python3

all: sim

sim:
	$(PYTHON) algosim/ldpc_fft_sim.py
	$(PYTHON) algosim/beamforming_sim.py
