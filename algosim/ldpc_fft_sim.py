import numpy as np
from pyldpc import make_ldpc, encode, decode, get_message

print("=== LDPC Example ===")
n = 128; d_v = 2; d_c = 4; snr = 2
H, G = make_ldpc(n, d_v, d_c, systematic=True, sparse=True)
msg = np.random.randint(2, size=G.shape[1])  # Corrected size!
code = encode(G, msg, snr)
print("Orig msg:", msg)
print("Code:", code)
received = code.copy() # (simulate channel here)
decoded = decode(H, received, snr)
print("Decoded:", get_message(G, decoded))

print("=== FFT Example ===")
x = np.random.randn(8)
X = np.fft.fft(x)
print("Input:", x)
print("FFT:", X)
