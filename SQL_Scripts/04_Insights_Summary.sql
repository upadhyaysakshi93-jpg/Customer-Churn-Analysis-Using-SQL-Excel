
-- Average Tenure for churned vs non-churned
SELECT 
    Churn,
    ROUND(AVG(tenure),2) AS Avg_Tenure
FROM Churn_Analysis
GROUP BY Churn;

-- Churn rate by Tenure Group
SELECT 
  CASE 
    WHEN tenure <= 6 THEN '0-6 months'
    WHEN tenure BETWEEN 7 AND 12 THEN '7-12 months'
    WHEN tenure BETWEEN 13 AND 24 THEN '13-24 months'
    ELSE '25+ months'
  END AS tenure_group,
  COUNT(*) AS total_customers,
  SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
  ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*), 2) AS churn_rate_percentage
FROM Churn_Analysis
GROUP BY tenure_group
ORDER BY churn_rate_percentage DESC;

-- Average Monthly Charges for churned vs non-churned
SELECT 
    Churn,
    ROUND(AVG(MonthlyCharges),2) AS Avg_MonthlyCharges
FROM Churn_Analysis
GROUP BY Churn;

-- Summary View combining churn segments
SELECT 
    Contract,
    InternetService,
    ROUND(AVG(MonthlyCharges),2) AS Avg_MonthlyCharges,
    ROUND(SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*),2) AS Churn_Percentage
FROM Churn_Analysis
GROUP BY Contract, InternetService
ORDER BY Churn_Percentage DESC;
