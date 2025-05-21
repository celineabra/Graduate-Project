
# 698 Culminating Project – Determining the Trends and Most Important World Development Indicators for Life Expectancy at Birth Using World Bank Data

**Authors**: Celine Abrahamian, Joshua Cabal, Namrata Patil, Christopher Yeung  
California State University, Northridge  
May 2025

---

## Table of Contents

- [Abstract](#abstract)  
- [Introduction](#introduction)  
- [Research Objective](#research-objective)  
- [Methodology](#methodology)  
  - [Data Source and Extraction](#data-source-and-extraction)  
  - [Dataset Preparation](#dataset-preparation)  
  - [Dataset Splitting and Feature Selection](#dataset-splitting-and-feature-selection)  
  - [Analysis Methods](#analysis-methods)  
- [Results](#results)  
  - [Exploratory Data Analysis](#exploratory-data-analysis)  
  - [OLS Regression Results](#ols-regression-results)  
  - [K-Means Clustering](#k-means-clustering)  
- [Discussion](#discussion)  
  - [Interpretation](#interpretation)  
  - [Limitations](#limitations)  
- [Conclusion](#conclusion)  
- [References](#references)

---

## Abstract

Life expectancy at birth, as defined by the World Health Organization, represents the average number of years a newborn is expected to live if current mortality trends persist. This paper analyzes global development indicators that influence life expectancy, using data from the World Bank’s WDI database (2004–2024, 171 countries, N = 2886). The dataset was processed using KNN imputation, winsorization, and standardization. Indicators were grouped into three domains: environmental, socioeconomic, and health. Ordinary Least Squares (OLS) regression and K-means clustering were applied to evaluate predictive power and cluster similarities.

Health indicators had the strongest relationship to life expectancy (R² = 0.881), followed by socioeconomic (0.806) and environmental (0.665). Clustering further illustrated how country profiles shift over time. These findings support the development of targeted, evidence-based health and development policies.

---

## Introduction

Life expectancy is a critical health metric and an aggregate measure of a population’s well-being, economic conditions, and environmental exposures. This study seeks to determine how different domains of development indicators influence life expectancy at birth and whether these indicators can reliably predict changes over time.

---

## Research Objective

The primary objective is to evaluate whether life expectancy at birth can be predicted using categorized development indicators. Specifically:
- Identify which indicators (from environmental, socioeconomic, and health categories) are most predictive.
- Compare the explanatory power of each group.
- Use clustering to group countries based on development profiles and assess similarities in life expectancy.

---

## Methodology

### Data Source and Extraction

Data was extracted from:
- **World Development Indicators (WDI)**
- **Quarterly Public Sector Debt (QPSD)**
- **Statistical Performance Indicators (SPI)**

These datasets were merged into a relational database with tables for countries, topic indicators, and records. Filtering removed indicators and rows with excessive missingness (>70% for columns, >90% for rows).

---

### Dataset Preparation

- **Imputation**: K-Nearest Neighbors (KNN)
- **Outlier Handling**: Winsorization (3.5 standard deviations)
- **Scaling**: Standardization to zero mean and unit variance

---

### Dataset Splitting and Feature Selection

Indicators were split into three domains:
- **Environmental** (81 indicators)
- **Socioeconomic** (129 indicators)
- **Health** (76 indicators)

Feature selection was done via:
- Variance Inflation Factor (VIF) threshold of 4
- Removal of predictors with p-values > 0.05

---

### Analysis Methods

#### Ordinary Least Squares Regression

OLS models were fit separately to each indicator group to measure predictive power on life expectancy. Metrics include:
- R² and adjusted R²
- Root Mean Squared Error (RMSE)
- AIC and BIC

#### K-Means Clustering

K-means was applied to each domain at five-year intervals (2005, 2010, 2015, 2020) to group countries by similar development patterns and observe how these groups evolved over time.

---

## Results

### Exploratory Data Analysis

- **Global average life expectancy**: ~71 years
- **Highest gains**: Sub-Saharan Africa (>15%)
- **Sharpest decline**: Mexico (~6%)
- **LEB correlates with health expenditure** across regions and income levels

---

### OLS Regression Results

| Model           | R²    | Top Predictors |
|----------------|-------|----------------|
| Environmental  | 0.665 | CO₂ Emissions, Fertilizer, Forest Area |
| Socioeconomic  | 0.806 | Bank Branches, Agriculture, Tourism |
| Health         | 0.881 | Maternal Mortality, TB, Undernourishment |

The health model outperformed others due to close alignment between health indicators and period life table methodology.

---

### K-Means Clustering

- **Environmental Clusters**: Countries diverged on climate action and emissions
- **Socioeconomic Clusters**: Divided by banking access, income group, youth unemployment
- **Health Clusters**: Strong divide between high and low maternal mortality, TB rates

Cluster movement from 2005 to 2020 showed gradual improvement in most countries’ development indicators and corresponding gains in life expectancy.

---

## Discussion

### Interpretation

All three indicator domains were predictive of life expectancy, with health indicators showing the strongest influence. The clustering analysis illustrated how different groups of countries follow shared development trajectories and health outcomes.

---

### Limitations

- Counterintuitive results (e.g., maternal deaths showing positive correlation with LEB) suggest multicollinearity or data transformation effects.
- Some variables, while statistically significant, require domain-specific follow-up for validation.

---

## Conclusion

This study offers a predictive and descriptive understanding of life expectancy using global development indicators. Health indicators were the strongest drivers, but socioeconomic and environmental factors also play key roles. These results provide a foundation for policymakers to allocate resources and monitor progress more effectively.

---

## References

- Group 1. *BANA 698 Culminating Project (CSUN Fall 2025)*. GitHub. <https://github.com/CSUN-MS-BANA/culminating-project-group-1>  
- World Bank. *World Development Indicators*, *QPSD*, *SPI*  
- WHO. *World Health Statistics 2022*  
- Office of Disease Prevention and Health Promotion. *Social Determinants of Health*  
- MLA Handbook Plus. *Internal Headings and Subheadings*
