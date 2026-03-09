# Cardiovascular Disease Risk & Deprivation Analysis
### Population Health Intelligence Dashboard

This project analyses cardiovascular disease (CVD) mortality patterns across local populations, examining the relationship between behavioural risk factors, deprivation, and mortality outcomes.

The analysis demonstrates how public health data can be used to identify inequality gaps and prioritise prevention interventions.

---

## Tools Used
- SQL (data audit and validation)
- Microsoft Power BI (data modelling and dashboard development)

---

## Dataset Structure

Columns used in the analysis:

- Locality_Name
- IMD_Quintile
- Population_Size
- Hypertension_Prevalence (%)
- Diabetes_Prevalence (%)
- Smoking_Prevalence (%)
- Obesity_Prevalence (%)
- CVD_Mortality_Rate (per 100,000)

---

## Key Analytical Questions

1. Does cardiovascular mortality increase with deprivation?
2. How strongly are behavioural risk factors associated with mortality?
3. What is the inequality gap between most and least deprived populations?
4. Which areas should be prioritised for prevention interventions?

---

## Data Notes

The Index of Multiple Deprivation (IMD) quintile variable in this dataset is coded such that **Quintile 5 represents the most deprived areas and Quintile 1 the least deprived**, which is the reverse of the standard England reporting convention.

---

## Dashboard Pages

### Page 1 - Public Health Overview
Executive summary including:

- Average CVD Mortality
- Inequality Gap
- Relative Risk
- Excess Deaths
- CVD Mortality by IMD Quintile
- Risk Index by IMD Quintile
- Overview by Locality

---

### Page 2 - Risk vs Mortality Analysis
Scatter plot examining the relationship between behavioural risk factors and mortality rates.

---

### Page 3 - Prevention Priority Analysis
Identification of high-priority intervention areas using a prevention priority score.

---

## Key Insights

Cardiovascular mortality increases steadily with deprivation, with the highest burden concentrated in the most deprived quintiles. Behavioural risk factors including smoking, hypertension and obesity also cluster within these communities, reinforcing the strong association between deprivation, risk exposure and adverse health outcomes.

Locality 71 recorded the highest Prevention Priority Score due to a combination of elevated behavioural risk prevalence and high cardiovascular mortality. This suggests targeted prevention programmes such as smoking cessation, physical activity promotion and dietary interventions should be prioritised in this locality to reduce avoidable deaths.
