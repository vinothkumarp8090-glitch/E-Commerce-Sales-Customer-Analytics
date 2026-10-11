# 🛒 E-Commerce Sales & Customer Analytics

An end-to-end data analytics project using **Python, SQL, MySQL, and Power BI** to analyze e-commerce sales performance, profitability, product performance, and customer behavior.

## 📌 Project Overview

This project analyzes e-commerce sales data from India for 2023 to identify business trends, evaluate product and regional performance, and understand customer purchasing behavior.

The project follows a complete data analytics workflow, from data understanding and cleaning to exploratory data analysis, SQL business queries, customer segmentation, and interactive dashboard development.

## 🎯 Business Objectives

- Analyze overall sales and profit performance.
- Identify top-performing product categories and products.
- Understand monthly and quarterly sales trends.
- Compare sales performance across states and cities.
- Analyze customer purchasing behavior and repeat purchases.
- Segment customers using RFM analysis.
- Present business insights through an interactive Power BI dashboard.

## 🛠️ Tools & Technologies

- **Python:** Data cleaning, feature engineering, exploratory data analysis, and customer analytics.
- **Pandas & NumPy:** Data manipulation and analysis.
- **Matplotlib & Seaborn:** Data visualization.
- **SQL:** Business queries and KPI calculations.
- **MySQL:** Database creation, storage, and querying.
- **Power BI:** Interactive dashboard and business reporting.
- **Jupyter Notebook:** Python analysis workflow.

## 📂 Project Structure

```text
E-Commerce-Sales-Customer-Analytics/
│
├── Data/
│   ├── ecommerce_sales_india.csv
│   └── ecommerce_sales_cleaned.csv
│
├── Python/
│   ├── 01_data_understanding.ipynb
│   ├── 02_data_quality_cleaning.ipynb
│   ├── 03_exploratory_data_analysis.ipynb
│   └── ecommerce_sales_india.csv
│
├── SQL/
│   └── 01_business_analysis.sql
│
├── Power BI/
│   └── E-Commerce_Sales_Customer_Analytics.pbix
│
├── screenshots/
│   └── dashboard.png
│
├── documentation/
│
└── README.md
```

## 📊 Dataset Overview

- **Records:** 2,000 rows
- **Time Period:** January–December 2023
- **Geography:** India
- **Data Includes:** Orders, customers, products, categories, quantities, sales, profit, cities, and states.

The dataset contains order and product line-item information, allowing sales performance and customer behavior to be analyzed at different levels.

## 🧹 Data Cleaning & Preparation

The data preparation workflow included:

- Inspecting dataset structure and data types.
- Checking missing values and duplicate records.
- Converting order dates to datetime format.
- Removing duplicate records where appropriate.
- Trimming whitespace from text columns.
- Creating year, month, month name, and quarter features.
- Calculating profit margin.
- Saving the cleaned dataset for subsequent analysis.

Potentially legitimate negative-profit transactions were retained for analysis.

## 📈 Exploratory Data Analysis (EDA)

The analysis explored:

- Overall sales, profit, orders, and customers.
- Average order value and profit margin.
- Monthly and quarterly performance.
- Category-level sales and profitability.
- Top products by sales.
- State and city performance.
- Customer-level sales and order frequency.

## 🗄️ SQL Business Analysis

MySQL queries were used to investigate:

- Total sales and total profit.
- Total orders and unique customers.
- Average order value.
- Monthly and quarterly sales performance.
- Category and product performance.
- Top customers and products.
- Sales by state and city.
- One-time and returning customers.
- Repeat purchase rate.
- Loss-making transactions and products.

## 👥 Customer Analytics & RFM Segmentation

Customer analysis was performed using purchasing history and customer-level metrics.

The RFM framework evaluates:

- **Recency:** How recently a customer purchased.
- **Frequency:** How often a customer purchased.
- **Monetary:** How much a customer spent.

Rule-based RFM scoring was used to group customers into segments such as Champions, Loyal Customers, Potential Loyalists, New Customers, At Risk, and Hibernating.

## 📊 Power BI Dashboard

The interactive dashboard includes the following KPIs and visualizations:

**Key Performance Indicators (KPIs)**

- Total Sales
- Total Profit
- Total Orders
- Total Customers
- Total Quantity
- Average Order Value
- Profit Margin

**Data Visualizations**

- Monthly Sales & Profit Trend
- Total Sales by Category
- Total Sales by State
- Top 5 Products by Sales
- Total Customers by State

**Interactive Filters:** Year, Month, Category, and State.

### Interactive Power BI Dashboard

[**Open Power BI Report**](https://app.powerbi.com/groups/me/reports/3d96fdbb-3906-4194-a7b7-717385b7588f/9d10ba002090423dbc61?experience=power-bi)

### Dashboard Preview

![Power BI Dashboard](screenshots/dashboard.png)

## 💡 Key Business Insights

The analysis and dashboard help identify:

- Categories contributing the most to total sales.
- States with strong sales performance and customer presence.
- Monthly fluctuations in sales and profit.
- Products generating the highest sales.
- Customer segments that may benefit from retention campaigns.

Business recommendations should be based on the actual results of the analysis rather than assumed trends.

## 🚀 How to Explore This Project

1. Clone or download this GitHub repository.
2. Open the Python notebooks in Jupyter Notebook.
3. Review the original and cleaned datasets in the `Data` folder.
4. Run the SQL queries in MySQL after importing the dataset into your database.
5. Open the `.pbix` file in Power BI Desktop to explore the dashboard.

**Note:** The Power BI report uses a MySQL data source. You may need to update the connection settings to match your local MySQL installation.

## 📚 Skills Demonstrated

- Data cleaning and preprocessing
- Exploratory data analysis (EDA)
- Python and Pandas
- SQL querying and business analysis
- MySQL database management
- KPI development
- Customer analytics and RFM segmentation
- Power BI dashboard development
- Business insight communication

## 👨‍💻 Author

**Vinothkumar**

Data Science | Data Analytics | Python | SQL | MySQL | Power BI
