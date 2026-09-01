# Ritail_Sales_Analytics
Power BI Sales Analytics Dashboard with insights into revenue, customers, inventory, sales trends and profitability.

## 📌 Project Overview

Retail Sales Analytics is an end-to-end data analytics project developed to analyze retail sales performance, customer behavior, product performance, and business trends. The project covers the complete analytics process, starting from raw data preparation and cleaning to SQL analysis and an interactive Power BI dashboard.

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

## 🔄 Project Workflow

**Raw Data → Data Cleaning → Cleaned Data → SQL Analysis → Power BI Dashboard → Business Insights**

1️⃣ Raw Data

The original retail datasets are stored in the output folder.
The raw data contains information related to:
- Customers
- Products
- Categories
- Stores
- Sales Orders
- Inventory
- Suppliers
- Inventory Movement
The raw files are kept unchanged for reference and reproducibility.

2️⃣ Data Cleaning Using Python

Python and Pandas were used to clean and prepare the raw datasets for analysis.
The cleaning process includes:
- Checking missing values
- Checking duplicate records
- Checking data types
- Standardizing column names
- Handling inconsistent values
- Validating records
- Preparing analysis-ready datasets
The Python notebook used for the cleaning process is:
notebooks/Retail_Sales.ipynb

3️⃣ Cleaned Data

After the data cleaning process, the cleaned datasets were stored separately in the cleaned_data folder.
These cleaned files were used for further SQL analysis and Power BI reporting.

4️⃣ SQL Analysis
SQL was used to perform business analysis on the cleaned retail sales data.
The analysis includes:
- Sales analysis
- Customer analysis
- Product analysis
- Category analysis
- Store analysis
- Inventory analysis
- Top-performing products
- Low-performing products
- Aggregation and filtering
- Business performance analysis
The SQL queries are available in:
SQL/Sales Analysis.sql

5️⃣ Power BI Dashboard

Power BI was used to create an interactive dashboard for monitoring retail business performance.
The dashboard focuses on important business metrics and provides interactive analysis through charts, KPIs, and filters.
The Power BI dashboard file will be available in:
dashboard/

📊 Dashboard Analysis

There are six major dashboard Analysis:

🔷 Executive Dashboard

The Executive Dashboard focuses on providing an overall view of the retail business performance.
It analyzes areas such as:

- Overall business performance
- Total revenue and sales
- Total orders and customers
- Product performance
- Best-selling product
- Top-performing store
- Monthly sales growth
- Store-wise sales and order performance

🔷 Customer Analysis Dashboard

The Customer Analysis Dashboard focuses on understanding customer behavior and purchasing patterns.
It analyzes areas such as:

- Customer base by city
- New vs returning customers
- Average Order Value (AOV) by customer segment
- Purchase frequency analysis


## 📂 Project Structure

Retail-Sales-Analytics/
│
├── output/
│   └── Raw datasets
│
├── cleaned_data/
│   └── Cleaned datasets
│
├── notebooks/
│   └── Retail_Sales.ipynb
│
├── SQL/
│   └── Sales Analysis.sql
│
├── Dashboard/
│   └── Retail_sales_dashboard.pbix
│
├── docs/
│   └── Dashboard screenshots
│
├── .gitignore
└── README.md













