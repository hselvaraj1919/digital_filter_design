#DIGITAL FILTER DESIGN

*COMPANY*: CODETECH IT SOLUTIONS

*NAME*: H. SELVARAJ

*INTERN ID*:CTO4DL1346

*DOMAIN*: VLSI

*DURATION*:4 weeks

*MENTOR*:NEELA SANTOSH

*DETAILED DESCRIPTION*

1. Introduction to FIR Filters
A Finite Impulse Response (FIR) filter is a fundamental type of digital filter used in signal processing. It has a finite-duration impulse response, meaning its output depends only on a finite number of past and current input samples. FIR filters are known for their stability, linear phase, and predictable behavior, making them highly suitable for applications in communications, audio processing, and biomedical signal processing.

The mathematical representation of an FIR filter is:
𝑦[𝑛]=ℎ0𝑥[𝑛]+ℎ1𝑥[𝑛-1]+ℎ2𝑥[𝑛−2]+⋯+ℎ𝑁−1𝑥[𝑛−(𝑁−1)]y[n]=h0x[n]+h1x[n−1]+2x[n−2]+⋯+hN−1​x[n−(N−1)]
Where:
y[n] is the current output,
x[n] is the current input sample,ℎ𝑘hk
  are the filter coefficients (impulse response),
N is the number of taps (order + 1).
2. FIR Filter Design Steps
Specification: Define filter characteristics such as passband, stopband, sampling rate, and filter type (low-pass, high-pass, etc.).
Coefficient Calculation: Use tools like MATLAB, Octave, or Python (SciPy) to calculate coefficients.
Quantization: Convert floating-point coefficients to fixed-point for hardware use.
Implementation in Verilog: Use shift registers and multipliers to implement the convolution.
Simulation: Use a testbench to validate functionality with known inputs and outputs.
3. FIR Filter Architecture in Verilog
A basic FIR filter architecture consists of:
Shift Registers: To store previous input samples.
Multipliers: To multiply each input sample by a coefficient
Adders: To sum the products to produce the output.
Assume a 4-tap FIR filter with fixed-point 8-bit input and coefficient width:
FIR Equation:
𝑦[𝑛]=ℎ0𝑥[𝑛]+ℎ1𝑥[𝑛−1]+ℎ2𝑥[𝑛−2]+ℎ3𝑥[𝑛−3]y[n]=h0x[n]+h1x[n−1]+h 
2x[n−2]+h​x[n−3]
