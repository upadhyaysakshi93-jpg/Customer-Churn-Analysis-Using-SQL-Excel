
-- Check table structure
DESCRIBE Churn_Analysis;

-- Count total records
SELECT COUNT(*) AS Total_Customers FROM Churn_Analysis;

-- Check for NULL or Empty TotalCharges
SELECT COUNT(*) AS Empty_TotalCharges
FROM Churn_Analysis
WHERE TotalCharges IS NULL OR TotalCharges = '';

-- Check missing values across key fields
SELECT 
    SUM(customerID IS NULL) AS Missing_customerID,
    SUM(gender IS NULL) AS Missing_gender,
    SUM(SeniorCitizen IS NULL) AS Missing_SeniorCitizen,
    SUM(tenure IS NULL) AS Missing_tenure,
    SUM(TotalCharges IS NULL) AS Missing_TotalCharges
FROM Churn_Analysis;

-- Check for duplicate customer IDs
SELECT customerID, COUNT(*) 
FROM Churn_Analysis
GROUP BY customerID
HAVING COUNT(*) > 1;

-- Distinct category counts
SELECT 
    COUNT(DISTINCT Contract) AS Unique_Contracts,
    COUNT(DISTINCT PaymentMethod) AS Unique_PaymentMethods,
    COUNT(DISTINCT InternetService) AS Unique_InternetServices
FROM Churn_Analysis;
