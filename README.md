# SQL-Practice
This repository contains my daily SQL practice queries 
# SQL Practice – Day 1
This repository documents my daily SQL learning journey as I prepare for a Data Analyst career.
Today I practiced creating tables, inserting data, and running basic SQL queries using a small sales dataset.
#  Topics Covered
- CREATE DATABASE
- CREATE TABLE
- INSERT INTO
- SELECT
- WHERE
- ORDER BY
# Database Used
Sales_DW
# Tables Created
1. DimCustomer
   - CustomerID
   - CustomerAltID
   - CustomerName
   - Gender
2. DimProduct
   - ProductKey
   - ProductAltKey
   - ProductName
   - ProductActualCost
   - ProductSalesCost
3. DimStores
   - StoreID
   - StoreAltID
   - StoreName
   - StoreLocation
   - City
   - State
   - Country
4. DimSalesPerson
   - SalesPersonAltID
   - SalesPersonName
   - StoreID
   - City
   - State
   - Country


# SQL Queries Practiced
Retrieve only CustomerID
SELECT CustomerID FROM DimCustomer;
Filter products with cost greater than 30
SELECT ProductActualCost
FROM DimProduct
WHERE ProductActualCost > 30;
Filter store IDs greater than or equal to 1
SELECT StoreID
FROM DimSalesPerson
WHERE StoreID >= 1;
Get female customers
SELECT Gender, CustomerName
FROM DimCustomer
WHERE Gender = 'F';
Sort products by highest sales cost
SELECT ProductName, ProductSalesCost
FROM DimProduct
ORDER BY ProductSalesCost DESC;
Sort products by lowest sales cost
SELECT ProductName, ProductSalesCost
FROM DimProduct
ORDER BY ProductSalesCost ASC;
Sort customers alphabetically
SELECT CustomerName
FROM DimCustomer
ORDER BY CustomerName ASC;
Find stores located in Ahmedabad
SELECT StoreName, City
FROM DimStores
WHERE City = 'Ahmedabad';
