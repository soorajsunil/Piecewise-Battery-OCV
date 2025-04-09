# Battery SOC-OCV Lookup Table Optimization

This demo includes pseudo-OCV data collected from various commercial cylindrical Lithium-ion cells. A dynamic programming optimization approach is implemented to determine the optimal placement of SOC-OCV lookup table (LUT) breakpoints. The following cells are included:

| Cell Model                                                                 | Test Condition                               | 
|----------------------------------------------------------------------------|----------------------------------------------|
| [Molicel INR-21700P42A](https://www.molicel.com/wp-content/uploads/INR21700P42A-V4-80092.pdf) | C/32 charge-discharge cycling at room temperature. | 
| [Lithium Werks APR-18650M1B](https://lithiumwerksbatteries.com/lithiumwerks-apr18650m1-b-3-3-volt-1-2-ah-lithium-iron-phosphate-lifepo4-battery/) | C/32 charge-discharge cycling at temperature. |  
| [Samsung INR-2170040T](https://www.dnkpower.com/wp-content/uploads/2019/02/SAMSUNG-INR21700-40T-Datasheet.pdf) | C/20 discharge-charge cycling at room temperature.|

The figures below plot the optimized SOC-OCV LUT breakpoints alongside the corresponding pseudo-OCV curves.

<!--  Molicel INR-21700P42A -->
<table>
  <tr>
    <td>
      <img src="https://github.com/soorajsunil/Piecewise-Battery-OCV/blob/main/Figures/Molicel-INR21700P42A.png?raw=true" width="500" height="300"/>
    </td>
    <td>
      <table>
        <tr><th>SOC</th><th>OCV</th></tr>
        <tr><td>0.0000</td><td>2.5061</td></tr>
        <tr><td>0.0151</td><td>2.8981</td></tr>
        <tr><td>0.0452</td><td>3.1461</td></tr>
        <tr><td>0.0955</td><td>3.3231</td></tr>
        <tr><td>0.1508</td><td>3.4218</td></tr>
        <tr><td>0.2915</td><td>3.5737</td></tr>
        <tr><td>0.4573</td><td>3.7017</td></tr>
        <tr><td>0.8342</td><td>4.0637</td></tr>
        <tr><td>0.9497</td><td>4.1009</td></tr>
        <tr><td>1.0000</td><td>4.1932</td></tr>
      </table>
    </td>
  </tr>
</table>

<!--  Lithium Werks APR-18650M1B -->
<table>
  <tr>
    <td>
      <img src="https://github.com/soorajsunil/Piecewise-Battery-OCV/blob/main/Figures/LithiumWerks-APR18650M1B.png?raw=true" width="500" height="300"/>
    </td>
    <td>
      <table>
        <tr><th>SOC</th><th>OCV</th></tr>
        <tr><td>0.0000</td><td>2.0102</td></tr>
        <tr><td>0.0033</td><td>2.4177</td></tr>
        <tr><td>0.0117</td><td>2.7405</td></tr>
        <tr><td>0.0267</td><td>2.9299</td></tr>
        <tr><td>0.0534</td><td>3.0872</td></tr>
        <tr><td>0.0885</td><td>3.1942</td></tr>
        <tr><td>0.2972</td><td>3.2772</td></tr>
        <tr><td>0.9833</td><td>3.3511</td></tr>
        <tr><td>0.9950</td><td>3.4180</td></tr>
        <tr><td>1.0000</td><td>3.5981</td></tr>
      </table>
    </td>
  </tr>
</table>


<!--  Samsung INR-2170040T -->
<table>
  <tr>
    <td>
      <img src="https://github.com/soorajsunil/Piecewise-Battery-OCV/blob/main/Figures/Samsung-INR2170040T.png?raw=true" width="500" height="300"/>
    </td>
    <td>
      <table>
        <tr><th>SOC</th><th>OCV</th></tr>
        <tr><td>0.0000</td><td>2.5000</td></tr>
        <tr><td>0.0050</td><td>2.8080</td></tr>
        <tr><td>0.0352</td><td>3.1179</td></tr>
        <tr><td>0.0854</td><td>3.3182</td></tr>
        <tr><td>0.1357</td><td>3.4193</td></tr>
        <tr><td>0.2915</td><td>3.5826</td></tr>
        <tr><td>0.4523</td><td>3.6941</td></tr>
        <tr><td>0.8392</td><td>4.0664</td></tr>
        <tr><td>0.9548</td><td>4.1121</td></tr>
        <tr><td>1.0000</td><td>4.2000</td></tr>
      </table>
    </td>
  </tr>
</table>


### BibTeX
If you find this repo useful in your research, please cite:
```bibtex
@article{sunil2025piecewise,
  title={Piecewise Linear Approximation of Battery Open-Circuit Voltage Characteristics Using Dynamic Programming},
  author={Sunil, Sooraj and Pattipati, Krishna R and Balasingam, Balakumar},
  journal={IEEE Transactions on Instrumentation and Measurement},
  year={2025},
  publisher={IEEE}
}
