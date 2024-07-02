# Piecewise-OCV-SOC-Curve
This demo loads C/32 low-rate OCV-SOC data collected from two commercially available Lithium-ion cells. It implements a dynamic programming approach 
to reduce (or nonuniformly downsample) the $N$-dimensional OCV-SOC data to $M$-dimensional OCV-SOC breakpoints, where $M < N$. 

In the figure below, blue circles represent the OCV-SOC data points, and orange asterisks indicate the OCV-SOC breakpoints computed using dynamic programming. The dotted lines show the piecewise linear segments obtained through interpolation between the breakpoints.

### NMC cell (Molicel INR-21700-P42A)
![NMC](NMC.png)
### LFP cell  (Lithium Werks APR-18650-M1B)
![LFP](LFP.png)

### Bibtex:
```
Piecewise OCV-SOC Curve Approximation of Lithium-ion Batteries: A Dynamic Programming Approach.
Under review. 
