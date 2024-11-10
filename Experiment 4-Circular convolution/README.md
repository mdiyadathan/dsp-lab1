Theory:
Circular convolution is a mathematical operation that is like linear convolution 
but is performed in a periodic or circular manner. This is particularly useful in discretetime signal processing where signals are often represented as periodic sequences. 
 Mathematical Definition: 
 Given two periodic sequences x[n] and h[n], their circular convolution is define as:
 y[n] = (x[n] ⊛ h[n]) = ∑_{k=0} ^{N-1} x[k]h[(n-k) mod N] 
 Applications: 
• Discrete-Time Filtering: Circular convolution is used for filtering discretetime signals. 
• Digital Signal Processing: It's a fundamental operation in many digital signal 
processing algorithms. 
• Cyclic Convolution: In certain applications, such as cyclic prefix OFDM, 
circular convolution is used to simplify the implementation of linear 
convolution.

Observation:

1. Using fft and ifft : 
33. 30. 22. 24. 31.
2. Using concentric circle method using concentric circle method: 
33. 30. 22. 24. 31.
3. Using matrix method using matrix method.: 
33. 30. 22. 24. 31

 Result :
 
Performed Circular Convolution using 
a) FFT and IFFT, 
b) Concentric Circle method,
c) Matrix method and verified result               


