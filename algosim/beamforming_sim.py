import numpy as np

# Example: Simple beamforming with a uniform linear array (ULA)
N = 8  # Number of antennas
theta_deg = 30  # Beam angle in degrees
d = 0.5  # Antenna spacing (in wavelengths)

# Steering vector
theta = np.deg2rad(theta_deg)
n = np.arange(N)
steer = np.exp(1j * 2 * np.pi * d * n * np.sin(theta))

# Simulated received signal (all ones for simplicity)
x = np.ones(N, dtype=complex)

# Apply beamforming
y = np.vdot(steer, x) / N

print("Steering vector:", steer)
print("Beamformed output:", y)
