# Zepto-SQL-Analysis

## Project Background

Zepto is one of India's leading quick-commerce grocery delivery platforms, offering thousands of products across categories such as fruits, vegetables, snacks, beverages, personal care, household essentials, and packaged foods.

This SQL project analyzes Zepto's product inventory, pricing structure, discount strategies, stock availability, and category-level revenue opportunities. The goal is to identify high-value products, evaluate discount effectiveness, understand inventory distribution, and generate business insights from product-level data.

Insights and recommendations are provided on the following key areas:

- Inventory Overview & Data Quality
- Pricing and Discount Analysis
- Revenue Opportunities
- Product Availability & Stock Analysis
- Category Performance

This project was created using **PostgreSQL and pgAdmin 4**.

## Data Structure & Initial Checks

The original dataset contains **3,732 products** across **14 product categories**.

The dataset includes the following fields:

- sku_id
- category
- name
- mrp
- discountPercent
- availableQuantity
- discountedSellingPrice
- weightInGms
- outOfStock
- quantity

### Initial Data Checks

The project began with:

- Row count validation
- Sample data inspection
- Null value detection
- Product category exploration
- Duplicate product identification
- Invalid pricing detection
- Paise-to-rupee conversion

Products with invalid pricing values were removed before conducting business analysis.

## Executive Summary

### Overview of Findings

The analysis revealed significant differences in discount strategies, revenue potential, inventory allocation, and stock availability across Zepto's product categories.

Several products offered discounts exceeding **50%**, while some premium-priced products remained out of stock despite having high market value.

Revenue generation was concentrated within a few categories, particularly **Cooking Essentials**, **Munchies**, and **Personal Care**.

The analysis also identified categories offering the highest average discounts and products providing the best value based on price-per-gram calculations.

## Insights Deep Dive

### 1. Pricing & Discount Analysis

The highest discounted products offered discounts of up to **51%**.

Top discounted products included:

- Dukes Waffy Orange Wafer Roll
- Dukes Waffy Chocolate Wafer Roll
- Dukes Waffy Strawberry Wafer Roll

Several products also offered discounts of **50%**, indicating aggressive promotional pricing strategies.

### 2. High-Value Products Currently Out of Stock

The analysis identified several premium products that were unavailable despite their relatively high prices.

Examples include:

- Patanjali Cow's Ghee (₹565)
- MamyPoko Pants Standard Diapers (₹399)
- Aashirvaad Atta With Multigrains (₹315)
- Everest Kashmiri Lal Chilli Powder (₹310)

These products represent potential missed sales opportunities due to stock shortages.

### 3. Revenue Opportunity Analysis

Estimated revenue was calculated using:

Revenue = Discounted Selling Price × Available Quantity

The top revenue-generating categories were:

| Category | Estimated Revenue |
|-----------|------------------:|
| Cooking Essentials | ₹337,369 |
| Munchies | ₹337,369 |
| Personal Care | ₹270,849 |
| Paan Corner | ₹270,849 |
| Ice Cream & Desserts | ₹224,385 |

Revenue generation is concentrated within a limited number of categories, highlighting areas with strong commercial potential.

### 4. Premium Products Receiving Low Discounts

Several products priced above ₹1,000 received discounts below 10%.

Examples include:

- Dhara Kachi Ghani Mustard Oil Jar
- Saffola Gold
- Fortune Rice Bran Health Oil

This suggests Zepto applies different pricing strategies for premium products compared with lower-priced items.

### 5. Categories Offering the Highest Average Discounts

The categories with the highest average discount percentages were:

| Category | Average Discount |
|-----------|----------------:|
| Fruits & Vegetables | 15.46% |
| Meats, Fish & Eggs | 11.03% |
| Ice Cream & Desserts | 8.32% |
| Chocolates & Candies | 8.32% |
| Packaged Food | 8.32% |

Fruits & Vegetables received the highest average discount across the platform.

### 6. Best Value Products Based on Price per Gram

Products providing the best value based on cost per gram included:

- Onion
- Aashirvaad Iodised Salt
- Vicks Cough Drops Menthol

These products delivered the lowest cost per gram, making them highly cost-effective options for customers.

### 7. Inventory Distribution Analysis

Inventory weight analysis showed that inventory is concentrated within a small number of categories.

The categories with the highest total inventory weight included:

- Ice Cream & Desserts
- Chocolates & Candies
- Packaged Food
- Home & Cleaning

This helps identify categories requiring greater storage and inventory management resources.

## Recommendations

Based on the findings, I would recommend the following:

### 1. Improve Stock Availability for High-Value Products

Premium products that are currently out of stock should be prioritized for replenishment to minimize lost sales opportunities.

### 2. Optimize Discount Strategies

Categories with high average discounts should be monitored to ensure discounts are driving sales without unnecessarily reducing profit margins.

### 3. Prioritize High-Revenue Categories

Cooking Essentials, Munchies, and Personal Care generate substantial revenue and should receive greater inventory planning and promotional focus.

### 4. Use Value-Based Pricing Insights

Price-per-gram analysis can help position products more competitively and improve customer value perception.

### 5. Strengthen Inventory Planning

Inventory weight analysis can support warehouse planning and stock allocation decisions across categories.

## Assumptions and Caveats

The revenue calculations are estimates based on available inventory quantities and discounted selling prices.

Inventory levels represent a snapshot in time and may change frequently.

Out-of-stock products may become available after data collection.

The analysis focuses on inventory and pricing data and does not include customer purchase behavior.

## Tools Used

- PostgreSQL
- pgAdmin 4
- SQL
- Data Cleaning
- Data Exploration
- Business Analysis
