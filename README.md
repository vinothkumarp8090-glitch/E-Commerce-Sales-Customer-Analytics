# 🛒 E-Commerce Sales & Customer Analytics

An end-to-end data analytics project using **Python, SQL, MySQL, and Power BI** to analyze e-commerce sales performance, profitability, product performance, and customer behavior.

## 📌 Project Overview

This project analyzes e-commerce sales data from India for 2023 to identify business trends, evaluate product and regional performance, and understand customer purchasing behavior.

The project follows a data analytics workflow, from data understanding and cleaning to exploratory analysis, SQL business queries, customer segmentation, and interactive dashboard development.

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
│   └── 03_exploratory_data_analysis.ipynb
│
├── SQL/
│   └── 01_business_analysis.sql
│
├── Power BI/
│   └── E-Commerce_Sales_Customer_Analytics.pbix
│
├── screenshots/
└── documentation/
```

## 📊 Dataset Overview

- **Records:** 2,000 rows
- **Time period:** January–December 2023
- **Geography:** India
- **Data includes:** Orders, customers, products, categories, quantities, sales, profit, cities, and states.

The dataset includes order-level identifiers and product line items, allowing sales and customer behavior to be analyzed at different levels.

## 🧹 Data Cleaning & Preparation

The data preparation workflow included:

- Inspecting dataset structure and data types.
- Checking missing values and duplicate records.
- Converting order dates to datetime format.
- Removing duplicate rows where appropriate.
- Trimming whitespace from text columns.
- Creating year, month, month name, and quarter features.
- Calculating profit margin.
- Saving the cleaned dataset for subsequent analysis.

Potentially legitimate negative-profit transactions were retained for analysis.

## 📈 Exploratory Data Analysis

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

Customer analysis was performed using order history and purchasing behavior.

The RFM framework evaluates:

- **Recency:** How recently a customer purchased.
- **Frequency:** How often a customer purchased.
- **Monetary:** How much a customer spent.

Customers were grouped into segments such as Champions, Loyal Customers, Potential Loyalists, New Customers, At Risk, and Hibernating, using rule-based RFM scores.

## 📊 Power BI Dashboard

The interactive dashboard includes:

- Total Sales
- Total Profit
- Total Orders
- Total Customers
- Total Quantity
- Average Order Value
- Profit Margin
- Monthly Sales & Profit Trend
- Total Sales by Category
- Total Sales by State
- Top 5 Products by Sales
- Total Customers by State

**Interactive filters:** Year, Month, Category, and State.

### Dashboard Preview

Add your dashboard screenshot to the `screenshots` folder, then update the filename in this section:

```markdown
![Power BI Dashboard](screenshots/dashboard.png)
```

## 💡 Key Business Insights

The dashboard is designed to help identify:

- The categories contributing most to total sales.
- The states with the strongest sales and customer presence.
- Monthly fluctuations in sales and profit.
- The products generating the highest sales.
- Customer segments that may benefit from retention campaigns.

Specific business recommendations should be based on the results returned by the analysis.

## 🚀 How to Explore This Project

1. Download or clone this repository.
2. Open the Python notebooks in Jupyter Notebook.
3. Review the original and cleaned datasets in the `Data` folder.
4. Run the SQL queries using MySQL after importing the cleaned dataset.
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


