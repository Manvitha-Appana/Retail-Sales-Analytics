USE retail_sales;

-- Total Records
SELECT COUNT(*) FROM sample_superstore;

SELECT
    Region,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM sample_superstore
GROUP BY Region
ORDER BY Total_Sales DESC;

SELECT
    Category,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM sample_superstore
GROUP BY Category
ORDER BY Total_Sales DESC;

SELECT
    Segment,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM sample_superstore
GROUP BY Segment
ORDER BY Total_Sales DESC;

SELECT
    `Sub-Category`,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM sample_superstore
GROUP BY `Sub-Category`
ORDER BY Total_Profit DESC
LIMIT 10;

SELECT
    `Sub-Category`,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM sample_superstore
GROUP BY `Sub-Category`
HAVING Total_Profit < 0
ORDER BY Total_Profit;

SELECT
    State,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM sample_superstore
GROUP BY State
ORDER BY Total_Sales DESC
LIMIT 10;

SELECT
    Discount,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM sample_superstore
GROUP BY Discount
ORDER BY Discount;

SELECT
    City,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM sample_superstore
GROUP BY City
ORDER BY Total_Profit DESC
LIMIT 10;