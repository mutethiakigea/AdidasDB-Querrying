SELECT * FROM AdidasSales20202021;

--transfroming columns names
--should be changed indiviualy

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


SELECT * from AdidasSales20202021;

ALTER TABLE AdidasSales20202021
RENAME COLUMN c12 TO SalesMethod;

--Deleting first elements from the table
DELETE FROM AdidasSales20202021
WHERE RetailerID = 'retailer ID';

SELECT * from AdidasSales20202021;

--names of the region names in the dataset
SELECT region name from AdidasSales20202021;

Select * from AdidasSales20202021

-- Alter the table to add a new column 'FormattedProfit' of type TEXT
ALTER TABLE AdidasSales20202021 ADD COLUMN FormattedProfit TEXT;

-- Update the 'FormattedProfit' column with the currency format of 'Operating Profit'
UPDATE AdidasSales20202021 SET FormattedProfit = '$' || CAST([Operating Profit] AS TEXT);



SELECT Region, SUM(operatingprofit) AS RegionProfit

SELECT Region, printf('$%.2f', "Operating Profit") AS FormattedProfit
FROM AdidasSales20202021;

select product, priceperunit FROM AdidasSales20202021
GROUP BY Region;







