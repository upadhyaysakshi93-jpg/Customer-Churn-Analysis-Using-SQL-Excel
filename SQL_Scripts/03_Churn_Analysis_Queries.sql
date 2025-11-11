
-- Overall churn rate
SELECT 
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*), 2) AS churn_rate_percentage
FROM Churn_Analysis;

-- Churn by Contract Type
SELECT 
    Contract,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*), 2) AS churn_rate_percentage
FROM Churn_Analysis
GROUP BY Contract
ORDER BY churn_rate_percentage DESC;

-- Churn by Internet Service
SELECT 
    InternetService,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*), 2) AS churn_rate_percentage
FROM Churn_Analysis
GROUP BY InternetService
ORDER BY churn_rate_percentage DESC;

-- Churn by Payment Method
SELECT 
    PaymentMethod,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*), 2) AS churn_rate_percentage
FROM Churn_Analysis
GROUP BY PaymentMethod
ORDER BY churn_rate_percentage DESC;
