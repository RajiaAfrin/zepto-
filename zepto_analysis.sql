drop table if exists zepto;

CREATE TABLE zepto (
sku_id SERIAL PRIMARY KEY,
category VARCHAR(120),
name VARCHAR(150) NOT NULL,
mrp NUMERIC(8,2),
discountPercent NUMERIC(5,2),
availableQuantity INTEGER,
discountedSellingPrice NUMERIC(8,2),
weightInGms INTEGER,
outOfStock BOOLEAN,
quantity INTEGER
);

--data exploration

--count of rows
SELECT COUNT(*) FROM zepto;

--sample data
SELECT * FROM zepto
LIMIT 10;

--null values

SELECT *
FROM zepto
WHERE name IS NULL
OR 
category IS NULL
OR
mrp IS NULL
OR 
discountPercent IS NULL
OR 
discountedSellingPrice IS NULL
OR
weightInGms IS NULL
OR 
availableQuantity IS NULL
OR 
outOfStock IS NULL
OR 
quantity IS NULL;

--different product categories

SELECT DISTINCT category
FROM zepto
ORDER BY category;

--products in stock vs out of stock

SELECT outOfStock, COUNT(sku_id)
FROM zepto
GROUP BY outOfStock;

--product names present multiple times

SELECT name, COUNT(sku_id) AS "Number of SKUs"
FROM zepto
GROUP BY name
HAVING COUNT(sku_id) > 1
ORDER BY COUNT(sku_id) DESC;

--data cleaning

--products with price = 0

SELECT * FROM zepto
WHERE mrp = 0 OR discountedSellingPrice = 0;

DELETE FROM zepto
WHERE mrp = 0;

--convert paise to rupees

UPDATE zepto
SET mrp = mrp/100.0,
discountedSellingPrice = discountedSellingPrice/100.0;

SELECT mrp, discountedSellingPrice
FROM zepto;

-- Q1. Find the top 10 best-value products based on the discount percentage.

SELECT DISTINCT name, mrp, discountPercent
FROM zepto
ORDER BY discountPercent DESC
LIMIT 10;

--Q2. What are the Products with High MRP but Out of Stock

SELECT DISTINCT name, mrp
FROM zepto
WHERE outOfStock = TRUE
  AND mrp > 300
ORDER BY mrp DESC;

--Q3. calculate estimated revenue for each category
select category,
sum(discountedsellingprice * availableQuantity) as total_revenue
from zepto
group by category
order by total_revenue desc;


--Q4. find all products where mrp is greater than 500 and discount is less than 10%
select distinct name, mrp, discountpercent from zepto
where mrp > 500 and discountpercent < 10
order by mrp desc, discountpercent desc;

--Q5. Identify the top 5 categories offering the highest average discount percentage
select category, Round(Avg(discountpercent),2) as  avg_dicountpercent
from zepto
group by category
order by avg_dicountpercent desc
limit 5;

--Q6. find the price per gram for products above 100g and sort by best value.
select distinct name, weightingms, discountedsellingprice, 
round(discountedsellingprice/weightingms,2) as price_per_gram from zepto
where weightingms >100
order by price_per_gram;

--Q7.  group the products into categories like low, medium and bulk
select distinct name, weightingms,
case when weightingms <1000 then 'low'
when weightingms <5000 then 'medium'
else 'bulk'
end as weight_category
from zepto;

--Q8. what is the total inventory weight per category
select category, 
Sum(weightingms * availablequantity) as total_inventory_weight
from zepto
group by category
order by total_inventory_weight;

