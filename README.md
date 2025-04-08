# Battery SOC-OCV Lookup Table Optimization

This demo includes pseudo-OCV data collected from various commercial cylindrical Lithium-ion cells. A dynamic programming optimization approach is implemented to determine the optimal placement of SOC-OCV lookup table (LUT) breakpoints. The following cells are included:

| Cell Model                       | Test Condition                               | 
|----------------------------------|----------------------------------------------|
| [Molicel INR-21700-P42A](#)           | C/32 charge-discharge cycling at temperature | 
| [Lithium Werks APR-18650-M1B](https://lithiumwerksbatteries.com/lithiumwerks-apr18650m1-b-3-3-volt-1-2-ah-lithium-iron-phosphate-lifepo4-battery/) | C/32 charge-discharge cycling at temperature | 

The demo showcases optimized SOC-OCV LUT breakpoints alongside the corresponding pseudo-OCV curves.

### Molicel INR-21700-P42A
<p align="center">
  <img src="https://github.com/soorajsunil/Piecewise-Battery-OCV/blob/main/Figures/Molicel-INR21700P42A.png?raw=true" width="600" height="400"/>
</p>

### Lithium Werks APR-18650-M1B
<p align="center">
  <img src="https://github.com/soorajsunil/Piecewise-Battery-OCV/blob/main/Figures/LithiumWerks-APR18650M1B.png?raw=true" width="600" height="400"/>
</p>


### BibTeX
```bibtex
@article{sunil2025piecewise,
  title={Piecewise Linear Approximation of Battery Open-Circuit Voltage Characteristics Using Dynamic Programming},
  author={Sunil, Sooraj and Pattipati, Krishna R and Balasingam, Balakumar},
  journal={IEEE Transactions on Instrumentation and Measurement},
  year={2025},
  publisher={IEEE}
}
