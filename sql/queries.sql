CREATE DATABASE retail_analytics;
USE retail_analytics;


# Total Revenue
SELECT ROUND(SUM(TotalPrice), 2) AS total_revenue
FROM transactions;

# Monthly Revenue Trend
SELECT 
  DATE_FORMAT(InvoiceDate, '%Y-%m') AS month,
  ROUND(SUM(TotalPrice), 2) AS revenue
FROM transactions
GROUP BY month
ORDER BY month;

# Average Order Value
SELECT ROUND(AVG(order_total), 2) AS avg_order_value
FROM (
    SELECT Invoice,
           SUM(TotalPrice) AS order_total
    FROM transactions
    GROUP BY Invoice
) sub;

ALTER TABLE transactions
CHANGE COLUMN `Customer ID` CustomerID INT;

# Top 10 Customers
select CustomerID,
	   round(SUM(totalprice), 2) as customer_total
from transactions
group by CustomerID 
order by customer_total desc 
limit 10;

# Rank Customers by Revenue
SELECT 
    CustomerID,
    ROUND(SUM(TotalPrice), 2) AS revenue,
    RANK() OVER (ORDER BY SUM(TotalPrice) DESC) AS revenue_rank
FROM transactions
GROUP BY CustomerID;

# Repeat Purchase Rate
SELECT 
    COUNT(DISTINCT CustomerID) AS total_customers,
    COUNT(DISTINCT CASE WHEN order_count > 1 THEN CustomerID END) AS repeat_customers
FROM (
    SELECT CustomerID,
           COUNT(DISTINCT Invoice) AS order_count
    FROM transactions
    GROUP BY CustomerID
) sub;



