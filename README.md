# 🏢 Retail Intelligence & Customer Analytics

## 📌 Overview
This project presents an end-to-end data analytics solution built on the Online Retail II dataset (~500K+ records). The objective is to analyze sales performance, customer behavior, and revenue trends to derive actionable business insights and support data-driven decision-making.

---

## 🎯 Business Objective
The objective of this analysis is to evaluate sales performance, understand customer purchasing behavior, and identify opportunities to improve customer retention and maximize revenue.

---

## 🛠 Tech Stack
- **SQL (MySQL)** – Data querying and analytics  
- **Python (Pandas)** – Data cleaning and preprocessing  
- **Tableau** – Interactive dashboard and visualization  
- **DBeaver** – Database management  

---

## 📊 Dashboard Preview

![Retail Intelligence Dashboard](Retail-intelligent-dashboard.png)

---

## 📂 Project Structure

retail-intelligence-end-to-end/
│
├── data/
│ ├── raw.csv
│ ├── cleaned.csv
│
├── notebooks/
│ ├── data_cleaning.ipynb
│
├── sql/
│ ├── analysis_queries.sql
│
├── dashboard/
│ ├── tableau_dashboard.twb
│
└── README.md


---

## 🧹 Data Cleaning (Python)

Performed preprocessing using Pandas:

- Removed missing Customer IDs  
- Converted data types (InvoiceDate → datetime)  
- Removed negative/invalid values (Quantity, Price)  
- Removed duplicate records  
- Created new date-based features:
  - Year, Month, Day, Month Name, Day Name  
- Created **TotalPrice = Quantity × Price**

---

## 🗄 SQL Analysis

Key business queries performed:

- **Total Revenue**
- **Monthly Revenue Trend**
- **Average Order Value (AOV)**
- **Top 10 Customers by Revenue**
- **Customer Ranking (RANK function)**
- **Repeat Purchase Rate**

---

## 🔍 Key Insights

### 👥 Customer Behavior
- Repeat customers contribute significantly to total revenue, highlighting strong retention impact.
- ~28% of customers make only one purchase, indicating potential churn risk.

### 📈 Sales Trends
- Revenue consistently increases from September and peaks in November each year.
- February shows the lowest sales across both years, indicating seasonal variation.

### 🌍 Geographic Performance
- Majority of revenue is concentrated in the **United Kingdom**, showing strong regional demand.
- Opportunity exists to expand in underperforming countries.

### 💰 Revenue Concentration
- Top 10 customers contribute a significant portion of revenue, indicating dependency on high-value customers.

---

## 💡 Business Recommendations

- **Retention Strategy:**  
  Implement loyalty programs and personalized offers to improve repeat customer rate.

- **Seasonal Campaigns:**  
  Run targeted promotions during high-performing months (Sep–Nov) to maximize revenue.

- **Reduce Customer Churn:**  
  Improve engagement strategies (email campaigns, offers) to convert one-time buyers into repeat customers.

- **Geographic Expansion:**  
  Focus on growing sales in underperforming regions through localized strategies.

---

## 📊 Dashboard Features

- KPI Overview (Revenue, Orders, Customers, Repeat Rate)
- Monthly Revenue Trend
- Geographic Sales Distribution (Map)
- Repeat vs New Customer Analysis
- Top 10 Customers by Revenue
- Interactive Filters (Date Range)

---

## 🚀 Conclusion
This project demonstrates how raw transactional data can be transformed into meaningful business insights using SQL, Python, and Tableau. The analysis highlights the importance of customer retention, seasonal trends, and revenue concentration in driving business growth.

---

## 🔮 Future Improvements
- Add **Cohort Analysis** for deeper retention insights  
- Implement **Customer Segmentation (RFM Analysis)**  
- Build **Predictive Models (Churn Prediction)**  
- Deploy dashboard for real-time analytics  

---

## 👨‍💻 Author
**Akshit Chauhan**
