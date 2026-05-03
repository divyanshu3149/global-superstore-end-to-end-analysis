# 📊 Global Superstore End-to-End Data Analysis

## 📌 Project Overview

This project analyzes the Global Superstore dataset to uncover key business insights related to sales, profit, customer behavior, and operational efficiency. The goal is to identify performance gaps and provide actionable recommendations to improve profitability.

---

## 🎯 Business Problem

The company operates globally but faces inconsistent profitability across regions, products, and customer segments.

Key questions addressed:

* Which regions and categories drive the most profit?
* Where are losses occurring and why?
* How do discounts and shipping costs impact profitability?
* Who are the most valuable customers?

---

## 📊 Dataset

* **Source**: Global Superstore dataset
* **Records**: ~10,000 (sampled for SQL performance)
* **Key Columns**:

  * Sales, Profit, Quantity
  * Category, Sub-Category
  * Customer Name, Segment
  * Region, Country
  * Order Date, Ship Date
  * Discount, Shipping Cost

---

## 🛠 Tools & Technologies

* **Python**: Pandas, NumPy, Matplotlib, Seaborn (EDA & cleaning)
* **SQL (MySQL)**: Data analysis & querying
* **Power BI**: Dashboard creation & visualization

---

## 🔍 Analysis Process

### 1. Data Cleaning (Python)

* Handled missing values
* Checked data types and consistency
* Removed duplicates
* Created derived columns (e.g., shipping delay)

### 2. Exploratory Data Analysis (EDA)

* Sales and profit distribution
* Category and region-wise performance
* Discount vs profit relationship

### 3. SQL Analysis

* Aggregations (Sales, Profit by region/category)
* Top/Bottom performing products
* Customer-level analysis
* Profitability trends

### 4. Dashboard (Power BI)

* KPI metrics (Total Sales, Total Profit, Profit Margin)
* Region-wise performance
* Category breakdown
* Customer insights

---

## 📊 Key Business Insights

Based on the end-to-end analysis of the Global Superstore dataset, the following critical insights were identified:

* **Profitability Leakage:** Identified that the **Tables** and **Bookcases** sub-categories are consistently underperforming, showing a net loss in the US and APAC regions due to excessive discounting[cite: 1, 2].
* **Regional Performance:** The **Technology** category drives the highest profit margins globally, while **Furniture** requires a strategy shift due to high shipping costs[cite: 2].
* **Shipping Efficiency:** Discovered that **Standard Class** shipping experiences the most frequent delays despite being the most used method[cite: 2].
* **Customer Segmentation:** The **Consumer** segment contributes to nearly 50% of total sales, but the **Corporate** segment has a higher average transaction value[cite: 2].
* **Discount Correlation:** Analysis using **Seaborn** revealed a negative correlation between high discount rates (>15%) and overall profit margins[cite: 2].

---

## 💡 Business Recommendations

* **Optimize discount strategy**: Limit high discounts in low-margin regions to prevent losses.
* **Reduce shipping costs**: Re-evaluate logistics partners or pricing in high-cost regions.
* **Focus on high-profit categories**: Increase marketing efforts for profitable segments like Technology.
* **Customer retention strategy**: Target top customers with loyalty programs while expanding mid-tier customers.
* **Regional pricing adjustment**: Adjust pricing models in consistently loss-making countries.

---


## 📊 Dashboard Preview  

![Dashboard](https://raw.githubusercontent.com/divyanshu3149/global-superstore-end-to-end-analysis/main/images/dashboard.png)

---

## 🚀 Conclusion

This analysis highlights key profitability challenges driven by discounting and operational costs. By optimizing pricing, focusing on high-value customers, and improving regional strategies, the company can significantly enhance its overall profit performance.

---

## 📂 Repository Structure

```bash
/data
  global_superstore.csv
/notebooks
  eda_analysis.ipynb
/sql
  analysis_queries.sql
/images
  dashboard.png
README.md
```
  
```

---

## 🔗 Project Link

GitHub Repository:
https://github.com/divyanshu3149/global-superstore-end-to-end-analysis

---
> Note: A smaller sample dataset is included for preview. The full dataset is larger and used for analysis.
