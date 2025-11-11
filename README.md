# 📊 Churn Analysis using SQL & Excel  

> End-to-end customer churn analysis project using SQL for data analysis and Excel for dashboard visualization.

---

## 🔍 Project Overview  

This project focuses on analyzing telecom customer churn to identify patterns and business insights that can help reduce customer attrition.  
It combines **SQL-based data analysis** and an **Excel dashboard** to visualize results and key performance indicators.

---

## 🎯 Objectives  

- Understand overall churn rate and its drivers  
- Identify which customer segments are at higher risk of churn  
- Analyze churn patterns by contract type, tenure, and payment method  
- Provide insights to improve customer retention  

---

## 🧠 Tools & Skills Used  

| Tool | Purpose |
|------|----------|
| **SQL (MySQL)** | Data cleaning, querying, and analysis |
| **Excel** | Dashboard creation and KPI visualization |
| **PowerPoint** | Report presentation and storytelling |
| **Kaggle Dataset** | Real-world telco customer churn data |

---

## 🗄️ Dataset Information  

- **Source:** Kaggle – *Telco Customer Churn Dataset*  
- **Rows:** ~7,000+  
- **Columns:** 21  
- **Target Variable:** `Churn` (Yes / No)  

---

## ⚙️ Project Workflow  

1. **Database Setup** – Create and structure the churn analysis database.  
2. **Data Validation** – Check for missing values, duplicates, and incorrect entries.  
3. **Exploratory Data Analysis (EDA)** – Use SQL queries to identify churn patterns.  
4. **Insights Summary** – Highlight churn rate trends and key influencing factors.  
5. **Excel Dashboard** – Visualize results with KPIs and segment-level insights.  
6. **Final Presentation** – Summarize findings and recommendations.

---

## 🧩 SQL Script Details  

| File Name | Purpose |
|------------|----------|
| **01_Create_Database_Table.sql** | Creates database & table structure |
| **02_Data_Quality_Checks.sql** | Performs missing value & duplicate checks |
| **03_Churn_Analysis_Queries.sql** | Contains churn KPIs & insights (by Contract, Tenure, Payment Method, etc.) |

## 📊 Dashboard & Visualization  

The Excel dashboard (attached in the presentation folder) highlights:
- Churn distribution by demographics and contract type  
- Monthly charges comparison for churned vs retained customers  
- Tenure-based churn segmentation  
---

## ⚙️ How to Run This Project  

You can easily replicate or test this analysis on your local system:

### 🧩 Step 1 — Setup Database
1. Install **MySQL** on your system.  
2. Open **MySQL Workbench** (or any SQL editor).  
3. Run the file `01_Create_Database_Table.sql` to create the database and table.

### 🧹 Step 2 — Import Dataset
1. Open the **Dataset** folder.  
2. Use the command below (or import manually in MySQL):
   ```sql
   LOAD DATA INFILE 'path_to_dataset/churn_dataset.csv'
   INTO TABLE Churn_Analysis
   FIELDS TERMINATED BY ','
   IGNORE 1 ROWS;
Verify the data is loaded:

sql
Copy code
SELECT COUNT(*) FROM Churn_Analysis;  
### 📊 Step 3 — Run Analysis
Execute 02_Data_Quality_Checks.sql to clean and validate your data.

Then run 03_Churn_Analysis_Queries.sql to generate all churn insights and KPIs.  

### 📈 Step 4 — Create Dashboard
Use Excel to visualize churn trends.

You can link Excel to MySQL or import the final result as .csv.

Dashboard examples are shown in the Presentation folder.
## 💡 Key Insights  

- Customers with **month-to-month contracts** have the highest churn rate.  
- **Electronic check** payment method is strongly associated with churn.  
- Long-tenure customers (25+ months) show the lowest churn rate.  
- Offering **long-term contracts** and **better tech support** can improve retention.

---

## 🧾 KPI Summary  

| KPI | Value |
|-----|--------|
| Total Customers | 7,043 |
| Overall Churn Rate | 26.5% |
| churned Customers| 1869 |
---

## 🎤 Presentation Report  

📎 **File:** `PDF_Report/Churn_Analysis_Presentation.pdf`  
This presentation summarizes the project insights, SQL process, and dashboard visuals.

---


## 📘 Project Learnings  

- Hands-on practice in **SQL query structuring and data validation**.  
- Built confidence in **data storytelling using Excel dashboards**.  
- Understood key **business metrics** that affect churn behavior.
- 
## 🚀 Future Enhancements  

- Create an interactive **Power BI version** of the dashboard  
- Build a **predictive churn model** using Python (Logistic Regression)  
- Automate churn reporting using **SQL + Excel Macros**  

---

## 👩‍💻 Contact : 

**Sakshi Ratnakumar Upadhyay**  
Connect with me on LinkedIN :  
https://www.linkedin.com/in/sakshiupadhyayofficial/
---

## 🏷️ Tags  

`#DataAnalytics` `#SQL` `#Excel` `#ChurnAnalysis` `#PortfolioProject` `#DataVisualization`

---

 

