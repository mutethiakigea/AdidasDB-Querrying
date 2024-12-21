# AdidasDB-Querying

AdidasDB-Querying is a project that involves the creation, cleaning, and querying of a database derived from Adidas sales data. This repository showcases the transformation of raw data into a structured and easily analyzable format, followed by SQL queries to extract meaningful insights.

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

## SQL Operations

### Renaming Columns
```sql
ALTER TABLE AdidasSales20202021
RENAME COLUMN c1 TO Retailer;
ALTER TABLE AdidasSales20202021
RENAME COLUMN c2 TO RetailerID;
ALTER TABLE AdidasSales20202021
RENAME COLUMN c3 TO InvoiceDate;
-- Continues for all relevant columns...
