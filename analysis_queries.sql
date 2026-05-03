create database global_superstore;
use global_superstore;


CREATE TABLE global_superstore (
    Row_ID INT,
    Order_ID VARCHAR(20),
    Order_Date DATE,
    Ship_Date DATE,
    Ship_Mode VARCHAR(25),
    Customer_ID VARCHAR(20),
    Customer_Name VARCHAR(100),
    Segment VARCHAR(20),
    City VARCHAR(100),
    State VARCHAR(100),
    Country VARCHAR(100),
    Market VARCHAR(10),
    Region VARCHAR(25),
    Product_ID VARCHAR(25),
    Category VARCHAR(25),
    Sub_Category VARCHAR(25),
    Product_Name VARCHAR(255),
    Sales DECIMAL(10,2),
    Quantity INT,
    Discount DECIMAL(5,2),
    Profit DECIMAL(10,2),
    Shipping_Cost DECIMAL(10,2),
    Order_Priority VARCHAR(15)
);


SELECT * FROM global_superstore_10k LIMIT 1000;

ALTER TABLE global_superstore_10k 
MODIFY COLUMN Order_Date DATE,
MODIFY COLUMN Ship_Date DATE,
MODIFY COLUMN Sales DECIMAL(10,2),
MODIFY COLUMN Profit DECIMAL(10,2),
MODIFY COLUMN Shipping_Cost DECIMAL(10,2),
MODIFY COLUMN Quantity INT;

RENAME TABLE global_superstore_10k TO global_superstore;

-- Check Duplicates
SELECT Order_ID, Product_Name, COUNT(*) 
FROM global_superstore
GROUP BY Order_ID, Product_Name
HAVING COUNT(*) > 1;

select sub_category , sum(sales) as sales ,
sum(profit) as profit
from global_superstore
group by sub_category
order by profit asc;

select sum(sales) as total_sales , 
sum(profit) as total_profit,
avg(Discount) as total_discounts
from global_superstore;

select region , sum(sales) as sales , 
sum(profit) as profit 
from global_superstore
group by region
order by sales desc;

-- Some regions underperform despite high sales.
select region , sum(sales) as sales, 
sum(profit) as profit
from global_superstore 
group by region
order by sales desc;

-- Not all high-sales categories are profitable.
select category , sum(profit) as total_profit,
sum(sales) as sales
from global_superstore
group by category;

-- Top products drive major profit concentration.
select product_name , sum(profit) as total_profit
from global_superstore
group by product_name 
order by total_profit desc
limit 10;

-- Some products consistently destroy profit.
select product_name , sum(profit) as profit
from global_superstore
group by product_name 
having profit < 0
order by profit asc;

-- Top customers
SELECT Customer_Name, SUM(Sales) AS sales
FROM global_superstore
GROUP BY Customer_Name
ORDER BY sales DESC
LIMIT 10;

-- customer profitability
select customer_name , sum(profit) as profit
from global_superstore
group by customer_name 
order by profit desc;

-- Time based analysis
SELECT 
    YEAR(Order_Date) AS year,
    MONTH(Order_Date) AS month,
    SUM(Sales) AS sales
FROM global_superstore
GROUP BY year, month
ORDER BY year, month;

-- Shipping Performance 
SELECT 
    AVG(DATEDIFF(Ship_Date, Order_Date)) AS avg_shipping_days
FROM global_superstore;

-- Windows Function 
SELECT 
    Product_Name,
    SUM(Sales) AS total_sales,
    RANK() OVER (ORDER BY SUM(Sales) DESC) AS sales_rank
FROM global_superstore
GROUP BY Product_Name;

select region , category , sum(profit) as profit
from global_superstore
group by region , category
order by region , profit desc;

SELECT 
    Product_Name,
    SUM(Profit)/SUM(Sales) AS profit_ratio
FROM global_superstore
GROUP BY Product_Name
ORDER BY profit_ratio ASC;

-- Higher discounts - lower or negative profit.
SELECT discount,
       SUM(profit) AS total_profit
FROM global_superstore
GROUP BY discount
ORDER BY discount;


