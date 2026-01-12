# Online Retail Sales Analysis (Power BI)

## Overview
This project analyzes online retail sales data to understand how revenue evolves over time, which markets generate the most sales, and which products contribute most to overall performance.  
The focus is on clear, business-relevant insights using a simple and structured Power BI dashboard.

---

## Dataset
- **Source:** Online Retail II dataset  
- **Business context:** UK-based online retailer selling gift-oriented products  
- **Data granularity:** Transaction-level data (multiple items per order)  
- **Time period:** 2009–2011  

---

## Data Preparation
Data was cleaned and prepared in **Power Query**:
- Corrected data types for all fields
- Removed transactions with missing customer IDs
- Created a revenue field based on quantity and price
- Added time-related fields for monthly analysis
- Identified cancelled transactions for analysis control

---

## Exploratory Data Analysis (EDA)
The analysis focused on three main aspects:
- **Revenue over time**, showing monthly fluctuations and seasonal patterns
- **Revenue by country**, highlighting strong concentration in the UK market
- **Product performance**, showing that a small number of products generate most of the revenue

---

## Dashboard Structure
The Power BI report contains four pages:
1. **Overview** – key KPIs (revenue, transactions, customers, average order value)
2. **Revenue over time** – monthly revenue trend
3. **Revenue by country** – top markets by revenue
4. **Product performance** – top products by revenue

---

## Key Takeaways
- Revenue varies significantly over time, suggesting seasonal demand
- Sales are heavily concentrated in the UK market
- A small group of products drives a large share of total revenue
