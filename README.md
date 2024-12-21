# AdidasDB-Querying

AdidasDB-Querying is a project that involves the creation, cleaning, and querying of a database derived from Adidas sales data. This repository showcases the transformation of raw data into a structured and easily analyzable format, followed by SQL queries to extract meaningful insights.

---

## Features
- **Data Cleaning**: Renamed columns for better readability and usability.
- **SQL Queries**: Performed advanced querying to analyze and extract insights from the dataset.
- **Data Transformation**: Added new columns and formatted data for enhanced presentation.

---

## Database Structure

### Table: `AdidasSales20202021`

The table includes the following columns after transformation:

- **Retailer**: Name of the retailer
- **RetailerID**: Unique identifier for the retailer
- **InvoiceDate**: Date of the invoice
- **Region**: Region of the sales
- **State**: State of the sales
- **City**: City of the sales
- **Product**: Name of the product
- **PricePerUnit**: Unit price of the product
- **UnitsSold**: Number of units sold
- **TotalSales**: Total sales value
- **OperatingProfit**: Operating profit from the sale
- **SalesMethod**: Method of sales (e.g., online, offline)
- **FormattedProfit**: Operating profit formatted in currency format (e.g., `$1234.56`)

---

## SQL Code

```sql
-- Renaming columns for better readability
ALTER TABLE AdidasSales20202021
RENAME COLUMN c1 TO Retailer;
ALTER TABLE AdidasSales20202021
RENAME COLUMN c2 TO RetailerID;
ALTER TABLE AdidasSales20202021
RENAME COLUMN c3 TO InvoiceDate;
ALTER TABLE AdidasSales20202021
RENAME COLUMN c4 TO Region;
ALTER TABLE AdidasSales20202021
RENAME COLUMN c5 TO State;
ALTER TABLE AdidasSales20202021
RENAME COLUMN c6 TO City;
ALTER TABLE AdidasSales20202021
RENAME COLUMN c7 TO Product;
ALTER TABLE AdidasSales20202021
RENAME COLUMN c8 TO PricePerUnit;
ALTER TABLE AdidasSales20202021
RENAME COLUMN c9 TO UnitsSold;
ALTER TABLE AdidasSales20202021
RENAME COLUMN c10 TO TotalSales;
ALTER TABLE AdidasSales20202021
RENAME COLUMN c11 TO OperatingProfit;
ALTER TABLE AdidasSales20202021
RENAME COLUMN c12 TO SalesMethod;

-- Cleaning data by removing placeholder values
DELETE FROM AdidasSales20202021
WHERE RetailerID = 'retailer ID';

-- Adding and formatting a new column
ALTER TABLE AdidasSales20202021
ADD COLUMN FormattedProfit TEXT;

UPDATE AdidasSales20202021
SET FormattedProfit = '$' || CAST(OperatingProfit AS TEXT);

-- Queries for insights
-- Region-wise Profit Calculation
SELECT Region, SUM(OperatingProfit) AS RegionProfit
FROM AdidasSales20202021
GROUP BY Region;

-- Formatted Profit Presentation
SELECT Region, printf('$%.2f', OperatingProfit) AS FormattedProfit
FROM AdidasSales20202021;

-- Product Pricing by Region
SELECT Product, PricePerUnit 
FROM AdidasSales20202021
GROUP BY Region;

-- Example Dataset Queries
SELECT * FROM AdidasSales20202021;
