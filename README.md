# 🛒 Walmart Sales Data Analysis using SQL

## 📌 Project Overview

This project performs exploratory data analysis (EDA) on Walmart sales data using SQL Server.
The goal is to analyze sales performance, store-wise trends, time-based insights, and the impact of external factors such as holidays and unemployment.

This project demonstrates SQL querying, aggregation, window functions, and analytical thinking, making it suitable for Data Analyst fresher roles.

## 🧰 Tools & Technologies

Database: SQL Server                                                                                                                                                
Language: SQL                                                                                                                                                                               
Dataset: [Walmart Sales Dataset](https://www.kaggle.com/datasets/yasserh/walmart-dataset)

## 🗂️ Dataset Description

Table Name: walmart

| Column Name     | Data Type | Description |
|-----------------|-----------|-------------|
| Store           | INT       | Store ID |
| Date            | DATE      | Sales week date |
| Weekly_Sales    | FLOAT     | Weekly revenue |
| Holiday_Flag    | INT       | 1 = Holiday, 0 = Non-Holiday |
| Temperature     | FLOAT     | Temperature |
| Fuel_Price      | FLOAT     | Fuel price |
| CPI             | FLOAT     | Consumer Price Index |
| Unemployment    | FLOAT     | Unemployment rate |


## 📈 Key Insights

✔ Holiday weeks show higher sales                                                                                                                                   
✔ Few stores contribute a major share of revenue                                                                                                                                   
✔ Sales fluctuate seasonally                                                                                                                                                                                                                                                                      
✔ External economic factors influence weekly sales

## 🎯 Skills Demonstrated

SQL Aggregations (SUM, AVG, COUNT)                                                                                                                                            
Grouping & Filtering                                                                                                                                                                                                                                                                                        
Window Functions (RANK, OVER)                                                                                                                                            
Time-Series Analysis                                                                                                                                                                                                                                                                                        
Business-Oriented Data Analysis

## 🧪 How to Run This Project

1. Install SQL Server & SSMS
2. Create database:
     CREATE DATABASE walmart_sales;
3. Import dataset into walmart table
4. Execute SQL scripts in order from /sql folder

## 🔗 Dataset Source

Dataset: [Walmart Sales Dataset](https://www.kaggle.com/datasets/yasserh/walmart-dataset)
