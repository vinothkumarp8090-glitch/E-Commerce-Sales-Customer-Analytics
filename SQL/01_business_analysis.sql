-- E-Commerce Sales & Customer Analytics
-- SQL Business Analysis


-- 1. Total Sales
SELECT 
    SUM(Sales) AS Total_Sales
FROM sales;


-- 2. Total Profit
SELECT
    SUM(Profit) AS Total_Profit
FROM sales;


-- 3. Total Orders, Customers and Products
SELECT
    COUNT(DISTINCT Order_ID) AS Total_Orders,
    COUNT(DISTINCT Customer_ID) AS Total_Customers,
    COUNT(DISTINCT Product_ID) AS Total_Products
FROM sales;


-- 4. Average Order Value
SELECT
    SUM(Sales) / COUNT(DISTINCT Order_ID) AS Average_Order_Value
FROM sales;


-- 5. Monthly Sales and Profit
SELECT
    Year,
    Month,
    Month_Name,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM sales
GROUP BY Year, Month, Month_Name
ORDER BY Year, Month;


-- 6. Sales and Profit by Category
SELECT
    Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity
FROM sales
GROUP BY Category
ORDER BY Total_Sales DESC;


-- 7. Top 10 Products by Sales
SELECT
    Product_ID,
    Product_Name,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity
FROM sales
GROUP BY Product_ID, Product_Name
ORDER BY Total_Sales DESC
LIMIT 10;


-- 8. Sales and Profit by State
SELECT
    State,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity
FROM sales
GROUP BY State
ORDER BY Total_Sales DESC;


-- 9. Top 10 Customers by Sales
SELECT
    Customer_ID,
    COUNT(DISTINCT Order_ID) AS Total_Orders,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM sales
GROUP BY Customer_ID
ORDER BY Total_Sales DESC
LIMIT 10;


-- 10. Profit Margin by Category
SELECT
    Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    ROUND((SUM(Profit) / SUM(Sales)) * 100, 2) AS Profit_Margin_Percent
FROM sales
GROUP BY Category
ORDER BY Profit_Margin_Percent DESC;


-- 11. Loss-Making Products
SELECT
    Product_ID,
    Product_Name,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM sales
GROUP BY Product_ID, Product_Name
HAVING SUM(Profit) < 0
ORDER BY Total_Profit ASC;


-- 12. Loss-Making Transactions
SELECT
    Order_ID,
    Order_Date,
    Product_ID,
    Product_Name,
    Sales,
    Profit
FROM sales
WHERE Profit < 0
ORDER BY Profit ASC;


-- 13. One-Time vs Returning Customers
SELECT
    Customer_Type,
    COUNT(*) AS Customer_Count
FROM (
    SELECT
        Customer_ID,
        CASE
            WHEN COUNT(DISTINCT Order_ID) > 1
                THEN 'Returning Customer'
            ELSE 'One-Time Customer'
        END AS Customer_Type
    FROM sales
    GROUP BY Customer_ID
) AS customer_types
GROUP BY Customer_Type;


-- 14. Repeat Purchase Rate
SELECT
    ROUND(
        SUM(CASE WHEN Total_Orders > 1 THEN 1 ELSE 0 END)
        / COUNT(*) * 100,
        2
    ) AS Repeat_Purchase_Rate_Percent
FROM (
    SELECT
        Customer_ID,
        COUNT(DISTINCT Order_ID) AS Total_Orders
    FROM sales
    GROUP BY Customer_ID
) AS customer_orders;


-- 15. Top 10 Cities by Sales
SELECT
    City,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    COUNT(DISTINCT Order_ID) AS Total_Orders
FROM sales
GROUP BY City
ORDER BY Total_Sales DESC
LIMIT 10;


-- 16. Monthly Order Volume
SELECT
    Year,
    Month,
    Month_Name,
    COUNT(DISTINCT Order_ID) AS Total_Orders
FROM sales
GROUP BY Year, Month, Month_Name
ORDER BY Year, Month;


-- 17. Quarterly Performance
SELECT
    Year,
    Quarter,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    COUNT(DISTINCT Order_ID) AS Total_Orders
FROM sales
GROUP BY Year, Quarter
ORDER BY Year, Quarter;


-- 18. Consolidated KPI Summary
SELECT
    COUNT(DISTINCT Order_ID) AS Total_Orders,
    COUNT(DISTINCT Customer_ID) AS Total_Customers,
    COUNT(DISTINCT Product_ID) AS Total_Products,
    SUM(Quantity) AS Total_Quantity,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    ROUND(SUM(Sales) / COUNT(DISTINCT Order_ID), 2) AS Average_Order_Value,
    ROUND((SUM(Profit) / SUM(Sales)) * 100, 2) AS Overall_Profit_Margin
FROM sales;