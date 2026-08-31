# Ritail_Sales_Analytics
Power BI Sales Analytics Dashboard with insights into revenue, customers, inventory, sales trends and profitability.

# 📊 Retail Sales Analytics

## 📌 Project Overview

This project is an end-to-end Retail Sales Analytics project developed to analyze sales performance, customer behavior, product performance, inventory, and business trends.

The project uses Python, SQL, and Power BI to clean, analyze, visualize, and generate meaningful business insights from retail sales data.

---

## 🎯 Project Objectives

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

## 👥 Customer Analysis Dashboard

This dashboard provides a detailed analysis of customer behavior, customer segments, and purchasing patterns.

### 📌 Key KPIs

The dashboard highlights the following key customer-related metrics:

- **Total Revenue:** 1.67 Billion
- **Total Orders:** 29K
- **Total Sales:** 251K
- **Total Customers:** 6K
- **Total Products:** 360

### 📊 Customer Analysis

#### 1. New vs Returning Customers

The donut chart compares new and returning customers.

- **New Customers:** 51.02%
- **Returning Customers:** 48.98%

The analysis shows that the customer base is almost evenly divided between new and returning customers, with new customers contributing slightly more.

This indicates that the business is continuously acquiring new customers while also maintaining a strong base of returning customers.

#### 2. Purchase Frequency Analysis

The purchase frequency chart categorizes customers into three groups:

- **Medium Frequency:** 3.0K customers
- **Low Frequency:** 1.7K customers
- **High Frequency:** 1.3K customers

The highest number of customers falls into the medium-frequency group. This indicates an opportunity to encourage medium-frequency and low-frequency customers to purchase more frequently.

#### 3. AOV by Customer Segment

AOV means **Average Order Value**.

The dashboard compares AOV across different customer segments:

- Regular
- New
- Premium
- VIP

The AOV values are relatively similar across all segments, with the Regular segment showing the highest value.

This indicates that customer segments have comparable average spending levels.

#### 4. Customer Base by City

The city-wise analysis shows the number of customers across different cities.

Cities such as:

- Jaipur
- Ludhiana
- Agra
- Nashik
- Kolkata
- Kanpur
- Indore
- Chennai

have a strong customer presence.

This information can help the business identify high-customer-density locations and plan targeted marketing campaigns.

### 🎛️ Interactive Filters

The dashboard allows users to filter customer analysis using:

- Date Range
- Category
- Store
- Customer Segment
- Payment Method

These filters make it possible to perform detailed customer analysis for a specific period, category, store, segment, or payment method.

### 💡 Key Customer Insights

Based on the dashboard:

- The customer base contains a slightly higher proportion of new customers than returning customers.
- Medium-frequency customers form the largest customer group.
- High-frequency customers represent a smaller portion of the customer base, creating an opportunity for customer retention strategies.
- AOV is relatively consistent across customer segments.
- Several cities have a strong customer base and can be targeted for location-specific marketing.
- Interactive filters allow management to analyze customer behavior from different business perspectives.

### 📸 Dashboard Preview

![Customer Analysis Dashboard](docs/customer_analysis_dashboard.png)


