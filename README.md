# 📊 Customer Purchase Analysis

## End-to-End Customer Analytics using Excel, MySQL & Power BI

## Project Overview

This project demonstrates an end-to-end customer analytics solution built using **Excel, MySQL, and Power BI**. The objective was to transform raw customer transaction data into actionable business insights by performing data cleaning, SQL-based analysis, and interactive dashboard development.

The project analyzes **500K+ customer transactions** to understand customer purchasing behavior, retention, lifetime value, segmentation, and churn, helping businesses make data-driven decisions.

---

## Business Problem

Businesses need to understand:

- Who are their most valuable customers?
- Which customers are likely to churn?
- How effective is customer retention?
- What is the lifetime value of different customer segments?
- Which customers should be targeted for retention campaigns?

This project answers these questions through SQL analysis and Power BI dashboards.

---

# Tech Stack

- Microsoft Excel
- MySQL
- SQL
- Power BI
- Power Query
- DAX

---

# Project Workflow

```
Raw Excel Dataset
        │
        ▼
Data Cleaning (Excel)
        │
        ▼
MySQL Database
        │
        ▼
SQL Analysis
        │
        ▼
Power BI Data Model
        │
        ▼
Interactive Dashboard
```

---

# Data Cleaning (Excel)

Before importing the dataset into MySQL, the following preprocessing steps were performed:

- Removed duplicate records
- Removed rows with missing Customer IDs
- Standardized date formats
- Corrected inconsistent text values
- Verified Quantity and Unit Price columns
- Removed invalid and blank records
- Created a clean dataset for SQL analysis

---

# SQL Analysis

The cleaned dataset was analyzed using MySQL to generate business-ready insights.

### Executive KPIs

- Total Customers
- Total Orders
- Total Revenue
- Average Order Value (AOV)
- Average Revenue per Customer

### Customer Analysis

- Repeat Purchase Rate
- New vs Repeat Customers
- Customer Frequency Distribution
- Monthly Active Customers

### Customer Segmentation

Performed **RFM (Recency, Frequency, Monetary)** analysis to classify customers into:

- VIP / Champions
- Loyal
- New
- At-Risk
- Hibernating
- Lost
- Others

### Customer Lifetime Value

Calculated:

- Customer Lifetime Value (CLV)
- Average Order Value
- Customer Lifespan

### Cohort Retention Analysis

Created a **24-month Cohort Retention Matrix** using `PERIOD_DIFF()` to measure customer retention over time.

### Churn Analysis

Identified inactive customers based on purchase recency and classified them into:

- Active
- Cooling
- At-Risk
- Churned

---

# SQL Concepts Used

- Views
- Common Table Expressions (CTEs)
- Window Functions
- CASE WHEN
- Aggregate Functions
- GROUP BY
- HAVING
- JOIN
- RANK()
- ROW_NUMBER()
- NTILE()
- LAG()
- DATE_FORMAT()
- DATEDIFF()
- PERIOD_DIFF()

---

# Power BI Dashboard

The final dashboard consists of five interactive pages:

### Executive Summary

- Revenue KPIs
- Monthly Revenue Trend
- Segment Distribution
- New vs Repeat Customers

### Customer Segmentation

- RFM Scatter Plot
- Revenue by Segment
- Customer Count by Segment

### Cohort Retention

- 24-Month Retention Heatmap
- M1, M3 and M6 Retention KPIs

### Customer Lifetime Value

- Average CLV
- Median CLV
- VIP AOV
- Top 10% Revenue Share

### Churn Analysis

- Active Customers
- At-Risk Customers
- Churned Customers
- Customer Inactivity Distribution

---

# Key Business Insights

- Processed **500K+ customer transactions** through an end-to-end analytics pipeline.
- Identified a **60-day engagement cliff**, where nearly **65% of customers** stopped making repeat purchases.
- Built a **24-month cohort retention model** to measure long-term customer retention.
- Segmented customers into **7 RFM categories** to support targeted marketing strategies.
- Identified high-value customers contributing the majority of total revenue.
- Created a prioritized list of **100 at-risk customers** with an estimated **£300K revenue recovery opportunity**.
- Developed interactive Power BI dashboards to monitor customer behavior, retention, CLV, and churn.

---

# Repository Structure

```
Customer-Purchase-Analysis
│
├── SQL
├── Dashboard Screenshots
├── Documentation
├── Data
├── PowerBI
└── README.md
```

---

# Dashboard Preview

## Executive Summary

(Add Executive Summary screenshot here)

## Customer Segmentation

(Add Customer Segments screenshot here)

## Cohort Retention

(Add Cohort Retention screenshot here)

## Customer Lifetime Value

(Add CLV screenshot here)

## Churn Analysis

(Add Churn Analysis screenshot here)

---

# Project Highlights

✔ Processed **500K+ transactions**

✔ Built **20+ DAX Measures**

✔ Developed **24-Month Cohort Analysis**

✔ Performed **RFM Customer Segmentation**

✔ Calculated **Customer Lifetime Value**

✔ Identified **Customer Churn**

✔ Built **5 Interactive Power BI Dashboards**

---

## Author

**Surbhi Prasad**

Data Analyst | SQL | Power BI | Excel | Python
