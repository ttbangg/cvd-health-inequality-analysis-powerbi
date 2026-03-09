/* ======================================================
CVD Health Inequality Analysis
Data Audit Queries
Purpose: Validate dataset quality before dashboard analysis
TOOLS: SQLite / DB Browser
====================================================== */

-- 1. Check distribution of IMD quintiles
SELECT IMD_Quintile, COUNT(*) AS Frequency
FROM CVD_Analysis
GROUP BY IMD_Quintile
ORDER BY Frequency DESC;


-- 2. Identify missing prevalence values
SELECT 
    SUM(CASE WHEN Hypertension_Prevalence_Percent IS NULL THEN 1 ELSE 0 END) AS Missing_Hypertension,
    SUM(CASE WHEN Diabetes_Prevalence_Percent IS NULL THEN 1 ELSE 0 END) AS Missing_Diabetes,
    SUM(CASE WHEN Smoking_Prevalence_Percent IS NULL THEN 1 ELSE 0 END) AS Missing_Smoking,
    SUM(CASE WHEN Obesity_Prevalence_Percent IS NULL THEN 1 ELSE 0 END) AS Missing_Obesity
FROM CVD_Analysis;


-- 3. Detect extreme mortality values
SELECT 
    MIN(CVD_Mortality_Rate_per_100k) AS Min_Mortality,
    MAX(CVD_Mortality_Rate_per_100k) AS Max_Mortality
FROM CVD_Analysis;


-- 4. Examine mortality gradient by deprivation
SELECT 
    IMD_Quintile,
    ROUND(AVG(CVD_Mortality_Rate_per_100k),1) AS Avg_Mortality
FROM CVD_Analysis
GROUP BY IMD_Quintile
ORDER BY IMD_Quintile;
