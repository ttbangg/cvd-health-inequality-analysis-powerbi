# Cardiovascular Disease Risk & Deprivation Analysis
### Population Health Intelligence Dashboard

## Quick Links

**View Dashboard Screenshots(https://github.com/ttbangg/cvd-health-inequality-analysis-powerbi/blob/main/dashboard_overview.png.png)** | **Download Power BI File(https://github.com/ttbangg/cvd-health-inequality-analysis-powerbi/blob/main/cvd_dashboard.pbix.pbix)** | **View SQL Code(https://github.com/ttbangg/cvd-health-inequality-analysis-powerbi/blob/main/cvd_data_audit.sql.sql)**

*Examining cardiovascular disease mortality patterns by deprivation to identify prevention intervention priorities*

---

## Project Overview

This project analyses cardiovascular disease (CVD) mortality patterns across local populations, examining the relationship between behavioural risk factors, deprivation, and mortality outcomes.

The analysis demonstrates how public health data can be used to identify inequality gaps and prioritise prevention interventions.

---

## Key Findings

- **Deprivation gradient confirmed:** CVD mortality increases steadily with deprivation, most deprived quintile experiences 75% higher mortality than least deprived

- **Inequality gap quantified:** 66.8 deaths per 100,000 excess mortality in most vs least deprived populations

- **Risk clustering:** Behavioural risk factors (smoking, obesity, hypertension) significantly elevated in deprived communities, reinforcing mortality disparities

- **Geographic outlier:** Locality 71 flagged-extreme mortality (210 per 100k) despite moderate deprivation, driven by high smoking/diabetes prevalence

- **Prevention priorities identified:** Top localities ranked by Prevention Priority Score combining mortality burden and modifiable risk exposure

- **Estimated preventable deaths:** 239 excess deaths if all areas achieved least deprived mortality rates

---

## Technical Approach

**Tools:**

- SQL (SQLite) - Data audit, validation, quality checks
- Microsoft Power BI - Data modeling, DAX measures, dashboard development

**Methods:**
- Risk stratification analysis
- Deprivation gradient assessment
- Composite risk scoring
- Prevention priority ranking
- Inequality gap calculation

---

 ## Data Notes

**IMD Quintile Coding:**  
This dataset uses reverse coding: IMD 5 = Most Deprived, IMD 1 = Least Deprived  
(Opposite of standard England reporting where IMD 1 = most deprived)

**Data Source:** Simulated/synthetic dataset for analytical demonstration

---

### Data Quality Assessment

**Sample size:** 75 localities

**Missing data:** 
- 4 missing values in each behavioural risk variable (Smoking Prevalence, Diabetes Prevalence, Obesity Prevalence, Hypertension Prevalence)
- Missing rate: ~5% per variable
- **Handling:** Median imputation applied in Power Query to preserve distribution while maintaining sample size

**Outliers detected:** 
- Locality 71: CVD mortality 210 per 100,000 (statistical outlier but biologically plausible; retained with flagging for clinical review)
- All other observations within expected epidemiological ranges for England

**Data validation:** SQL audit queries confirmed data integrity, IMD gradient alignment, and absence of systematic errors

---

## Dashboard Components

### Page 1: Public Health Overview
Executive summary for senior decision-makers
- KPI cards: Average mortality, inequality gap, relative risk, excess deaths
- Mortality by deprivation quintile
- Risk index trends
- Overview table by locality

### Page 2: Risk vs Mortality Analysis
Analytical view for public health intelligence teams
- Scatter plot: Risk index vs mortality
- Population-weighted visualization
- Demonstrates risk-outcome relationship

### Page 3: Prevention Priority Analysis
Commissioning tool for intervention targeting
- Prevention Priority Score ranking
- Geographic identification of high-burden areas
- Filterable by deprivation level

---

## Methodology

### Prevention Priority Score

**Formula:** 
`Prevention Priority Score = (Average CVD Mortality × Average Risk Index) / 100`

**Rationale:** 
This composite score identifies localities where:
1. **Current burden is high** (elevated mortality) 
2. **Modifiable risk is high** (elevated behavioural risk factors)

Areas scoring highest have both:
- Greatest need (mortality burden)
- Greatest prevention potential (modifiable risk exposure)

This enables **proportionate universalism**-targeting resources where they can achieve maximum population health impact.

---

### Excess Deaths Calculation

**Baseline:** IMD Quintile 1 average mortality rate (88.8 per 100,000)

**Method:** For each locality, calculated:
- Excess rate = (Observed mortality - 88.8)
- Excess deaths = (Excess rate / 100,000) × Population size

**Interpretation:** Estimated deaths that would be prevented if all areas achieved the mortality rate of least deprived populations, a measure of **health inequality burden**.

**Total excess deaths in sample: 239** *(rounded from 238.79)*

---

### Risk Index Calculation

**Formula:**
`Risk Index = Hypertension Prevalence (%) + Diabetes Prevalence (%) + Smoking Prevalence (%) + Obesity Prevalence (%)`

**Rationale:**
Composite score aggregating four major modifiable cardiovascular risk factors. Higher values indicate greater cumulative behavioural risk burden within a population.

---

### Relative Risk Calculation

**Formula:**
`Relative Risk = (Most deprived mortality rate) ÷ (Least deprived mortality rate)`

**Result:** 1.75

**Interpretation:** Most deprived populations experience 1.75 times the CVD mortality rate of least deprived populations (75% higher risk).

---

## Public Health Application

This analysis demonstrates practical population health intelligence capabilities:

**For Commissioners:**  
- Identifies high-priority geographic areas for targeted prevention investment
- Quantifies preventable deaths through inequality reduction
- Supports proportionate universalism approach to resource allocation

**For Public Health Teams:**  
- Enables evidence-based intervention targeting (smoking cessation, NHS Health Checks, physical activity programs)
- Provides inequality gap metrics for Joint Strategic Needs Assessments
- Demonstrates data-driven approach to reducing cardiovascular health disparities

**For ICS/Local Authorities:**  
- Supports population health management with risk stratification approach
- Aligns with NHS Long Term Plan cardiovascular disease prevention priorities
- Provides intelligence framework for Core20PLUS5 health inequalities work

---

## Repository Structure
```
CVD-Risk-Deprivation-Analysis/
├── README.md                      # Project documentation and findings
├── LICENSE                        # MIT License
├── cvd_dashboard.pbix             # Power BI dashboard (3 pages)
├── cvd_data_audit.sql             # SQL data quality checks and validation
├── cvd_dataset_cleaned.csv        # Cleaned dataset (post-imputation)
├── dashboard_overview.png         # Screenshot: Page 1 (Public Health Overview)
├── risk_vs_mortality.png          # Screenshot: Page 2 (Risk Analysis)
└── prevention_priority.png        # Screenshot: Page 3 (Prevention Priorities)
```

**Files:**
- **Power BI Dashboard:** Interactive 3-page dashboard with KPIs, risk analysis, and prevention prioritization
- **SQL Script:** Data audit queries including missing value checks, outlier detection, and gradient analysis
- **Dataset:** Cleaned data with median imputation applied for missing values
- **Screenshots:** Visual preview of all three dashboard pages

---

## Related Portfolio Work

This is the second project in my public health analytics portfolio:

**1. NHS DNA Analysis - Health Equity Case Study(https://github.com/ttbangg/NHS-Health-Equity-Analysis)**  
Analyzed 1,200 GP appointments identifying 2.5x attendance disparity by deprivation

**2. Cardiovascular Disease Risk & Deprivation Analysis** ← *You are here*  
CVD mortality risk stratification demonstrating progression to predictive analytics

---

## About

**Toheeb Quadri**  
MSc Public Health (Distinction), Sheffield Hallam University  
RSPH Student Member

Actively seeking Public Health Analyst/Officer/Intelligence roles with visa sponsorship.

**Connect:** LinkedIn(https://www.linkedin.com/in/toheeb-quadri-668228107/) | GitHub(https://github.com/ttbangg) | **Portfolio:** GitHub(https://github.com/ttbangg)

## License

MIT License
