# Ritail_Sales_Analytics
Power BI Sales Analytics Dashboard with insights into revenue, customers, inventory, sales trends and profitability.

# 📊 Retail Sales Analytics

## 📌 Project Overview

This project is an end-to-end Retail Sales Analytics project developed to analyze sales performance, customer behavior, product performance, inventory, and business trends.

The project uses Python, SQL, and Power BI to clean, analyze, visualize, and generate meaningful business insights from retail sales data.

---

## 🎯 Project Objective

The main objectives of this project are:

- Analyze overall retail sales performance
- Identify sales trends over time
- Analyze sales by category and store
- Identify top-performing products
- Identify low-performing products
- Analyze customer behavior
- Analyze inventory and stock movement
- Calculate important business KPIs
- Perform SQL-based business analysis
- Create an interactive Power BI dashboard
- Generate actionable business insights

---

## 🛠️ Tools & Technologies

- Python
- Pandas
- NumPy
- Jupyter Notebook
- SQL
- MySQL
- Power BI
- DAX

---

## 📂 Project Structure

```text
Retail-Sales-Analytics/
│
├── output/
│   └── Raw CSV files
│
├── notebooks/
│   └── Retail_Sales.ipynb
│
├── cleaned_data/
│   └── Cleaned CSV files
│
├── SQL/
│   └── Sales Analysis.sql
│
├── dashboard/
│   └── Power BI Dashboard (.pbix)
│
├── docs/
│   ├── Dashboard screenshots
│   └── Dashboard PDF
│
├── .gitignore
│
└── README.md

🔄 Project Workflow

Raw Data
   ↓
Data Cleaning using Python
   ↓
Cleaned Data
   ↓
SQL Analysis
   ↓
Data Modeling
   ↓
DAX Measures
   ↓
Power BI Dashboard
   ↓
Business Insights

1️⃣ Raw Data

The original retail datasets are stored in the output folder.
The raw data contains information related to:
Customers
Products
Categories
Stores
Sales Orders
Inventory
Suppliers
Inventory Movement
The raw files are kept unchanged for reference and reproducibility.

2️⃣ Data Cleaning Using Python

Python and Pandas were used to clean and prepare the raw datasets for analysis.
The cleaning process includes:
Checking missing values
Checking duplicate records
Checking data types
Standardizing column names
Handling inconsistent values
Validating records
Preparing analysis-ready datasets
The Python notebook used for the cleaning process is:
notebooks/Retail_Sales.ipynb

3️⃣ Cleaned Data

After the data cleaning process, the cleaned datasets were stored separately in the cleaned_data folder.
These cleaned files were used for further SQL analysis and Power BI reporting.

4️⃣ SQL Analysis

SQL was used to perform business analysis on the cleaned retail sales data.
The analysis includes:
Sales analysis
Customer analysis
Product analysis
Category analysis
Store analysis
Inventory analysis
Top-performing products
Low-performing products
Aggregation and filtering
Business performance analysis
The SQL queries are available in:
SQL/Sales Analysis.sql

5️⃣ Power BI Dashboard

Power BI was used to create an interactive dashboard for monitoring retail business performance.
The dashboard focuses on important business metrics and provides interactive analysis through charts, KPIs, and filters.
The Power BI dashboard file will be available in:
Dashboard/


📊 Dashboard Analysis

👥 Customer Analysis Dashboard

This dashboard provides an overview of customer behavior and purchasing patterns. It shows key metrics such as total revenue, total orders, total sales, total customers, and total products. It also analyzes new vs returning customers, purchase frequency, customer segments, and customer distribution by city. Interactive filters allow users to explore customer performance based on date, category, store, customer segment, and payment method.

Dashboard

<img width="1409" height="800" alt="Customer Analysis Dashboard" src="docs/customer Analysis.png" />




