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

## 📈 Key Insights

* **High sales ≠ high profit**: Some regions generate strong sales but low or negative profit due to excessive discounts.
* **Technology category** contributes the highest profit but also shows volatility due to discounting strategies.
* **Certain countries consistently incur losses**, mainly due to high shipping costs and low margins.
* **Discounts have a direct negative impact on profit**, especially beyond a certain threshold.
* **Top customers contribute a large portion of revenue**, indicating dependency on a small customer base.

---

## 💡 Business Recommendations

* **Optimize discount strategy**: Limit high discounts in low-margin regions to prevent losses.
* **Reduce shipping costs**: Re-evaluate logistics partners or pricing in high-cost regions.
* **Focus on high-profit categories**: Increase marketing efforts for profitable segments like Technology.
* **Customer retention strategy**: Target top customers with loyalty programs while expanding mid-tier customers.
* **Regional pricing adjustment**: Adjust pricing models in consistently loss-making countries.

---

## 📊 Dashboard Preview

https://github.com/divyanshu3149/global-superstore-end-to-end-analysis/blob/main/images/dashboard.png

---

## 🚀 Conclusion

This analysis highlights key profitability challenges driven by discounting and operational costs. By optimizing pricing, focusing on high-value customers, and improving regional strategies, the company can significantly enhance its overall profit performance.

---

## 📂 Repository Structure

```
/data           → Dataset files  
/sql            → SQL queries  
/notebooks      → Python EDA  
/powerbi        → Dashboard file  
/images         → Dashboard screenshots  
README.md       → Project documentation  
```

---

## 🔗 Project Link

GitHub Repository:
https://github.com/divyanshu3149/global-superstore-end-to-end-analysis

---
