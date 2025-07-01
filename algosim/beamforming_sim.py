import numpy as np

def beamform(weights, signals):
    return np.dot(weights, signals)

print("=== Beamforming Example ===")
signals = np.array([1, 2, 3, 4, 5, 6, 7, 8])
weights = np.array([1, 0.9, 0.8, 0.7, 0.6, 0.5, 0.4, 0.3])
output = beamform(weights, signals)
print("Signals:", signals)
print("Weights:", weights)
print("Beamformed Output:", output)
