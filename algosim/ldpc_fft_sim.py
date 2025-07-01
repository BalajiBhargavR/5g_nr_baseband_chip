import numpy as np
from numpy.fft import fft, ifft
from pyldpc import make_ldpc, encode, decode, get_message
import scipy

# LDPC Setup
n = 15
d_v = 2  # Variable node degree
d_c = 3  # Check node degree
systematic = True
H, G = make_ldpc(n, d_v, d_c, systematic=systematic, sparse=True)
msg = np.random.randint(2, size=G.shape[1])
codeword = encode(G, msg, snr=2)
print("Original message: ", msg)
print("Encoded codeword: ", codeword)

# Channel (add noise)
snr = 2
y = codeword + np.random.normal(0, 1/snr, size=codeword.shape)
# LDPC Decode
dmsg = decode(H, y, snr)
print("Decoded message: ", get_message(G, dmsg))

# FFT Example
x = np.random.rand(8)
X = fft(x)
x_rec = ifft(X)
print("\nFFT original: ", x)
print("FFT spectrum: ", X)
print("FFT recovered: ", x_rec)
