# Determining the Trends and Most Important World Development Indicators for Life Expectancy at Birth Using World Bank Data

May 2025

---

## Project Summary

This project examines which world development indicators—categorized into environmental, socioeconomic, and health domains—most significantly influence life expectancy at birth. Using twenty years of global data from the World Bank, we apply Ordinary Least Squares (OLS) regression and K-means clustering to model life expectancy outcomes and uncover country-level development patterns.

---

## Final Report

The full analysis and methodology are available in the final paper:  
[View the PDF](https://github.com/celineabra/Graduate-Project/blob/main/Final%20Report/report.final.docx.pdf)  
Path: `Final Report/report.final.docx.pdf`

---

## Key Findings

- Health indicators showed the strongest relationship to life expectancy (R² = 0.881)
- Socioeconomic indicators followed (R² = 0.806), with environmental indicators trailing (R² = 0.665)
- Countries clustered into distinct development profiles, with many showing consistent improvement over time


---

## Methodology Overview

**Data Sources:**
- World Development Indicators (WDI)
- Quarterly Public Sector Debt (QPSD)
- Statistical Performance Indicators (SPI)

**Preprocessing Steps:**
- KNN imputation for missing data
- Winsorization for outlier control
- Standardization of all variables

**Modeling Approach:**
- OLS regression for each indicator domain
- K-means clustering at five-year intervals (2005, 2010, 2015, 2020)

---

## Repository Structure

```
Graduate-Project/
├── Final Report/
│   └── report.final.docx.pdf
├── Week8_Analysis/
│   └── JC/
│       └── (data files and modeling outputs)
├── README.md
└── Wiki/
```

---

## References

- World Bank: WDI, QPSD, SPI databases
- WHO: World Health Statistics 2022
- Office of Disease Prevention and Health Promotion: Social Determinants of Health
- MLA Handbook Plus: Internal Headings and Subheadings

---

## Citation

Abrahamian, C., Cabal, J., Patil, N., & Yeung, C. (2025). *Determining the Trends and Most Important World Development Indicators for Life Expectancy at Birth Using World Bank Data*. California State University, Northridge.
