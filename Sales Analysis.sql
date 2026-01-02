/* Create Database */
create database walmart_sales
use walmart_sales

/* Retrive all data from sales table  */
select * from walmart






/* 1. Total number of records */
select count(*) as 'Total No.of Records' from walmart

/* 2. Total revenue generated */
select sum(weekly_sales) as 'Total revenue' from walmart

/* 3. Highest sales */
select max(weekly_sales) as 'Highest weekly sales' from walmart 

/* 4. store with Highest total sales */
select store,sum(weekly_sales) as 'total sales'  from walmart group by store order by 'total sales' desc

/* 5.total sales per store */
select store,sum(weekly_sales) as 'store sales'  from walmart group by store




/* 6.year wise total sales */
select year(date) as 'year',sum(weekly_sales)as 'total sales' from walmart group by year(date) order by year(date)

/* 7.monthly sales trends */
select year(date) as 'year',month(date) as 'months',sum(weekly_sales) as 'total sales' from walmart group by  year(date),month(date)  order by month(date), year(date) 

/* 8.Average weekly sales per store */
select store,avg(weekly_sales) as 'avg weekly sales' from walmart group by store order by 'avg weekly sales'

/* 9.Holiday vs Non-Holiday sales */
select holiday_flag,sum(weekly_sales) as 'total sales' from walmart group by Holiday_Flag

/* 10.store wise holiday sales */
select store,sum(weekly_sales) as 'holiday sales' from walmart where Holiday_Flag=1 group by store order by 'holiday sales' desc





/* 11.Percentage contribution of each store to total sales */
SELECT Store,SUM(Weekly_Sales) * 100.0 /(SELECT SUM(Weekly_Sales) FROM walmart) AS sales_percentage
FROM walmart GROUP BY Store ORDER BY sales_percentage DESC

/* 12. Cumulative sales over time */
SELECT Date,SUM(Weekly_Sales) AS daily_sales,SUM(SUM(Weekly_Sales)) OVER (ORDER BY Date) AS cumulative_sales FROM walmart GROUP BY Date ORDER BY Date;

/* 13. Rank stores by total sales */
SELECT Store,SUM(Weekly_Sales) AS total_sales,RANK() OVER (ORDER BY SUM(Weekly_Sales) DESC) AS sales_rank FROM walmart GROUP BY Store

/* 14. Top 5 stores by average weekly sales */
SELECT TOP 5 Store,AVG(Weekly_Sales) AS avg_sales FROM walmart GROUP BY Store ORDER BY avg_sales DESC

/* 15. Impact of unemployment on sales */
SELECT Unemployment,AVG(Weekly_Sales) AS avg_sales FROM walmart GROUP BY Unemployment ORDER BY Unemployment